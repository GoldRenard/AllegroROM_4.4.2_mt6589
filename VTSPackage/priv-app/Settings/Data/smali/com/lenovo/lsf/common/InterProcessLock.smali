.class public Lcom/lenovo/lsf/common/InterProcessLock;
.super Ljava/lang/Object;
.source "InterProcessLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InterProcessLock"


# instance fields
.field private file:Ljava/io/File;

.field private fileOutput:Ljava/io/FileOutputStream;

.field private lock:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->file:Ljava/io/File;

    .line 18
    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    .line 19
    iput-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    .line 23
    return-void
.end method

.method private static getLockFile(Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p0, "lockName"    # Ljava/lang/String;

    .prologue
    .line 28
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 34
    .local v2, "md5Digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 35
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/lsf/common/HexString;->toString([B)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".lock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "md5Digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v3

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "InterProcessLock"

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    .line 30
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public lock(Ljava/lang/String;)Z
    .locals 5
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 42
    iget-object v3, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    if-nez v3, :cond_0

    .line 43
    invoke-static {p1}, Lcom/lenovo/lsf/common/InterProcessLock;->getLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lsf/common/InterProcessLock;->file:Ljava/io/File;

    if-nez v3, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 48
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/lenovo/lsf/common/InterProcessLock;->file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 62
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    .line 63
    const/4 v2, 0x0

    goto :goto_0

    .line 49
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v3, "InterProcessLock"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 60
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "InterProcessLock"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :goto_1
    iput-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    .line 114
    iput-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    .line 115
    iget-object v0, p0, Lcom/lenovo/lsf/common/InterProcessLock;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 116
    iput-object v1, p0, Lcom/lenovo/lsf/common/InterProcessLock;->file:Ljava/io/File;

    .line 118
    :cond_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_1

    .line 105
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public tryLock(Ljava/lang/String;)Z
    .locals 5
    .param p1, "lockName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 71
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_2

    .line 72
    invoke-static {p1}, Lcom/lenovo/lsf/common/InterProcessLock;->getLockFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->file:Ljava/io/File;

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 77
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/lenovo/lsf/common/InterProcessLock;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_2

    .line 90
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    :goto_1
    iput-object v4, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    .line 98
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v2, "InterProcessLock"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v2, "InterProcessLock"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_2

    .line 90
    :try_start_4
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 93
    :goto_3
    iput-object v4, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    goto :goto_2

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 88
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->lock:Ljava/nio/channels/FileLock;

    if-nez v2, :cond_3

    .line 90
    :try_start_5
    iget-object v2, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 93
    :goto_4
    iput-object v4, p0, Lcom/lenovo/lsf/common/InterProcessLock;->fileOutput:Ljava/io/FileOutputStream;

    .line 95
    :cond_3
    throw v1

    .line 91
    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    goto :goto_4

    .restart local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v2

    goto :goto_3
.end method
