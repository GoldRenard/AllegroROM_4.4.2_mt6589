.class Lcom/android/server/AkgService$3;
.super Landroid/database/ContentObserver;
.source "AkgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method constructor <init>(Lcom/android/server/AkgService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/server/AkgService$3;->this$0:Lcom/android/server/AkgService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AkgService$3;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/AkgService;->access$900(Lcom/android/server/AkgService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v1, p0, Lcom/android/server/AkgService$3;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/AkgService;->access$1300(Lcom/android/server/AkgService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swing_lock_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 595
    .local v0, "value":Z
    :cond_1
    iget-object v1, p0, Lcom/android/server/AkgService$3;->this$0:Lcom/android/server/AkgService;

    invoke-virtual {v1, v0}, Lcom/android/server/AkgService;->setEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    .end local v0    # "value":Z
    :catch_0
    move-exception v1

    goto :goto_0
.end method
