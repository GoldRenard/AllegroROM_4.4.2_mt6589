/*
 * Copyright (C) 2013 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

public class BacklightTimeoutSeekBar extends SeekBar implements OnSeekBarChangeListener {
    private int mMax;
    private int mGap;
    private boolean mUpdatingThumb;
	private boolean mIsDragging;
	private float mTouchDownX;
	private int mScaledTouchSlop;
	private int mLast = 0;
	
    public BacklightTimeoutSeekBar(Context context) {
        super(context);
        mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public BacklightTimeoutSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    public BacklightTimeoutSeekBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        mUpdatingThumb = true;
        super.onSizeChanged(w, h, oldw, oldh);
        mUpdatingThumb = false;
    }

    @Override
    public void setThumb(Drawable thumb) {
        mUpdatingThumb = true;
        super.setThumb(thumb);
        mUpdatingThumb = false;
    }

    @Override
    public void setMax(int max) {
        mMax = max;
        mGap = max / 10;
        super.setMax(max + 2 * mGap - 1);
    }

    @Override
    public void setProgress(int progress) {
        if (progress == 0) {
            progress = getMax();
        } else {
            progress--;
        }
        mLast = progress;
        super.setProgress(progress);
    }

    @Override
    public int getProgress() {
        int progress = super.getProgress();
        if (mUpdatingThumb) {
            return progress;
        } else if (progress == getMax()) {
            return 0;
        }
        return progress + 1;
    }
    
    protected int updateTouchProgress(int lastProgress, int newProgress) {
        if (newProgress < mMax) {
            return newProgress;
        }
        if (newProgress < mMax + mGap) {
            return mMax - 1;
        }
        return getMax();
    }

	@Override
	public void onProgressChanged(SeekBar seekBar, int progress,
			boolean fromUser) {
		// TODO Auto-generated method stub
		updateTouchProgress(mLast, progress);
		mLast = progress;
	}

	@Override
	public void onStartTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onStopTrackingTouch(SeekBar seekBar) {
		// TODO Auto-generated method stub
		
	}
}
