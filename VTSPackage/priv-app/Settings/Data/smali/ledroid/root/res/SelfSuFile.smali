.class public final Lledroid/root/res/SelfSuFile;
.super Ljava/lang/Object;
.source "SelfSuFile.java"


# static fields
.field private static final CMCC_PS:Ljava/lang/String; = "/system/bin/cmcc_ps"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SelfRoot"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeployedSuFile:Ljava/io/File;

.field private mSuRes:Lledroid/utils/AndroidResourceFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "resid"    # I

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->mSuRes:Lledroid/utils/AndroidResourceFile;

    .line 24
    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->mDeployedSuFile:Ljava/io/File;

    .line 27
    iput-object p1, p0, Lledroid/root/res/SelfSuFile;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Lledroid/utils/AndroidResourceFile;

    iget-object v1, p0, Lledroid/root/res/SelfSuFile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lledroid/utils/AndroidResourceFile;-><init>(Landroid/content/res/Resources;I)V

    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->mSuRes:Lledroid/utils/AndroidResourceFile;

    .line 29
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/cmcc_ps"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lledroid/root/res/SelfSuFile;->mDeployedSuFile:Ljava/io/File;

    .line 30
    return-void
.end method

.method private palceSelfSuFileToSystem(Lledroid/root/ICommandTransport;Ljava/lang/String;)V
    .locals 9
    .param p1, "cmdTransport"    # Lledroid/root/ICommandTransport;
    .param p2, "locSuPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 76
    new-instance v0, Lledroid/root/ShellCommand;

    invoke-direct {v0, p1}, Lledroid/root/ShellCommand;-><init>(Lledroid/root/ICommandTransport;)V

    .line 77
    .local v0, "sc":Lledroid/root/ShellCommand;
    new-instance v2, Lledroid/root/res/SelfSuFile$1;

    invoke-direct {v2, p0}, Lledroid/root/res/SelfSuFile$1;-><init>(Lledroid/root/res/SelfSuFile;)V

    invoke-virtual {v0, v2}, Lledroid/root/ShellCommand;->setResponseCallBack(Lledroid/root/ShellCommand$ShellCommandResponse;)V

    .line 84
    iget-object v2, p0, Lledroid/root/res/SelfSuFile;->mDeployedSuFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "sysSuPath":Ljava/lang/String;
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "mount -oremount,rw"

    aput-object v3, v2, v5

    const-string v3, "/system"

    invoke-static {v3}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "/system"

    aput-object v3, v2, v7

    invoke-virtual {v0, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "mount -oremount,rw /system /system"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    .line 88
    const-string v2, "/system/bin/busybox"

    invoke-static {v2}, Lledroid/utils/FileUtils;->fileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "busybox cp -v"

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    .line 94
    :goto_0
    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "chown"

    aput-object v3, v2, v5

    const-string v3, "0:0"

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    invoke-virtual {v0, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "chmod"

    aput-object v4, v3, v5

    const-string v4, "6777"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v2, v3}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/String;

    const-string v4, "mount -oremount,ro"

    aput-object v4, v3, v5

    const-string v4, "/system"

    invoke-static {v4}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const-string v4, "/system"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "mount -oremount,ro /system /system"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "ls"

    aput-object v4, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    move-result-object v2

    invoke-virtual {v2}, Lledroid/root/ShellCommand;->exec()Lledroid/root/ShellCommand;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lledroid/root/ShellCommand;->waitResponse(J)V

    .line 105
    return-void

    .line 91
    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "cat"

    aput-object v3, v2, v5

    aput-object p2, v2, v6

    const-string v3, ">"

    aput-object v3, v2, v7

    aput-object v1, v2, v8

    invoke-virtual {v0, v2}, Lledroid/root/ShellCommand;->addCommand([Ljava/lang/String;)Lledroid/root/ShellCommand;

    goto :goto_0
.end method


# virtual methods
.method public deployedIsUpToData()Z
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Lledroid/root/res/SelfSuFile;->hadDeployed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    const/4 v0, 0x0

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    .local v0, "isUpToData":Z
    iget-object v1, p0, Lledroid/root/res/SelfSuFile;->mDeployedSuFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    iget-object v3, p0, Lledroid/root/res/SelfSuFile;->mSuRes:Lledroid/utils/AndroidResourceFile;

    invoke-virtual {v3}, Lledroid/utils/AndroidResourceFile;->getLength()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 51
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deployedSelfSuToSystem(Lledroid/root/ICommandTransport;)Z
    .locals 3
    .param p1, "cmdTransport"    # Lledroid/root/ICommandTransport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lledroid/root/res/SelfSuFile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/suser"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, "locSuFile":Ljava/io/File;
    :try_start_0
    iget-object v1, p0, Lledroid/root/res/SelfSuFile;->mSuRes:Lledroid/utils/AndroidResourceFile;

    invoke-virtual {v1, v0}, Lledroid/utils/AndroidResourceFile;->writeTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lledroid/root/res/SelfSuFile;->palceSelfSuFileToSystem(Lledroid/root/ICommandTransport;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :cond_1
    invoke-virtual {p0}, Lledroid/root/res/SelfSuFile;->hadDeployed()Z

    move-result v1

    return v1

    .line 67
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    throw v1
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lledroid/root/res/SelfSuFile;->mDeployedSuFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExecName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "/system/bin/cmcc_ps"

    return-object v0
.end method

.method public hadDeployed()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lledroid/root/res/SelfSuFile;->mDeployedSuFile:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lledroid/root/res/SelfSuFile;->mDeployedSuFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_0
.end method

.method public isBadSelfSu()Z
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lledroid/root/res/SelfSuFile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/suf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public setToBad()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lledroid/root/res/SelfSuFile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/suf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bad"

    invoke-static {v1, v2}, Lledroid/utils/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
