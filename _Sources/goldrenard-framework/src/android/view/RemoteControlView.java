package android.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.MediaMetadataEditor;
import android.media.MediaMetadataRetriever;
import android.media.RemoteControlClient;
import android.media.RemoteController;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class RemoteControlView extends LinearLayout implements View.OnClickListener {

    class Metadata {
        private String artist;
        private String trackTitle;
        private String albumTitle;
        private Bitmap bitmap;
        private long duration;

        public void clear() {
            artist = null;
            trackTitle = null;
            albumTitle = null;
            bitmap = null;
            duration = -1;
        }
		
		public boolean isEmpty() {
			return (artist == null &&
					trackTitle == null &&
					albumTitle == null &&
					bitmap == null);
		}

        public String toString() {
            return "Metadata[artist=" + artist + " trackTitle=" + trackTitle +
                    " albumTitle=" + albumTitle + " duration=" + duration + "]";
        }
    }
	
	private final String STR_UNKNOWN = " - ";
	private final String ENABLE_SETTINGS = "volumepanel_music";
	
	private final float IMAGE_SIZE_DIP = 110;
	private final float CONTROL_HEIGHT_DIP = 40;
	private Context mContext;
	private ImageView mImage;
	
	private TextView mSong;
	private TextView mArtist;
	private TextView mAlbum;
	
	private ImageButton mPrev;
	private ImageButton mStart;
	private ImageButton mNext;
	
	private Drawable mPreviousDrawable;
	private Drawable mPlayDrawable;
	private Drawable mPauseDrawable;
	private Drawable mNextDrawable;
	
	private int mCurrentPlayState;
	private long mStateTime;
	AudioManager mAudioManager;
	private Bitmap mArtwork;
	private boolean mEnabled;
	private MotionEvent mEvent;
	private boolean mTimeout = false;
	
    private RemoteController mRemoteController;
    private Metadata mMetadata = new Metadata();
	private int mTransportControlFlags;
    private RemoteController.MetadataEditor mPopulateMetadataWhenAttached = null;
	
    private RemoteController.OnClientUpdateListener mRCClientUpdateListener =
            new RemoteController.OnClientUpdateListener() {
        @Override
        public void onClientChange(boolean clearing) {
            if (clearing) {
                clear();
            }
        }

        @Override
        public void onClientPlaybackStateUpdate(int state) {
        	updatePlayState(state);
        }

        @Override
        public void onClientPlaybackStateUpdate(int state, long stateChangeTimeMs,
                long currentPosMs, float speed) {
        	updatePlayState(state);
        }

        @Override
        public void onClientTransportControlUpdate(int transportControlFlags) {
            updateTransportControls(transportControlFlags);
        }

        @Override
        public void onClientMetadataUpdate(RemoteController.MetadataEditor metadataEditor) {
            updateMetadata(metadataEditor);
        }
    };
	
	public RemoteControlView(Context context) {
		super(context);
		init(context);
	}
	
	public RemoteControlView(Context context, AttributeSet attrs) {
		super(context, attrs);
		init(context);
	}
	
	public RemoteControlView(Context context, AttributeSet attrs, int defStyle) {
		super(context, attrs, defStyle);
		init(context);
	}
	
	/**
	 * Инициализация всех элементов
	 * @param context Контекст
	 */
	private void init(Context context) {
		mContext = context;
		mCurrentPlayState = RemoteControlClient.PLAYSTATE_NONE;
		mAudioManager = ((AudioManager)mContext.getSystemService(Context.AUDIO_SERVICE));
		setEnabled(false);
		mRemoteController = new RemoteController(context, mRCClientUpdateListener);
        

		setOrientation(LinearLayout.HORIZONTAL);
		setGravity(Gravity.TOP);

		mImage = new ImageView(mContext);
		int imageSize = getDimension(IMAGE_SIZE_DIP);
		mImage.setLayoutParams(new LinearLayout.LayoutParams(imageSize, imageSize));
		mImage.setBackgroundColor(0xFF5C5C5C);
		mImage.setVisibility(View.GONE);
		mRemoteController.setArtworkConfiguration(true, imageSize, imageSize);
		addView(mImage);

		RelativeLayout mContainer = new RelativeLayout(mContext);
		mContainer.setLayoutParams(new RelativeLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT));
		mContainer.addView(getInfoView());
		mContainer.addView(getDividerView());
		mContainer.addView(getControlsView());

		addView(mContainer);
	}
	
	/**
	 * Установка активности элемента
	 */
	@Override
	public void setEnabled(boolean isEnabled) {
		super.setEnabled(isEnabled);
		mEnabled = isEnabled;
		setVisibility(mEnabled ? View.VISIBLE : View.GONE);
	}
	
	/**
	 * При присоединении к окну - регистрируем управление
	 */
	@Override
	protected void onAttachedToWindow() {
		super.onAttachedToWindow();
		
        if (Settings.System.getInt(mContext.getContentResolver(), ENABLE_SETTINGS, 1) == 1) { 
	        if (mPopulateMetadataWhenAttached != null) {
	            updateMetadata(mPopulateMetadataWhenAttached);
	            mPopulateMetadataWhenAttached = null;
	        }
	        mMetadata.clear();
	        mAudioManager.registerRemoteController(mRemoteController);
			
			if (mMetadata.isEmpty()) {
				setEnabled(false);
				return;
			}
			
			if (mCurrentPlayState == RemoteControlClient.PLAYSTATE_PAUSED && SystemClock.elapsedRealtime() - mStateTime <= 10000) {
				setEnabled(true);
			} else {
				setEnabled(mAudioManager.isMusicActive());
			}
        } else {
        	setEnabled(false);
        }
	}

	/**
	 * При отсоединении от окна - дерегистрируем управление
	 */
	@Override
	protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        mAudioManager.unregisterRemoteController(mRemoteController);
	    mMetadata.clear();
	}
	
	/**
	 * Получение группы элементов информации о воспроизведении
	 * @return Группа элементов
	 */
	public View getInfoView() {
		LinearLayout root = new LinearLayout(mContext);
		root.setOrientation(LinearLayout.VERTICAL);

		RelativeLayout.LayoutParams lParams = new RelativeLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		int m = getDimension(5);
		lParams.setMargins(m, m, m, m);
		root.setLayoutParams(lParams);

		root.addView(getDividerView());

		mSong = newInfoTextView(android.R.style.TextAppearance_Medium);
		mSong.setText(STR_UNKNOWN);
		root.addView(mSong);

		mArtist = newInfoTextView(android.R.style.TextAppearance_Small);
		mArtist.setText(STR_UNKNOWN);
		root.addView(mArtist);

		mAlbum = newInfoTextView(android.R.style.TextAppearance_Small);
		mAlbum.setText(STR_UNKNOWN);
		root.addView(mAlbum);

		return root;
	}
	
	/**
	 * Получение элемента разделителя
	 * @return Разделитель
	 */
	public View getDividerView() {
		ImageView mDivider = new ImageView(mContext);
		RelativeLayout.LayoutParams lParams = new RelativeLayout.LayoutParams(LayoutParams.MATCH_PARENT, getDimension(0.7f));
		lParams.setMargins(0, 0, 0, getDimension(CONTROL_HEIGHT_DIP));
		lParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM, RelativeLayout.TRUE);
		mDivider.setLayoutParams(lParams);
		mDivider.setScaleType(ScaleType.CENTER_CROP);
		mDivider.setImageDrawable(mContext.getResources().getDrawable(android.R.drawable.divider_horizontal_dark));
		return mDivider;
	}
	
	/**
	 * Инициализация группы элементов управления
	 * @return Группа элементов
	 */
	public View getControlsView() {
		mPreviousDrawable = mContext.getResources().getDrawable(android.R.drawable.ic_media_previous);
		mPlayDrawable = mContext.getResources().getDrawable(android.R.drawable.ic_media_play);
		mPauseDrawable = mContext.getResources().getDrawable(android.R.drawable.ic_media_pause);
		mNextDrawable = mContext.getResources().getDrawable(android.R.drawable.ic_media_next);

		LinearLayout root = new LinearLayout(mContext);
		root.setOrientation(LinearLayout.HORIZONTAL);
		RelativeLayout.LayoutParams lParams = new RelativeLayout.LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.WRAP_CONTENT);
		lParams.addRule(RelativeLayout.ALIGN_PARENT_BOTTOM, RelativeLayout.TRUE);
		root.setLayoutParams(lParams);

		root.setDividerDrawable(mContext.getResources().getDrawable(android.R.drawable.divider_horizontal_dark));
		root.setShowDividers(LinearLayout.SHOW_DIVIDER_MIDDLE);
		root.setDividerPadding(getDimension(5));

		mPrev = newControlImageButton();
		mPrev.setImageDrawable(mPreviousDrawable);
		root.addView(mPrev);

		mStart = newControlImageButton();
		mStart.setImageDrawable(mPlayDrawable);
		root.addView(mStart);

		mNext = newControlImageButton();
		mNext.setImageDrawable(mNextDrawable);
		root.addView(mNext);

		return root;
	}
	
	/**
	 * Получение ImageButton;
	 * @return новый ImageButton
	 */
	public ImageButton newControlImageButton() {
		ImageButton mButton = new ImageButton(mContext, null, android.R.attr.borderlessButtonStyle);

		LinearLayout.LayoutParams lParams = new LinearLayout.LayoutParams(getDimension(0), getDimension(CONTROL_HEIGHT_DIP));
		lParams.weight = 1;
		mButton.setLayoutParams(lParams);
		int p = getDimension(6);
		mButton.setPadding(p, p, p, p);

		mButton.setCropToPadding(true);
		mButton.setScaleType(ScaleType.CENTER_INSIDE);
		mButton.setOnClickListener(this);
		mButton.setOnTouchListener(new View.OnTouchListener() {
		public boolean onTouch(View v, MotionEvent event) {
			// Используется для отправки ивента в родительский элемент
			mEvent = event;
			return false;
			}
		});

		return mButton;
	}

	/**
	 * Получение TextView с нужным TextAppearance;
	 * @param textAppearance идентификатор стиля
	 * @return новый TextView
	 */
	public TextView newInfoTextView(int textAppearance) {
		TextView mText = new TextView(mContext);
		mText.setLayoutParams(new LinearLayout.LayoutParams(LayoutParams.WRAP_CONTENT, LayoutParams.WRAP_CONTENT));
		mText.setSingleLine(true);
		mText.setEllipsize(TruncateAt.MARQUEE);
		mText.setSelected(true);
		mText.setTextAppearance(mContext, textAppearance);
		return mText;
	}
	
	/**
	 * Преобразование DIP значения в абсолютное
	 * @param dip DIP-Значение
	 * @return Абсолютное значение
	 */
	public int getDimension(float dip) {
		return (int)TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, dip, mContext.getResources().getDisplayMetrics());
	}

	
	/**
	 * Обработчик кнопок
	 * @param v
	 */
	public void onClick(View v) {
		int keyCode = -1;
		if (v == mPrev) {
			keyCode = KeyEvent.KEYCODE_MEDIA_PREVIOUS;
		} else if (v == mNext) {
			keyCode = KeyEvent.KEYCODE_MEDIA_NEXT;
		} else if (v == mStart) {
			keyCode = KeyEvent.KEYCODE_MEDIA_PLAY_PAUSE;

		}
		if (keyCode != -1) {
			sendMediaButtonClick(keyCode);
		}

		// Нам нужно отправить ивент нажатия обратно к VolumePanel, чтобы
		// тот сбросил таймаут
		ViewParent parent = getParent();
		if (parent != null && mEvent != null && parent instanceof LinearLayout) {
			LinearLayout ll = (LinearLayout)parent;
			ll.dispatchTouchEvent(mEvent);
		}
	}
	
	/**
	 * Отправка медиа-кнопки
	 * @param keyCode Код кнопки
	 */
    private void sendMediaButtonClick(int keyCode) {
        // TODO We should think about sending these up/down events accurately with touch up/down
        // on the buttons, but in the near term this will interfere with the long press behavior.
        mRemoteController.sendMediaKeyEvent(new KeyEvent(KeyEvent.ACTION_DOWN, keyCode));
        mRemoteController.sendMediaKeyEvent(new KeyEvent(KeyEvent.ACTION_UP, keyCode));
    }
    
	/* =========================================
	 * 			RemoteDisplaySection
	 * =========================================*/
	
	/**
	 * Установка кнопки плей/паузы
	 * @param state Состояние
	 */
	private void updatePlayState(int state) {
		if (state == mCurrentPlayState) {
			return;
		}

		if (state == RemoteControlClient.PLAYSTATE_PLAYING && mStart != null) {
			mStart.setImageDrawable(mPauseDrawable);
		} else {
			mStart.setImageDrawable(mPlayDrawable);
		}
		mCurrentPlayState = state;
		mStateTime = SystemClock.elapsedRealtime();
	}
    
	private void clear() {
        mPopulateMetadataWhenAttached = null;
        mMetadata.clear();
        populateMetadata();
		mStateTime = 0;
		mCurrentPlayState = RemoteControlClient.PLAYSTATE_NONE;
    }

    void updateMetadata(RemoteController.MetadataEditor data) {
        if (isAttachedToWindow()) {
            mMetadata.artist = data.getString(MediaMetadataRetriever.METADATA_KEY_ALBUMARTIST, null);
            mMetadata.trackTitle = data.getString(MediaMetadataRetriever.METADATA_KEY_TITLE, null);
            mMetadata.albumTitle = data.getString(MediaMetadataRetriever.METADATA_KEY_ALBUM, null);
            mMetadata.duration = data.getLong(MediaMetadataRetriever.METADATA_KEY_DURATION, -1);
            mMetadata.bitmap = data.getBitmap(MediaMetadataEditor.BITMAP_KEY_ARTWORK, null);
            populateMetadata();
        } else {
            mPopulateMetadataWhenAttached = data;
        }
    }
    
    private void updateTransportControls(int transportControlFlags) {
        mTransportControlFlags = transportControlFlags;
    }
    
    private void populateMetadata() {
	
		if (!mEnabled && !mMetadata.isEmpty()) {
			setEnabled(true);
		}
	
		mSong.setText(!TextUtils.isEmpty(mMetadata.trackTitle)
				? mMetadata.trackTitle : null);

		mArtist.setText(!TextUtils.isEmpty(mMetadata.artist)
				? mMetadata.artist : null);
		
		mAlbum.setText(!TextUtils.isEmpty(mMetadata.albumTitle)
				? mMetadata.albumTitle : null);
		
		if (mArtwork != null) {
			mArtwork.recycle();
		}
		mArtwork = mMetadata.bitmap;
		mImage.setVisibility(mArtwork != null ? View.VISIBLE : View.GONE);
		if (mArtwork != null) {
			mImage.setImageBitmap(mArtwork);
		}
    }
}
