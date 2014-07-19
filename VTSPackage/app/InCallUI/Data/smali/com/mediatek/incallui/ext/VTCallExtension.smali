.class public Lcom/mediatek/incallui/ext/VTCallExtension;
.super Ljava/lang/Object;
.source "VTCallExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 33
    const-string v0, "VTCallExtension onKeyDown DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 24
    const-string v0, "VTCallExtension onPrepareOptionMenu DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "isVTPeerBigger"    # Z

    .prologue
    .line 19
    const-string v0, "VTCallExtension onTouch DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/view/View$OnTouchListener;
    .param p4, "service"    # Lcom/android/services/telephony/common/ICallCommandService;

    .prologue
    .line 15
    const-string v0, "VTCallExtension onViewCreated DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public resetFlags()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "VTCallExtension resetFlags DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 30
    return-void
.end method
