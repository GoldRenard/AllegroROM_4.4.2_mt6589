.class Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreferenceLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;


# direct methods
.method private constructor <init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    .param p2, "x1"    # Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$1;

    .prologue
    .line 1182
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;-><init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 1186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1188
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->isFromTouch:Z
    invoke-static {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$800(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1189
    const-string v4, "Settings/VolPref"

    const-string v5, "users  drag seekbar,forget system volume br"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1194
    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1198
    .local v2, "streamType":I
    const/4 v4, 0x5

    if-ne v2, v4, :cond_3

    .line 1199
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # invokes: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onReceiveNotifiVolumeChange(I)V
    invoke-static {v4, v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1000(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;I)V

    .line 1211
    :cond_2
    :goto_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 1214
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    invoke-static {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    if-eqz v4, :cond_0

    .line 1215
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    invoke-static {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v1

    .line 1216
    .local v1, "seekBar":Landroid/widget/SeekBar;
    if-eqz v1, :cond_0

    .line 1219
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 1220
    .local v3, "volume":I
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioManager Volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seekbar progress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 1223
    if-ltz v3, :cond_0

    .line 1232
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    invoke-static {v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    move-result-object v4

    aget-object v4, v4, v7

    iput v3, v4, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mSystemVolume:I

    .line 1233
    const-string v4, "Settings/VolPref"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is SystemVolume Changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1203
    .end local v1    # "seekBar":Landroid/widget/SeekBar;
    .end local v3    # "volume":I
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 1204
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # invokes: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onReceiveMeidaVolumeChange(I)V
    invoke-static {v4, v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1100(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;I)V

    goto/16 :goto_1

    .line 1205
    :cond_4
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 1206
    iget-object v4, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeReceiver;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # invokes: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onReceiveAlarmVolumeChange(I)V
    invoke-static {v4, v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;I)V

    goto/16 :goto_1
.end method
