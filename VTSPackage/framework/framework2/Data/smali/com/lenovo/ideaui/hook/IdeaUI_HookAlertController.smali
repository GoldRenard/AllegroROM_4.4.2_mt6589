.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookAlertController;
.super Ljava/lang/Object;
.source "IdeaUI_HookAlertController.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static AlertController(Landroid/content/Context;I)I
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alertDialogLayout"    # I

    .prologue
    .line 15
    
    return p1
.end method

.method public static setIcon(Landroid/content/Context;I)I
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 27
    return p1
.end method
