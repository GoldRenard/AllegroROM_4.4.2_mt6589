.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookContextImpl;
.super Ljava/lang/Object;
.source "IdeaUI_HookContextImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCts(Landroid/app/LoadedApk;Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageInfo"    # Landroid/app/LoadedApk;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 9
    const/4 v1, 0x0

    .line 12
    .local v1, "isCts":Z
    const-string v2, "persist.sys.theme.cts"

    .line 13
    .local v2, "persistCTS":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 15
    .local v3, "value":I
    if-eq v3, v4, :cond_1

    .line 16
    if-lez v3, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 34
    :cond_0
    :goto_0
    return v1

    .line 19
    :cond_1
    if-nez p0, :cond_2

    .line 21
    const/4 v1, 0x0

    goto :goto_0

    .line 24
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

    .line 27
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
