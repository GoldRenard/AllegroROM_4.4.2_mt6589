.class Lcom/android/settings/tabsettings/CommonSettings$7;
.super Ljava/lang/Object;
.source "CommonSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/CommonSettings;->handleDataPreferenceClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CommonSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CommonSettings;)V
    .locals 0

    .prologue
    .line 517
    iput-object p1, p0, Lcom/android/settings/tabsettings/CommonSettings$7;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 541
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    .line 523
    .local v0, "simItem":Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
    if-eqz v0, :cond_3

    .line 524
    iget-boolean v1, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    iget-wide v1, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    iget-object v3, p0, Lcom/android/settings/tabsettings/CommonSettings$7;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/settings/tabsettings/CommonSettings;->access$400(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "gprs_connection_sim_setting"

    invoke-static {v3, v4}, Lcom/android/settings/tabsettings/SIMHelper;->getDefaultSIM(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$7;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 529
    :cond_1
    iget-boolean v1, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$7;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$400(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "gprs_connection_sim_setting"

    invoke-static {v1, v2}, Lcom/android/settings/tabsettings/SIMHelper;->getDefaultSIM(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$7;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 536
    :cond_2
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings$7;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # invokes: Lcom/android/settings/tabsettings/CommonSettings;->switchDataConnectionMode(Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V
    invoke-static {v1, v0}, Lcom/android/settings/tabsettings/CommonSettings;->access$500(Lcom/android/settings/tabsettings/CommonSettings;Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V

    goto :goto_0

    .line 538
    :cond_3
    const-string v1, "CommonSettings"

    const-string v2, "MobileIcon clicked and clicked a null sim item"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
