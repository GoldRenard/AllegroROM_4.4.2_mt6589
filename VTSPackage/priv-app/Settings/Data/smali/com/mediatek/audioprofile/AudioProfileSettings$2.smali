.class Lcom/mediatek/audioprofile/AudioProfileSettings$2;
.super Landroid/os/Handler;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/audioprofile/AudioProfileSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/audioprofile/AudioProfileSettings;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    const-string v1, "predefine"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/audioprofile/AudioProfileSettings$2;->this$0:Lcom/mediatek/audioprofile/AudioProfileSettings;

    # getter for: Lcom/mediatek/audioprofile/AudioProfileSettings;->mGeneralPref:Lcom/mediatek/audioprofile/AudioProfilePreference;
    invoke-static {v0}, Lcom/mediatek/audioprofile/AudioProfileSettings;->access$100(Lcom/mediatek/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfilePreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfilePreference;->dynamicShowSummary()V

    .line 210
    :cond_0
    return-void
.end method
