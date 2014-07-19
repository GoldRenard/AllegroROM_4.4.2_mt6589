.class public Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
.super Ljava/lang/Object;
.source "RingerVolumePreferenceLenovo.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SeekBarVolumizer"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mIsVisible:Z

.field private mLastProgress:I

.field private mOriginalVolume:I

.field public mProfileIsActive:Z

.field public mRingtone:Landroid/media/Ringtone;

.field private final mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field public mSystemVolume:I

.field private mTouchlastProgress:I

.field final synthetic this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;


# direct methods
.method public constructor <init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I

    .prologue
    const/4 v1, -0x1

    .line 666
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 641
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 645
    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 646
    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    .line 647
    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    .line 649
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mProfileIsActive:Z

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mIsVisible:Z

    .line 654
    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mTouchlastProgress:I

    .line 667
    iput-object p2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 669
    iput p4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    .line 670
    iput-object p3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    .line 672
    invoke-direct {p0, p3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->initSeekBar(Landroid/widget/SeekBar;)V

    .line 673
    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .prologue
    .line 638
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    .prologue
    .line 638
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 638
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->setVolume(IIZ)V

    return-void
.end method

.method private initSeekBar(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    .line 682
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamMaxVolume(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 684
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Landroid/media/AudioManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 685
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get Original SYSTEM Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    .line 690
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " get Original Volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mProfileIsActive:Z

    .line 698
    iget-boolean v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v1, :cond_0

    .line 699
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    if-eq v1, v2, :cond_0

    .line 700
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sync "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " original Volume to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    .line 706
    :cond_0
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    iput v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    .line 707
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 708
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 710
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v4, :cond_6

    .line 712
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 715
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 717
    .local v0, "info":Landroid/provider/Telephony$SIMInfo;
    if-eqz v0, :cond_1

    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v1, v1, v6

    if-gtz v1, :cond_2

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 721
    if-eqz v0, :cond_2

    iget-wide v1, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_2

    .line 723
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 744
    .end local v0    # "info":Landroid/provider/Telephony$SIMInfo;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 745
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    .line 748
    :cond_4
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    .line 749
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_5

    .line 750
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 752
    :cond_5
    return-void

    .line 730
    :cond_6
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    .line 731
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 733
    :cond_7
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v5, :cond_8

    .line 734
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 736
    :cond_8
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 737
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0

    .line 741
    :cond_9
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mDefaultUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private isSilentProfileActive()Z
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sample()V
    .locals 4

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v1, p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onSampleStarting(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;)V

    .line 1089
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sample, set system Volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mTouchlastProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1091
    :cond_0
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mTouchlastProgress:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->setVolume(IIZ)V

    .line 1094
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 1095
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stream type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " play sample"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mIsDlgDismissed:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$900(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1107
    :cond_2
    :goto_0
    return-void

    .line 1101
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 1102
    .local v0, "d":Landroid/app/Dialog;
    if-eqz v0, :cond_4

    .line 1103
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1105
    :cond_4
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    goto :goto_0
.end method

.method private setVolume(IIZ)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 972
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 985
    :cond_0
    if-eqz p3, :cond_1

    .line 986
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setAudioProfileStreamVolume(III)V

    .line 993
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method


# virtual methods
.method public changeVolumeBy(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->incrementProgressBy(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->postSetVolume(I)V

    .line 1137
    return-void
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mIsVisible:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    .line 794
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 1028
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged: progress"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : fromTouch"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iput p2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    .line 1040
    if-nez p3, :cond_0

    .line 1045
    :goto_0
    return-void

    .line 1043
    :cond_0
    iput p2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mTouchlastProgress:I

    .line 1044
    invoke-virtual {p0, p2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->postSetVolume(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;)V
    .locals 2
    .param p1, "volumeStore"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    .prologue
    .line 1163
    iget v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mVolume:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1164
    iget v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mVolume:I

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    .line 1165
    iget v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mOriginalVolume:I

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    .line 1166
    iget v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mSystemVolume:I

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 1167
    iget v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->isPlay:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1168
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {p0, v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->postSetVolume(I)V

    .line 1172
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;)V
    .locals 1
    .param p1, "volumeStore"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    .prologue
    .line 1147
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    if-ltz v0, :cond_0

    .line 1148
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    iput v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mVolume:I

    .line 1149
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mOriginalVolume:I

    .line 1150
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mSystemVolume:I

    .line 1151
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, p1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->isPlay:I

    .line 1153
    :cond_0
    return-void

    .line 1151
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1011
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mTouchlastProgress:I

    .line 1012
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->isFromTouch:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$802(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;Z)Z

    .line 1014
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->isFromTouch:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$802(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;Z)Z

    .line 1071
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->sample()V

    .line 1074
    :cond_0
    return-void
.end method

.method postSetVolume(I)V
    .locals 3
    .param p1, "progress"    # I

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1057
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1059
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Landroid/media/AudioManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 804
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original SYSTEM Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamVolume(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    .line 809
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " get Original Volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mProfileIsActive:Z

    .line 817
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mProfileIsActive:Z

    if-eqz v0, :cond_0

    .line 818
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    if-eq v0, v1, :cond_0

    .line 819
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sync "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " original Volume to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    .line 825
    :cond_0
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    .line 826
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 829
    :cond_1
    return-void
.end method

.method public revertVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 836
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " revert Last Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 853
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 854
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mtk_audioprofile_silent"

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 867
    :cond_1
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mOriginalVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0

    .line 869
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 870
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not Active, Revert system Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 1080
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->sample()V

    .line 1081
    return-void
.end method

.method public saveVolume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 887
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Save Last Volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    iget v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->setStreamVolume(Ljava/lang/String;II)V

    .line 900
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 901
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Active, save system Volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mtk_audioprofile_silent"

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_1

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    if-ne v1, v6, :cond_2

    .line 915
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v0

    .line 916
    .local v0, "te":Lcom/mediatek/audioprofile/AudioProfileManager;
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;-><init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;Lcom/mediatek/audioprofile/AudioProfileManager;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 932
    .end local v0    # "te":Lcom/mediatek/audioprofile/AudioProfileManager;
    :cond_2
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I

    invoke-direct {p0, v1, v2, v5}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0

    .line 934
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->isSilentProfileActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not Active, Revert system Volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    invoke-direct {p0, v1, v2, v5}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->setVolume(IIZ)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 761
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mIsVisible:Z

    .line 762
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 778
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 779
    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mContext:Landroid/content/Context;

    .line 780
    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mHandler:Landroid/os/Handler;

    .line 781
    return-void
.end method

.method public stopSample()V
    .locals 3

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "Settings/VolPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " stop sample"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1117
    :cond_0
    return-void
.end method
