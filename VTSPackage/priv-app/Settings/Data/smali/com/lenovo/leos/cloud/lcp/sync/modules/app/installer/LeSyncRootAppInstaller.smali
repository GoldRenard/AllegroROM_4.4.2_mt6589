.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;
.super Ljava/lang/Object;
.source "LeSyncRootAppInstaller.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;


# instance fields
.field private leStoreSurpportFlag:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->leStoreSurpportFlag:I

    .line 13
    return-void
.end method

.method private doInstallByRoot(Ljava/lang/String;)I
    .locals 13
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v4, 0x0

    .line 53
    .local v4, "osShell":Ljava/io/DataOutputStream;
    const/4 v1, 0x0

    .line 54
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 57
    .local v2, "isSuccess":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->getInstallScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "str":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 59
    .local v7, "runTime":Ljava/lang/Runtime;
    const-string v10, "su"

    invoke-virtual {v7, v10}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 60
    .local v6, "process":Ljava/lang/Process;
    new-instance v5, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v4    # "osShell":Ljava/io/DataOutputStream;
    .local v5, "osShell":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v5, v9}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 65
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "len":I
    const/16 v10, 0x100

    new-array v0, v10, [B

    .line 70
    .local v0, "bs":[B
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->startTimeoutMonitor(Ljava/lang/Process;)V

    .line 72
    :cond_0
    const/4 v10, -0x1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ne v10, v3, :cond_2

    .line 80
    :goto_0
    if-nez v2, :cond_1

    .line 81
    const/4 v10, 0x0

    iput v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->leStoreSurpportFlag:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    :cond_1
    if-eqz v2, :cond_3

    const/4 v10, 0x1

    .line 85
    :goto_1
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    .line 86
    aput-object v5, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    invoke-static {v11}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 84
    return v10

    .line 73
    :cond_2
    :try_start_2
    new-instance v8, Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "UTF-8"

    invoke-direct {v8, v0, v10, v3, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 74
    .local v8, "state":Ljava/lang/String;
    const-string v10, "Success\n"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v10

    if-eqz v10, :cond_0

    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_0

    .line 84
    .end local v8    # "state":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x6

    goto :goto_1

    .line 85
    .end local v0    # "bs":[B
    .end local v3    # "len":I
    .end local v5    # "osShell":Ljava/io/DataOutputStream;
    .end local v6    # "process":Ljava/lang/Process;
    .end local v7    # "runTime":Ljava/lang/Runtime;
    .end local v9    # "str":Ljava/lang/String;
    .restart local v4    # "osShell":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v10

    :goto_2
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/io/Closeable;

    const/4 v12, 0x0

    .line 86
    aput-object v4, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    invoke-static {v11}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 87
    throw v10

    .line 85
    .end local v4    # "osShell":Ljava/io/DataOutputStream;
    .restart local v5    # "osShell":Ljava/io/DataOutputStream;
    .restart local v6    # "process":Ljava/lang/Process;
    .restart local v7    # "runTime":Ljava/lang/Runtime;
    .restart local v9    # "str":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "osShell":Ljava/io/DataOutputStream;
    .restart local v4    # "osShell":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method private getInstallScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v0, "strBuffer":Ljava/lang/StringBuffer;
    const-string v1, "pm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v1, "install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    const-string v1, " -r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isLeStoreSurpportSilentInstall()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->leStoreSurpportFlag:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->leStoreSurpportFlag:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTimeoutMonitor(Ljava/lang/Process;)V
    .locals 2
    .param p1, "process"    # Ljava/lang/Process;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;Ljava/lang/Process;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 103
    return-void
.end method


# virtual methods
.method public installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 30
    const/4 v1, 0x6

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return v1

    .line 23
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->isLeStoreSurpportSilentInstall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 24
    const/16 v1, -0x3e7

    goto :goto_0

    .line 27
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;->doInstallByRoot(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_0
.end method
