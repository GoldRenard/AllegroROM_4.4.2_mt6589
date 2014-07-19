.class Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "RingerVolumePreferenceLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)V
    .locals 0

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingerVolumeChanged(IILjava/lang/String;)V
    .locals 4
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "extra"    # Ljava/lang/String;

    .prologue
    .line 1329
    :try_start_0
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRingerVolumeChanged from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->isFromTouch:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$800(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1333
    const-string v1, "Settings/VolPref"

    const-string v2, " is user drag seekbar,forget system br "

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 1338
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mSeekBarVolumizer:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1300(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v0

    .line 1339
    .local v0, "seekBar":Landroid/widget/SeekBar;
    if-eqz v0, :cond_0

    .line 1342
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    const/4 v2, 0x5

    # invokes: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onReceiveNotifiVolumeChange(I)V
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$1000(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;I)V

    .line 1344
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$200(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mtk_audioprofile_silent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mtk_audioprofile_meeting"

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$2;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->mKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$400(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-lez p2, :cond_3

    .line 1345
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1357
    .end local v0    # "seekBar":Landroid/widget/SeekBar;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1349
    .restart local v0    # "seekBar":Landroid/widget/SeekBar;
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    if-eq v1, p2, :cond_0

    if-ltz p2, :cond_0

    .line 1350
    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1351
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Profile Ringer volume change: mSeekBar.setProgress++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
