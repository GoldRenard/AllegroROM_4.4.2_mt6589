.class Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;
.super Ljava/lang/Object;
.source "RingerVolumePreferenceLenovo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->saveVolume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

.field final synthetic val$te:Lcom/mediatek/audioprofile/AudioProfileManager;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;Lcom/mediatek/audioprofile/AudioProfileManager;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;->this$1:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    iput-object p2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;->val$te:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 920
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;->val$te:Lcom/mediatek/audioprofile/AudioProfileManager;

    if-eqz v1, :cond_0

    .line 922
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;->this$1:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;->this$1:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mStreamType:I
    invoke-static {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->access$500(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer$1;->this$1:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;

    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->mLastProgress:I
    invoke-static {v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->access$600(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;)I

    move-result v3

    const/4 v4, 0x0

    # invokes: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->setVolume(IIZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;->access$700(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SeekBarVolumizer;IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Settings/VolPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in handler set volume error---bug dose not ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
