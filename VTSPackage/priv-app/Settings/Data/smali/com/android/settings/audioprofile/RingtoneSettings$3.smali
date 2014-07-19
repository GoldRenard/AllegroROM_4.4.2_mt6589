.class Lcom/android/settings/audioprofile/RingtoneSettings$3;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "RingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/RingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/RingtoneSettings;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingtoneSettings$3;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings$3;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    # getter for: Lcom/android/settings/audioprofile/RingtoneSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    invoke-static {v0}, Lcom/android/settings/audioprofile/RingtoneSettings;->access$500(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->setProfile(Ljava/lang/String;Z)V

    .line 204
    :cond_0
    return-void
.end method
