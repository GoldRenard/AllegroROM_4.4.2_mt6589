.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPhoneWindowManager;
.super Ljava/lang/Object;
.source "IdeaUI_HookPhoneWindowManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishPostLayoutPolicyLw(Z)V
    .locals 1
    .param p0, "topIsFullscreen"    # Z

    .prologue
    .line 8
    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    :cond_0
    return-void
.end method
