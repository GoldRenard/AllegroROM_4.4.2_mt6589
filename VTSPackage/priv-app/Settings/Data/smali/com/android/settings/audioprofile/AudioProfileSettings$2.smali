.class Lcom/android/settings/audioprofile/AudioProfileSettings$2;
.super Landroid/os/Handler;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/AudioProfileSettings;->onCreate(Landroid/os/Bundle;)V
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
    .line 212
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$2;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$2;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    const-string v1, "predefine"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$2;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    # getter for: Lcom/android/settings/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/android/settings/audioprofile/AudioProfilePreference;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfileSettings;->access$100(Lcom/android/settings/audioprofile/AudioProfileSettings;)Lcom/android/settings/audioprofile/AudioProfilePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 218
    :cond_0
    return-void
.end method
