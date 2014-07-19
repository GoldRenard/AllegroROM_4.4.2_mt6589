.class Lcom/mediatek/settings/DisplaySettingsExt$2;
.super Landroid/content/BroadcastReceiver;
.source "DisplaySettingsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/DisplaySettingsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/DisplaySettingsExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/DisplaySettingsExt;)V
    .locals 0

    .prologue
    .line 643
    iput-object p1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 646
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 647
    .local v0, "isSmartBookPluggedIn":Ljava/lang/Boolean;
    const-string v1, "mediatek.DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartbook plug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mHdmiManager:Lcom/mediatek/common/hdmi/IMtkHdmiManager;
    invoke-static {v1}, Lcom/mediatek/settings/DisplaySettingsExt;->access$100(Lcom/mediatek/settings/DisplaySettingsExt;)Lcom/mediatek/common/hdmi/IMtkHdmiManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 652
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z
    invoke-static {v1}, Lcom/mediatek/settings/DisplaySettingsExt;->access$200(Lcom/mediatek/settings/DisplaySettingsExt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 653
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/DisplaySettingsExt;->access$400(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/DisplaySettingsExt;->access$300(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 669
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/mediatek/settings/DisplaySettingsExt;->access$500(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/DisplaySettingsExt;->access$300(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 662
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mSingleItem:Z
    invoke-static {v1}, Lcom/mediatek/settings/DisplaySettingsExt;->access$200(Lcom/mediatek/settings/DisplaySettingsExt;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 663
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mScreen:Landroid/preference/PreferenceScreen;
    invoke-static {v1}, Lcom/mediatek/settings/DisplaySettingsExt;->access$400(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/DisplaySettingsExt;->access$300(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 665
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mDisplayDefCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/mediatek/settings/DisplaySettingsExt;->access$500(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/DisplaySettingsExt$2;->this$0:Lcom/mediatek/settings/DisplaySettingsExt;

    # getter for: Lcom/mediatek/settings/DisplaySettingsExt;->mHDMISettings:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/mediatek/settings/DisplaySettingsExt;->access$300(Lcom/mediatek/settings/DisplaySettingsExt;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
