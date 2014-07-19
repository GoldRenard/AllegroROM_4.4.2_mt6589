.class Lcom/android/settings/audioprofile/AudioProfileSettings$1;
.super Lcom/mediatek/common/audioprofile/AudioProfileListener;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/AudioProfileSettings;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$1;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Lcom/mediatek/common/audioprofile/AudioProfileListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioProfileChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "profileKey"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/mediatek/common/audioprofile/AudioProfileListener;->onAudioProfileChanged(Ljava/lang/String;)V

    .line 169
    const-string v1, "Settings/AudioP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioProfileSettings:onAudioPerfileChanged:key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$1;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$1;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    # getter for: Lcom/android/settings/audioprofile/AudioProfileSettings;->mDefaultKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/audioprofile/AudioProfileSettings;->access$000(Lcom/android/settings/audioprofile/AudioProfileSettings;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "profileKey":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/audioprofile/AudioProfilePreference;

    .line 173
    .local v0, "activePreference":Lcom/android/settings/audioprofile/AudioProfilePreference;
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->setChecked()V

    .line 176
    :cond_1
    return-void
.end method
