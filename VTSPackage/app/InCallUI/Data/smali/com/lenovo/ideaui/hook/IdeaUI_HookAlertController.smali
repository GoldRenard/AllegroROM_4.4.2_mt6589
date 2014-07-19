.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookAlertController;
.super Ljava/lang/Object;
.source "IdeaUI_HookAlertController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AlertController(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alertDialogLayout"    # I

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->isCts()Z

    move-result v0

    .line 14
    .local v0, "bCts":Z
    if-nez v0, :cond_0

    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/internal/R$layout;->alert_dialog_holo:I

    if-ne p1, v1, :cond_0

    .line 16
    sget p1, Lcom/android/internal/R$layout;->lenovo_alert_dialog_holo:I

    .line 19
    :cond_0
    return p1
.end method

.method public static setIcon(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 24
    sget v1, Lcom/android/internal/R$drawable;->ic_dialog_alert:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/internal/R$drawable;->ic_dialog_alert_holo_dark:I

    if-eq p1, v1, :cond_0

    sget v1, Lcom/android/internal/R$drawable;->ic_dialog_alert_holo_light:I

    if-ne p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 29
    .local v0, "is_warning_icon":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    if-nez v0, :cond_3

    .line 32
    const/4 p1, 0x0

    .line 38
    :cond_1
    :goto_1
    return p1

    .line 24
    .end local v0    # "is_warning_icon":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    .restart local v0    # "is_warning_icon":Z
    :cond_3
    sget p1, Lcom/lenovo/internal/R$drawable;->ic_dialog_alert_holo_light:I

    goto :goto_1
.end method
