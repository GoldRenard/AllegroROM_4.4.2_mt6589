.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;
.source "RootShell.java"


# static fields
.field private static final SHELL_SU:Ljava/lang/String; = "su"

.field private static isRooted:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;-><init>()V

    return-void
.end method

.method private getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "out":Ljava/lang/String;
    const/4 v0, 0x0

    .line 63
    .local v0, "buffer":Ljava/lang/StringBuffer;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v2, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->available()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-gtz v4, :cond_2

    move-object v0, v1

    .line 72
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FilterInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 75
    :goto_1
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_1
    return-object v3

    .line 69
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_3
    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v4

    move-object v0, v1

    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public run(Ljava/lang/String;)Ljava/lang/Process;
    .locals 8
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 24
    const/4 v1, 0x0

    .line 25
    .local v1, "process":Ljava/lang/Process;
    const/4 v2, 0x0

    .line 27
    .local v2, "toProcess":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 28
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .end local v2    # "toProcess":Ljava/io/DataOutputStream;
    .local v3, "toProcess":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 30
    const-string v4, "exit 0\n"

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    new-array v4, v7, [Ljava/io/Closeable;

    .line 35
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v2, v3

    .line 37
    .end local v3    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v2    # "toProcess":Ljava/io/DataOutputStream;
    :goto_0
    return-object v1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v1, 0x0

    .line 34
    new-array v4, v7, [Ljava/io/Closeable;

    .line 35
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 35
    aput-object v2, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 36
    throw v4

    .line 34
    .end local v2    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v3    # "toProcess":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v2    # "toProcess":Ljava/io/DataOutputStream;
    goto :goto_2

    .line 32
    .end local v2    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v3    # "toProcess":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v2    # "toProcess":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public run(Ljava/util/List;)Ljava/lang/Process;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Process;"
        }
    .end annotation

    .prologue
    .local p1, "cmds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "process":Ljava/lang/Process;
    const/4 v3, 0x0

    .line 44
    .local v3, "toProcess":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 45
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v3    # "toProcess":Ljava/io/DataOutputStream;
    .local v4, "toProcess":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    const-string v5, "exit 0\n"

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    new-array v5, v9, [Ljava/io/Closeable;

    .line 54
    aput-object v4, v5, v8

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v3, v4

    .line 57
    .end local v4    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v3    # "toProcess":Ljava/io/DataOutputStream;
    :goto_1
    return-object v2

    .line 46
    .end local v3    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v4    # "toProcess":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "cmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 51
    .end local v0    # "cmd":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 52
    .end local v4    # "toProcess":Ljava/io/DataOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "toProcess":Ljava/io/DataOutputStream;
    :goto_2
    const/4 v2, 0x0

    .line 53
    new-array v5, v9, [Ljava/io/Closeable;

    .line 54
    aput-object v3, v5, v8

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .line 53
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    new-array v6, v9, [Ljava/io/Closeable;

    .line 54
    aput-object v3, v6, v8

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 55
    throw v5

    .line 53
    .end local v3    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v4    # "toProcess":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "toProcess":Ljava/io/DataOutputStream;
    .restart local v3    # "toProcess":Ljava/io/DataOutputStream;
    goto :goto_3

    .line 51
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public runWaitFor(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->run(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 112
    .local v1, "process":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 113
    .local v0, "exitValue":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 114
    .local v3, "stdout":Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, "stderr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 119
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    :goto_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;

    invoke-direct {v4, v0, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 122
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public runWaitFor(Landroid/content/Context;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    .locals 5
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

    .prologue
    .line 82
    .local p2, "cmds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->run(Ljava/util/List;)Ljava/lang/Process;

    move-result-object v1

    .line 83
    .local v1, "process":Ljava/lang/Process;
    const/4 v0, 0x0

    .line 84
    .local v0, "exitValue":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 85
    .local v3, "standardOutput":Ljava/lang/String;
    const/4 v2, 0x0

    .line 86
    .local v2, "standardError":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->getStreamLines(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    :goto_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;

    invoke-direct {v4, v0, v3, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 93
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public shellUsable(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->isRooted:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 103
    const-string v1, "id"

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->runWaitFor(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;

    move-result-object v0

    .line 104
    .local v0, "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->success()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->isRooted:Ljava/lang/Boolean;

    .line 106
    .end local v0    # "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/RootShell;->isRooted:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
