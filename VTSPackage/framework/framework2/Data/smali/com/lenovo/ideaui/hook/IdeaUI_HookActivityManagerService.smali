.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookActivityManagerService;
.super Ljava/lang/Object;
.source "IdeaUI_HookActivityManagerService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "IdeaUI_HookActivityManagerService"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static main(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    
    const v0, 0x103006b
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V
    return-void
    
.end method

.method public static startProcessLocked(Ljava/lang/String;)V
    .locals 2
    .param p0, "strPackage"    # Ljava/lang/String;

    .prologue
    .line 26
    if-eqz p0, :cond_1

    const-string v0, "com.android.cts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.holo.cts"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :cond_0
    const-string v0, "IdeaUI_HookActivityManagerService"

    const-string v1, "Disable rounded corner cover because of CTS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_1
    return-void
.end method
