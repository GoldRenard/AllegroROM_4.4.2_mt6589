.class public Lcom/mediatek/incallui/ext/InCallUIExtension;
.super Ljava/lang/Object;
.source "InCallUIExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 26
    const-string v0, "InCallUIExtension handleMenuItemClick DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/mediatek/incallui/ext/IInCallScreen;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "inCallActivity"    # Landroid/app/Activity;
    .param p3, "iInCallScreen"    # Lcom/mediatek/incallui/ext/IInCallScreen;

    .prologue
    .line 14
    const-string v0, "InCallUIExtension onCreate DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "inCallActivity"    # Landroid/app/Activity;

    .prologue
    .line 18
    const-string v0, "InCallUIExtension onDestroy DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public setupMenuItems(Landroid/view/Menu;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 22
    const-string v0, "InCallUIExtension setupMenuItems DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 23
    return-void
.end method
