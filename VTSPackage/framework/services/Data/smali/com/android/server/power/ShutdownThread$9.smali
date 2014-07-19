.class final Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_0

    .line 1163
    # invokes: Lcom/android/server/power/ShutdownThread;->turnOffBacklightBrightness()V
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$900()V

    .line 1165
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1166
    :catch_0
    move-exception v1

    goto :goto_1

    .line 1169
    :cond_0
    return-void
.end method
