.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller$1;
.super Ljava/lang/Object;
.source "LeSyncRootAppInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->startTimeoutMonitor(Ljava/lang/Process;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;

.field private final synthetic val$process:Ljava/lang/Process;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;Ljava/lang/Process;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller$1;->val$process:Ljava/lang/Process;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 95
    const-wide/16 v1, 0x2710

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller$1;->val$process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
