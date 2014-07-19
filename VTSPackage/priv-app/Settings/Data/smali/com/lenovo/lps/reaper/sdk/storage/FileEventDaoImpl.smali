.class public Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;
.super Ljava/lang/Object;
.source "FileEventDaoImpl.java"

# interfaces
.implements Lcom/lenovo/lps/reaper/sdk/api/EventDao;


# static fields
.field private static final META_BLOCK_OFFSET:I = 0x1000

.field private static final RECORD_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "FileEventDaoImpl"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

.field private meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    .line 42
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->random:Ljava/util/Random;

    return-void
.end method

.method private getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 253
    .local v1, "size":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1000

    if-le v1, v2, :cond_1

    .line 254
    :cond_0
    const/4 v2, 0x0

    .line 258
    :goto_0
    return-object v2

    .line 256
    :cond_1
    new-array v0, v1, [B

    .line 257
    .local v0, "bytes":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 258
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 235
    if-nez p2, :cond_0

    .line 236
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 242
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 240
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 241
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private readParams(Ljava/nio/ByteBuffer;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 5
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 153
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 156
    .local v1, "map":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x5

    if-gt v0, v4, :cond_1

    .line 157
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "name":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v1, v0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private saveParams(Ljava/nio/ByteBuffer;Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 207
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 208
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2, v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getParamValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public activeSession()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public addSessionVisits()V
    .locals 8

    .prologue
    .line 57
    const/16 v4, 0x1000

    :try_start_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 58
    .local v3, "metaBuffer":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->initialize()V

    .line 60
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v4, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->readRecord(Ljava/nio/ByteBuffer;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 62
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->load(Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const-string v4, "FileEventDaoImpl"

    const-string v6, "DB load success (in activeSession())"

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v4, "FileEventDaoImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sessionID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getCurrentTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setPreviousView(J)V

    .line 66
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setCurrentTime(J)V

    .line 67
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionCounter()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setSessionCounter(I)V

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->flushMeta()V

    .line 77
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setMetaLoaded()V

    .line 78
    monitor-exit v5

    .line 82
    .end local v0    # "currentTime":J
    .end local v3    # "metaBuffer":Ljava/nio/ByteBuffer;
    :goto_1
    return-void

    .line 69
    .restart local v0    # "currentTime":J
    .restart local v3    # "metaBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    const-string v4, "FileEventDaoImpl"

    const-string v6, "DB load false (in activeSession())"

    invoke-static {v4, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setCurrentTime(J)V

    .line 71
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setFirstView(J)V

    .line 72
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v4, v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setPreviousView(J)V

    .line 73
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setSessionId(I)V

    .line 74
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->setSessionCounter(I)V

    goto :goto_0

    .line 78
    .end local v0    # "currentTime":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 79
    .end local v3    # "metaBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "FileEventDaoImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when addSessionVisits in file storage. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public countEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 1
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->size(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v0

    return v0
.end method

.method public deleteEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
    .locals 5
    .param p1, "postLength"    # I
    .param p2, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 281
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    monitor-enter v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 283
    :try_start_1
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v2, p2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->pull(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->flushMeta()V

    .line 286
    monitor-exit v3

    .line 287
    const/4 v2, 0x1

    .line 290
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 286
    .restart local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 288
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "FileEventDaoImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error when delete events. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected flushMeta()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->position(Ljava/lang/Long;)V

    .line 221
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->byteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 222
    .local v0, "metaBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->writeRecord(Ljava/nio/ByteBuffer;)I

    .line 223
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->flush()V

    .line 224
    return-void
.end method

.method public getEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 43
    .param p1, "eventNum"    # I
    .param p2, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 106
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    move-object/from16 v38, v0

    monitor-enter v38
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    move/from16 v30, p1

    .line 108
    .local v30, "eveNum":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->size(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v37

    .line 109
    .local v37, "size":I
    move/from16 v0, v30

    move/from16 v1, v37

    if-le v0, v1, :cond_0

    move/from16 v30, v37

    .line 110
    :cond_0
    move/from16 v0, v30

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-object/from16 v31, v0

    .line 111
    .local v31, "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v35

    .line 112
    .local v35, "index":I
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    move-object/from16 v27, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v39, v0

    const-wide/16 v41, 0x1000

    mul-long v39, v39, v41

    const-wide/16 v41, 0x1000

    add-long v39, v39, v41

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->position(Ljava/lang/Long;)V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v39, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->readRecord(Ljava/nio/ByteBuffer;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 116
    .local v4, "id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 117
    .local v6, "sessionId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "account":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 119
    .local v8, "randomVal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    .line 120
    .local v9, "timestampFirst":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v11

    .line 121
    .local v11, "timestampPre":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v13

    .line 122
    .local v13, "timestampCur":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v15

    .line 123
    .local v15, "timestampEvent":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 124
    .local v17, "visits":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v18

    .line 125
    .local v18, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v20

    .line 127
    .local v20, "label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v21

    .line 128
    .local v21, "value":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v23

    .line 129
    .local v23, "networkStatus":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v24

    .line 130
    .local v24, "netSubType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v25

    .line 131
    .local v25, "userId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v26

    .line 132
    .local v26, "userIdClass":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->readParams(Ljava/nio/ByteBuffer;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v28

    .line 133
    .local v28, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    new-instance v3, Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-object/from16 v27, p2

    invoke-direct/range {v3 .. v28}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(JILjava/lang/String;IJJJJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DIILjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 136
    .local v3, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;I)I

    move-result v35

    .line 137
    aput-object v3, v31, v33

    .line 112
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_0

    .line 139
    .end local v3    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v4    # "id":J
    .end local v6    # "sessionId":I
    .end local v7    # "account":Ljava/lang/String;
    .end local v8    # "randomVal":I
    .end local v9    # "timestampFirst":J
    .end local v11    # "timestampPre":J
    .end local v13    # "timestampCur":J
    .end local v15    # "timestampEvent":J
    .end local v17    # "visits":I
    .end local v18    # "category":Ljava/lang/String;
    .end local v19    # "action":Ljava/lang/String;
    .end local v20    # "label":Ljava/lang/String;
    .end local v21    # "value":D
    .end local v23    # "networkStatus":I
    .end local v24    # "netSubType":I
    .end local v25    # "userId":Ljava/lang/String;
    .end local v26    # "userIdClass":Ljava/lang/String;
    .end local v28    # "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 140
    move-object/from16 v29, v31

    .local v29, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v36, v0

    .local v36, "len$":I
    const/16 v34, 0x0

    .local v34, "i$":I
    :goto_1
    move/from16 v0, v34

    move/from16 v1, v36

    if-ge v0, v1, :cond_2

    aget-object v3, v29, v34

    .line 141
    .restart local v3    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/Event;->printLog()V

    .line 140
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    .line 144
    .end local v3    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v29    # "arr$":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v34    # "i$":I
    .end local v36    # "len$":I
    :cond_2
    monitor-exit v38

    .line 149
    .end local v30    # "eveNum":I
    .end local v31    # "events":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v33    # "i":I
    .end local v35    # "index":I
    .end local v37    # "size":I
    :goto_2
    return-object v31

    .line 145
    .restart local v30    # "eveNum":I
    :catchall_0
    move-exception v27

    monitor-exit v38
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v27
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 146
    .end local v30    # "eveNum":I
    :catch_0
    move-exception v32

    .line 147
    .local v32, "ex":Ljava/lang/Exception;
    const-string v27, "FileEventDaoImpl"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Error when fetch Event object from storage. "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/16 v31, 0x0

    goto :goto_2
.end method

.method public getEvents(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 1
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 95
    const/16 v0, 0x12c

    invoke-virtual {p0, v0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->getEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public isFileStorageMetaLoaded()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->isMetaLoaded()Z

    move-result v0

    return v0
.end method

.method public saveEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 11
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    const-wide/16 v9, 0x1000

    .line 168
    const-string v5, "FileEventDaoImpl"

    const-string v6, "SavingEvent."

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    monitor-enter v6
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :try_start_1
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getPriority()Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v3

    .line 172
    .local v3, "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v5, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->full(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v5, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->pull(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v4

    .line 174
    .local v4, "tailIndex":I
    const-string v5, "FileEventDaoImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Index of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has been deleted"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v4    # "tailIndex":I
    :cond_0
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v5, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v2

    .line 177
    .local v2, "index":I
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    int-to-long v7, v2

    mul-long/2addr v7, v9

    add-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->position(Ljava/lang/Long;)V

    .line 178
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 179
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->nextId()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 180
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAccount()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 181
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->random:Ljava/util/Random;

    const v8, 0x7fffffff

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getFirstView()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getPreviousView()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getCurrentTime()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getTimestampEvent()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v5

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->getSessionCounter()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 186
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getValue()D

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetworkStatus()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 189
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->getNetSubtype()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 191
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getUserIdClass()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 192
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v5, p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->saveParams(Ljava/nio/ByteBuffer;Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 193
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 194
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->writeRecord(Ljava/nio/ByteBuffer;)I

    .line 195
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v5, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->offer(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    .line 196
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->flushMeta()V

    .line 197
    monitor-exit v6

    .line 204
    .end local v2    # "index":I
    .end local v3    # "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    :goto_0
    return-void

    .line 197
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v5
    :try_end_2
    .catch Ljava/nio/BufferOverflowException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/nio/BufferOverflowException;
    const-string v5, "FileEventDaoImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event Infomation is Too Long Than "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    .end local v0    # "e":Ljava/nio/BufferOverflowException;
    :catch_1
    move-exception v1

    .line 201
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "FileEventDaoImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setFileStorage(Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;)V
    .locals 0
    .param p1, "fileStorage"    # Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    .line 302
    return-void
.end method

.method public setMeta(Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;)V
    .locals 0
    .param p1, "meta"    # Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->meta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    .line 312
    return-void
.end method

.method public truncate(J)V
    .locals 4
    .param p1, "size"    # J

    .prologue
    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->fileStorage:Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;->truncate(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "FileEventDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when truncate storage file. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
