.class Lcom/android/server/MountService$6$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$6;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$6;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$6;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$6$1;->this$1:Lcom/android/server/MountService$6;

    iget-object v1, v1, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/MountService;->enableUSBFuction(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    :goto_0
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "Privacy Protection unlock exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
