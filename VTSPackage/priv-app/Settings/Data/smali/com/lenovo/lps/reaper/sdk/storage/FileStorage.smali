.class public Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;
.super Ljava/lang/Object;
.source "FileStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileStorage"


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private context:Landroid/content/Context;

.field private dataFile:Ljava/io/RandomAccessFile;

.field private dbFileDirPath:Ljava/lang/String;

.field private initialized:Z

.field private localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "localConfigManager"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 58
    return-void
.end method

.method private deleteOldFiles()V
    .locals 7

    .prologue
    .line 91
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dbFileDirPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 92
    .local v2, "files":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 93
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "fileName":Ljava/lang/String;
    const-string v4, "lenovo_reaper.db"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "11."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v5}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 97
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "FileStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delete DataFile Exception. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 125
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dataFile:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 132
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 133
    const-wide/16 v0, 0x14

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :cond_1
    :goto_1
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_1

    .line 126
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 189
    return-void
.end method

.method public initialize()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 67
    iget-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->initialized:Z

    if-nez v3, :cond_1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/data/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dbFileDirPath:Ljava/lang/String;

    .line 70
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dbFileDirPath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->deleteOldFiles()V

    .line 77
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->destroy()V

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dbFileDirPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "lenovo_reaper.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    .local v2, "filePath":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/io/RandomAccessFile;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v5, "rw"

    invoke-direct {v3, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dataFile:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    .line 85
    iput-boolean v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->initialized:Z

    .line 87
    .end local v2    # "filePath":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v3, "FileStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to Close or Create DataFile. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    .line 85
    iput-boolean v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->initialized:Z

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->dataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    .line 85
    iput-boolean v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->initialized:Z

    throw v3
.end method

.method public position(Ljava/lang/Long;)V
    .locals 3
    .param p1, "offset"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 151
    return-void
.end method

.method public readRecord(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p1}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 177
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 178
    invoke-virtual {p1}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 179
    return-void
.end method

.method public truncate(J)V
    .locals 1
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, p1, p2}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 116
    return-void
.end method

.method public writeRecord(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 164
    .local v0, "result":I
    return v0
.end method
