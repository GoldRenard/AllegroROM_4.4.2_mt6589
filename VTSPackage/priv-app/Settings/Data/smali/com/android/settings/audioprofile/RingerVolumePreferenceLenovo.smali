.class public Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
.super Landroid/preference/SeekBarDialogPreference;
.source "RingerVolumePreferenceLenovo.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;,
        Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;,
        Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;,
        Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;
    }
.end annotation


# static fields
.field private static final CHECKBOX_VIEW_ID:[I

.field private static final IS_CMCC:Z = false

.field private static final LOGV:Z = true

.field private static final MEETING_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final OP:Ljava/lang/String;

.field private static final SEEKBAR_ID:[I

.field private static final SEEKBAR_TYPE:[I

.field private static final SEEKBAR_UNMUTED_RES_ID:[I

.field private static final SILENT_PREF_KEY:Ljava/lang/String; = "mtk_audioprofile_silent"

.field private static final TAG:Ljava/lang/String; = "Settings/VolPref"


# instance fields
.field private isFromTouch:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mIsDlgDismissed:Z

.field private mKey:Ljava/lang/String;

.field private final mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mMessageUseRingVolumeCheckbox:Landroid/widget/CheckBox;

.field private mMessageVolumeTitle:Landroid/widget/TextView;

.field private mNotificationVolumeTitle:Landroid/widget/TextView;

.field private final mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mReceiver:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;

.field private mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

.field private mTextViewString:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 73
    const-string v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->OP:Ljava/lang/String;

    .line 95
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_TYPE:[I

    .line 123
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->CHECKBOX_VIEW_ID:[I

    .line 130
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_UNMUTED_RES_ID:[I

    return-void

    .line 95
    :array_0
    .array-data 4
        0x7f0b01af
        0x7f0b01ab
        0x7f0b01b3
        0x7f0b01b7
    .end array-data

    .line 104
    :array_1
    .array-data 4
        0x5
        0x2
        0x3
        0x4
    .end array-data

    .line 123
    :array_2
    .array-data 4
        0x7f0b01a9
        0x7f0b01ad
        0x7f0b01b1
        0x7f0b01b5
    .end array-data

    .line 130
    :array_3
    .array-data 4
        0x7f020116
        0x7f020115
        0x7f020117
        0x7f020114
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 204
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->isFromTouch:Z

    .line 1322
    new-instance v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;-><init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 208
    const v0, 0x7f04006a

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 213
    const v0, 0x7f020118

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogIcon(I)V

    .line 216
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;

    .line 218
    const-string v0, "audioprofile"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 220
    sget-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .line 222
    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onReceiveNotifiVolumeChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onReceiveMeidaVolumeChange(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    .param p1, "x1"    # I

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onReceiveAlarmVolumeChange(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->isFromTouch:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->isFromTouch:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z

    return v0
.end method

.method private hideMessageVolumeView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 323
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mTextViewString:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mTextViewString:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageVolumeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageVolumeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageVolumeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageVolumeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_3
    return-void
.end method

.method private onReceiveAlarmVolumeChange(I)V
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v3, 0x3

    .line 1297
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 1298
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 1299
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 1316
    .end local v0    # "seekBar":Landroid/widget/SeekBar;
    :cond_0
    :goto_0
    return-void

    .line 1300
    .restart local v0    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1301
    .local v1, "volume":I
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioManager Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seekbar progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1304
    if-ltz v1, :cond_0

    .line 1307
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1311
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput v1, v2, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 1312
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is SystemVolume Changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onReceiveMeidaVolumeChange(I)V
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    const/4 v3, 0x2

    .line 1272
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 1273
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 1274
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-nez v0, :cond_1

    .line 1291
    .end local v0    # "seekBar":Landroid/widget/SeekBar;
    :cond_0
    :goto_0
    return-void

    .line 1275
    .restart local v0    # "seekBar":Landroid/widget/SeekBar;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1276
    .local v1, "volume":I
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioManager Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seekbar progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1279
    if-ltz v1, :cond_0

    .line 1282
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1286
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput v1, v2, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 1287
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is SystemVolume Changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onReceiveNotifiVolumeChange(I)V
    .locals 6
    .param p1, "streamType"    # I

    .prologue
    const/4 v5, 0x0

    .line 1244
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v2, v5

    if-eqz v2, :cond_0

    .line 1248
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 1249
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-eqz v0, :cond_0

    .line 1250
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1251
    .local v1, "volume":I
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioManager Volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seekbar progress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1254
    if-ltz v1, :cond_0

    .line 1257
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1261
    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v2, v5

    iput v1, v2, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 1262
    const-string v2, "Settings/VolPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is SystemVolume Changed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    .line 232
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 234
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 235
    .local v0, "context":Landroid/content/Context;
    new-instance v7, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;-><init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$1;)V

    iput-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mReceiver:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;

    .line 236
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    iget-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mReceiver:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z

    .line 241
    const-string v7, "Settings/VolPref"

    const-string v8, "set mIsDlgDismissed to false "

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "key":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v7, "ring_volume"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    const v7, 0x7f0b01b0

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 246
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_0

    .line 247
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_0
    const v7, 0x7f0b01b4

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 250
    if-eqz v6, :cond_1

    .line 251
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .end local v6    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v7, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    array-length v7, v7

    if-ge v2, v7, :cond_5

    .line 258
    sget-object v7, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->CHECKBOX_VIEW_ID:[I

    aget v7, v7, v2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 260
    .local v3, "imageview":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 261
    sget-object v7, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_UNMUTED_RES_ID:[I

    aget v7, v7, v2

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 264
    :cond_2
    sget-object v7, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    aget v7, v7, v2

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 265
    .local v5, "seekBar":Landroid/widget/SeekBar;
    if-eqz v5, :cond_4

    .line 266
    if-nez v2, :cond_3

    .line 267
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 269
    :cond_3
    iget-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    new-instance v8, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    sget-object v9, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_TYPE:[I

    aget v9, v9, v2

    invoke-direct {v8, p0, v0, v5, v9}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;-><init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    aput-object v8, v7, v2

    .line 271
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 257
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v3    # "imageview":Landroid/widget/ImageView;
    .end local v5    # "seekBar":Landroid/widget/SeekBar;
    :cond_5
    const v7, 0x7f0b01ba

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageVolumeTitle:Landroid/widget/TextView;

    .line 277
    const v7, 0x7f0b01b8

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mMessageUseRingVolumeCheckbox:Landroid/widget/CheckBox;

    .line 288
    const v7, 0x7f0b01b9

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mTextViewString:Landroid/widget/TextView;

    .line 289
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->hideMessageVolumeView()V

    .line 295
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 315
    iget-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v8, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 319
    return-void
.end method

.method protected onClick()V
    .locals 2

    .prologue
    .line 389
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    .line 390
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$1;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$1;-><init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 402
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v6, 0x0

    .line 484
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 485
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    if-nez v4, :cond_0

    .line 516
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 489
    .local v3, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->stopSample()V

    .line 488
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 491
    .end local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    :cond_1
    if-eqz p1, :cond_3

    .line 492
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 493
    .restart local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 494
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->saveVolume()V

    .line 495
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 496
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->stop()V

    .line 492
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 501
    .end local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    :cond_3
    const-string v4, "Settings/VolPref"

    const-string v5, "Cacel: Original checked."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    .line 503
    .restart local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getVisible()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->revertVolume()V

    .line 505
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 506
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->stop()V

    .line 502
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 511
    .end local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z

    .line 512
    const-string v4, "Settings/VolPref"

    const-string v5, "set mIsDlgDismissed to true"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mReceiver:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 514
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v5, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 417
    iget-object v7, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    if-nez v7, :cond_1

    .line 441
    :cond_0
    :goto_0
    return v5

    .line 421
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_2

    move v2, v5

    .line 422
    .local v2, "isdown":Z
    :goto_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v3, :cond_0

    aget-object v4, v0, v1

    .line 423
    .local v4, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 425
    packed-switch p2, :pswitch_data_0

    move v5, v6

    .line 437
    goto :goto_0

    .end local v0    # "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    .end local v1    # "i$":I
    .end local v2    # "isdown":Z
    .end local v3    # "len$":I
    .end local v4    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    :cond_2
    move v2, v6

    .line 421
    goto :goto_1

    .line 427
    .restart local v0    # "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    .restart local v1    # "i$":I
    .restart local v2    # "isdown":Z
    .restart local v3    # "len$":I
    .restart local v4    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    :pswitch_0
    if-eqz v2, :cond_0

    .line 428
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 432
    :pswitch_1
    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {v4, v5}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 422
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 555
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 557
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 573
    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    .line 561
    check-cast v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;

    .line 562
    .local v1, "myState":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;
    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 563
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    if-eqz v4, :cond_1

    .line 564
    sget-object v4, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    array-length v4, v4

    invoke-virtual {v1, v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->getVolumeStore(I)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    move-result-object v3

    .line 566
    .local v3, "volumeStore":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 567
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v2, v4, v0

    .line 568
    .local v2, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v2, :cond_3

    .line 569
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->onRestoreInstanceState(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;)V

    .line 566
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onSampleStarting(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;)V
    .locals 4
    .param p1, "volumizer"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .prologue
    .line 451
    if-nez p1, :cond_1

    .line 459
    :cond_0
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 455
    .local v3, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v3, :cond_2

    if-eq v3, p1, :cond_2

    .line 456
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->stopSample()V

    .line 454
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 527
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 528
    .local v2, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/Preference;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 544
    .end local v2    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v2

    .line 533
    .restart local v2    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;

    invoke-direct {v1, v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 534
    .local v1, "myState":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    if-eqz v5, :cond_2

    .line 535
    sget-object v5, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    array-length v5, v5

    invoke-virtual {v1, v5}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->getVolumeStore(I)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    move-result-object v4

    .line 537
    .local v4, "volumeStore":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v5, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I

    array-length v5, v5

    if-ge v0, v5, :cond_2

    .line 538
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    aget-object v3, v5, v0

    .line 539
    .local v3, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v3, :cond_1

    .line 540
    aget-object v5, v4, v0

    invoke-virtual {v3, v5}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->onSaveInstanceState(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;)V

    .line 537
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    .end local v4    # "volumeStore":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;
    :cond_2
    move-object v2, v1

    .line 544
    goto :goto_0
.end method

.method public revertVolume()V
    .locals 7

    .prologue
    .line 373
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsDlgDismissed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-boolean v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z

    if-eqz v4, :cond_1

    .line 385
    :cond_0
    return-void

    .line 377
    :cond_1
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    if-eqz v4, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 379
    .local v3, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v3, :cond_2

    .line 380
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->revertVolume()V

    .line 381
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->resume()V

    .line 378
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setProfile(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setProfile(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isSyncVolume"    # Z

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;

    .line 177
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    .line 184
    .local v0, "volume":I
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mListener:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    invoke-virtual {v1, v0, v0, p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onRingerVolumeChanged(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "volume":I
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopPlayWhenOnPause()V
    .locals 5

    .prologue
    .line 466
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    if-eqz v4, :cond_1

    .line 467
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 468
    .local v3, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v3, :cond_0

    .line 469
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->stopSample()V

    .line 467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    .end local v0    # "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    :cond_1
    return-void
.end method

.method public stopPlaying()V
    .locals 6

    .prologue
    .line 357
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    if-eqz v4, :cond_1

    .line 358
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .local v0, "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 359
    .local v3, "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const-string v4, "Settings/VolPref"

    const-string v5, "IsPlaying"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->stopSample()V

    .line 362
    const-string v4, "Settings/VolPref"

    const-string v5, "stopPlaying"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "arr$":[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "vol":Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    :cond_1
    return-void
.end method
