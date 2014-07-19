.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;
.source "LenovoShell.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LenovoShell"


# instance fields
.field private ledroidContext:Lledroid/app/LedroidContext;

.field private shellCommand:Lledroid/root/ShellCommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;-><init>()V

    return-void
.end method

.method private tryRoot()V
    .locals 5

    .prologue
    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->ledroidContext:Lledroid/app/LedroidContext;

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->ledroidContext:Lledroid/app/LedroidContext;

    invoke-interface {v2}, Lledroid/app/LedroidContext;->hasRootPermission()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->ledroidContext:Lledroid/app/LedroidContext;

    invoke-interface {v2}, Lledroid/app/LedroidContext;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ledroid_root"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lledroid/root/ShellTerminalController;

    .line 99
    .local v1, "shellTerminal":Lledroid/root/ShellTerminalController;
    new-instance v2, Lledroid/root/ShellCommand;

    invoke-virtual {v1}, Lledroid/root/ShellTerminalController;->getRootTransport()Lledroid/root/ICommandTransport;

    move-result-object v3

    invoke-direct {v2, v3}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->shellCommand:Lledroid/root/ShellCommand;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    .end local v1    # "shellTerminal":Lledroid/root/ShellTerminalController;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LenovoShell"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u4f7f\u7528ledroid-root\u5f97\u5230command\u9519\u8bef\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitUtilCommandComplete(Ljava/io/File;J)V
    .locals 11
    .param p1, "outputFile"    # Ljava/io/File;
    .param p2, "millisecond"    # J

    .prologue
    .line 111
    const-wide/16 v5, 0x0

    .local v5, "oldSize":J
    const-wide/16 v9, 0xa

    div-long v7, p2, v9

    .line 112
    .local v7, "waitTime":J
    const/16 v2, 0xa

    .local v2, "maxCount":I
    const/4 v0, 0x0

    .line 115
    .local v0, "currentCount":I
    :cond_0
    :goto_0
    const-wide/16 v3, 0x0

    .line 116
    .local v3, "newSize":J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 123
    cmp-long v9, v5, v3

    if-nez v9, :cond_1

    .line 124
    add-int/lit8 v0, v0, 0x1

    .line 130
    :goto_1
    if-ne v0, v2, :cond_2

    .line 141
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 135
    :cond_2
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_2
    move-wide v5, v3

    .line 114
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getShellCommand()Lledroid/root/ShellCommand;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->shellCommand:Lledroid/root/ShellCommand;

    if-nez v0, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->tryRoot()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->shellCommand:Lledroid/root/ShellCommand;

    return-object v0
.end method

.method public runWaitFor(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    .locals 12
    .param p1, "cotnext"    # Landroid/content/Context;
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->getShellCommand()Lledroid/root/ShellCommand;

    move-result-object v7

    if-nez v7, :cond_0

    .line 49
    :goto_0
    return-object v6

    .line 32
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getStorageRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "outputFilePath":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "newCommand":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "echo 0 > "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".exit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "finishCommand":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->getShellCommand()Lledroid/root/ShellCommand;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    aput-object v1, v8, v10

    invoke-virtual {v7, v8}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    aput-object v0, v8, v10

    invoke-virtual {v7, v8}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    invoke-virtual {v7}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;

    .line 37
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .local v5, "resultFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".exit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    .local v4, "resultCodeFile":Ljava/io/File;
    const-wide/16 v7, 0x3e8

    invoke-direct {p0, v4, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->waitUtilCommandComplete(Ljava/io/File;J)V

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 43
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "result":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 48
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 49
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v8, v3, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    goto/16 :goto_0

    .line 46
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/io/IOException;

    const-string v7, "read file error"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public runWaitFor(Landroid/content/Context;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getStorageRootPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/result"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "outputFilePath":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "echo 0 > "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".exit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "finishCommand":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->getShellCommand()Lledroid/root/ShellCommand;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/String;

    aput-object v1, v8, v10

    invoke-virtual {v7, v8}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v7

    invoke-virtual {v7}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;

    .line 64
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v6, "resultFile":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".exit"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v5, "resultCodeFile":Ljava/io/File;
    const-wide/16 v7, 0x3e8

    invoke-direct {p0, v5, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->waitUtilCommandComplete(Ljava/io/File;J)V

    .line 69
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 70
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "result":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 75
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 76
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v4, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 56
    .end local v1    # "finishCommand":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "resultCodeFile":Ljava/io/File;
    .end local v6    # "resultFile":Ljava/io/File;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "command":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "newCommand":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->getShellCommand()Lledroid/root/ShellCommand;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/String;

    aput-object v2, v9, v10

    invoke-virtual {v8, v9}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    goto/16 :goto_0

    .line 73
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "newCommand":Ljava/lang/String;
    .restart local v1    # "finishCommand":Ljava/lang/String;
    .restart local v5    # "resultCodeFile":Ljava/io/File;
    .restart local v6    # "resultFile":Ljava/io/File;
    :cond_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "read file error"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public setLedroidContext(Lledroid/app/LedroidContext;)V
    .locals 0
    .param p1, "context"    # Lledroid/app/LedroidContext;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->ledroidContext:Lledroid/app/LedroidContext;

    .line 108
    return-void
.end method

.method public shellUsable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/LenovoShell;->getShellCommand()Lledroid/root/ShellCommand;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
