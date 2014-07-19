.class public Lcom/android/settings/wifi/WifiBR;
.super Lcom/android/settings/wifi/BaseBR;
.source "WifiBR.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/BaseBR;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public backupWifi()Z
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/android/settings/wifi/BaseBR;->checkEnv()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/WifiBR$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiBR$1;-><init>(Lcom/android/settings/wifi/WifiBR;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 33
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreWifi()Z
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/android/settings/wifi/BaseBR;->checkEnv()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/wifi/WifiBR$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiBR$2;-><init>(Lcom/android/settings/wifi/WifiBR;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method
