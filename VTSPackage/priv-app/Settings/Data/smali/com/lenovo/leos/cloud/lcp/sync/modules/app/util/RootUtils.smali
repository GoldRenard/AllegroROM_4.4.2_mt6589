.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;
.super Ljava/lang/Object;
.source "RootUtils.java"


# static fields
.field private static ledroidContext:Lledroid/app/LedroidContext;

.field private static lenovoShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

.field private static rootShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShell(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->isRooted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->rootShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->shellUsable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->rootShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->lenovoShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->shellUsable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->lenovoShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isRooted(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->rootShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->rootShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;

    .line 34
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->lenovoShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->lenovoShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

    .line 36
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->lenovoShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->ledroidContext:Lledroid/app/LedroidContext;

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->setLedroidContext(Lledroid/app/LedroidContext;)V

    .line 39
    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->rootShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->shellUsable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->lenovoShell:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->shellUsable(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static runRootCommand(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->isRooted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->getShell(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;->runWaitFor(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;

    move-result-object v0

    .line 45
    .local v0, "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->success()Z

    move-result v1

    .line 47
    .end local v0    # "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static runRootCommands(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "cmds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->isRooted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->getShell(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;->runWaitFor(Landroid/content/Context;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;

    move-result-object v0

    .line 53
    .local v0, "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->success()Z

    move-result v1

    .line 55
    .end local v0    # "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setLedroidContext(Lledroid/app/LedroidContext;)V
    .locals 0
    .param p0, "ledroidContext"    # Lledroid/app/LedroidContext;

    .prologue
    .line 59
    sput-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootUtils;->ledroidContext:Lledroid/app/LedroidContext;

    .line 60
    return-void
.end method
