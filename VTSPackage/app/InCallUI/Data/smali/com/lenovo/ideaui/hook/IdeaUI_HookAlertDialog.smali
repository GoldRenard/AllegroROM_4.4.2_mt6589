.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookAlertDialog;
.super Ljava/lang/Object;
.source "IdeaUI_HookAlertDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    const/4 v2, 0x5

    .line 11
    const/4 v0, 0x0

    .line 13
    .local v0, "themeId":I
    invoke-virtual {p0}, Landroid/content/Context;->isCts()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 16
    :cond_0
    sget v0, Lcom/lenovo/internal/R$style;->Theme_DeviceDefault_Light_Dialog_Alert:I

    .line 25
    :cond_1
    :goto_0
    return v0

    .line 18
    :cond_2
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    sget v0, Lcom/lenovo/internal/R$style;->Theme_DeviceDefault_Light_Dialog_Alert:I

    goto :goto_0
.end method
