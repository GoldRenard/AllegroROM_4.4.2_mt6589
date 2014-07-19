.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookContextImpl;
.super Ljava/lang/Object;
.source "IdeaUI_HookContextImpl.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static isCts(Landroid/app/LoadedApk;Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageInfo"    # Landroid/app/LoadedApk;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 13
    const/4 v1, 0x0

    .line 16
    .local v1, "isCts":Z
    const-string v2, "persist.sys.theme.cts"

    .line 17
    .local v2, "persistCTS":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 19
    .local v3, "value":I
    if-eq v3, v4, :cond_1

    .line 20
    if-lez v3, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 23
    :cond_1
    if-nez p0, :cond_2

    .line 25
    const/4 v1, 0x0

    goto :goto_0

    .line 28
    :cond_2
    if-eqz p1, :cond_0

    :try_start_0
    const-string v4, "com.android.cts"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.holo.cts"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
