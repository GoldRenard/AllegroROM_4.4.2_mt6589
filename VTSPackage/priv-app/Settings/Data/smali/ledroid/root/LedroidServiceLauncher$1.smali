.class final Lledroid/root/LedroidServiceLauncher$1;
.super Ljava/lang/Object;
.source "LedroidServiceLauncher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lledroid/root/LedroidServiceLauncher;->initialize(Lledroid/app/LedroidApplication;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 42
    :goto_0
    # getter for: Lledroid/root/LedroidServiceLauncher;->sLedroidApplication:Lledroid/app/LedroidApplication;
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->access$000()Lledroid/app/LedroidApplication;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_0

    .line 44
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v1

    goto :goto_0

    .line 49
    :cond_0
    :try_start_1
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->launchLedroidService()V
    :try_end_1
    .catch Lledroid/root/RootPermissionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    :goto_1
    return-void

    .line 50
    :catch_1
    move-exception v0

    .line 51
    .local v0, "e":Lledroid/root/RootPermissionException;
    const-string v1, "LedroidApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Root Permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
