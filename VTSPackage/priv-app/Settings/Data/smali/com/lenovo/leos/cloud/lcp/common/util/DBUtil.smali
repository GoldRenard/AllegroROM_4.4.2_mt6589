.class public final Lcom/lenovo/leos/cloud/lcp/common/util/DBUtil;
.super Ljava/lang/Object;
.source "DBUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs close([Landroid/database/Cursor;)V
    .locals 6
    .param p0, "cursors"    # [Landroid/database/Cursor;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    .line 19
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 29
    :cond_0
    return-void

    .line 19
    :cond_1
    aget-object v0, p0, v2

    .line 20
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 22
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "DBUtil"

    const-string v5, "Cursor close failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
