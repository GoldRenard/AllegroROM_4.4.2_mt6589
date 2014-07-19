.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookBaseErrorDialog;
.super Ljava/lang/Object;
.source "IdeaUI_HookBaseErrorDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static BaseErrorDialog(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/lenovo/internal/R$style;->Theme_Dialog_AppError_IdeaUI:I

    .line 16
    .local v0, "theme":I
    :goto_0
    return v0

    .line 13
    .end local v0    # "theme":I
    :cond_0
    sget v0, Lcom/android/internal/R$style;->Theme_Dialog_AppError:I

    goto :goto_0
.end method
