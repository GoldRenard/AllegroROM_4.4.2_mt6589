.class Lcom/android/server/MountService$6;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0

    .prologue
    .line 1077
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1080
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1081
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.mediatek.ppl.NOTIFY_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1082
    const-string v1, "MountService"

    const-string v2, "Privacy Protection unlock!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v1, Lcom/android/server/MountService$6$1;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$6$1;-><init>(Lcom/android/server/MountService$6;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1092
    :cond_1
    const-string v1, "com.mediatek.ppl.NOTIFY_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1093
    const-string v1, "MountService"

    const-string v2, "Privacy Protection lock!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    new-instance v1, Lcom/android/server/MountService$6$2;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$6$2;-><init>(Lcom/android/server/MountService$6;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 1103
    :cond_2
    const-string v1, "com.mediatek.ppl.NOTIFY_MOUNT_SERVICE_WIPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    const-string v1, "MountService"

    const-string v2, "Privacy Protection wipe!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    new-instance v1, Lcom/android/server/MountService$6$3;

    invoke-direct {v1, p0}, Lcom/android/server/MountService$6$3;-><init>(Lcom/android/server/MountService$6;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
