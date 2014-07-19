.class public Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;
.super Ljava/lang/Object;
.source "FileStorageMeta.java"


# static fields
.field public static final META_BLOCK_SIZE:I = 0x1000

.field private static final META_VERSION:I = 0x1

.field private static final REAPER_SDK_FLAG_STRING:Ljava/lang/String; = "ReaperSDK"

.field private static final REAPER_SDK_STORAGE_FLAG:[C

.field private static final TAG:Ljava/lang/String; = "FileStorageMeta"


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private currentTime:J

.field private defaultHead:[I

.field private firstView:J

.field private head:[I

.field private id:J

.field private metaLoaded:Z

.field private previousView:J

.field private sessionCounter:I

.field private sessionId:I

.field private tail:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "ReaperSDK"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->REAPER_SDK_STORAGE_FLAG:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->id:J

    .line 41
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    .line 73
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->reset()V

    .line 74
    return-void
.end method

.method private readFlag(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 234
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->REAPER_SDK_STORAGE_FLAG:[C

    array-length v2, v2

    new-array v1, v2, [C

    .line 235
    .local v1, "result":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->REAPER_SDK_STORAGE_FLAG:[C

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 236
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    aput-char v2, v1, v0

    .line 235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method


# virtual methods
.method public byteBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    .prologue
    .line 138
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 139
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->REAPER_SDK_STORAGE_FLAG:[C

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-char v5, v0, v3

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 140
    .local v1, "c":Ljava/lang/Character;
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "c":Ljava/lang/Character;
    :cond_0
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 143
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 144
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 145
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    :cond_1
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 148
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionId:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 149
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->firstView:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 150
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->previousView:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 151
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget-wide v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->currentTime:J

    invoke-virtual {v5, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 152
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    iget v6, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionCounter:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 154
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->buffer:Ljava/nio/ByteBuffer;

    return-object v5
.end method

.method public empty(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
    .locals 3
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 249
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 250
    .local v0, "seq":I
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public full(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
    .locals 3
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 259
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 260
    .local v0, "seq":I
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;I)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTime()J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->currentTime:J

    return-wide v0
.end method

.method public getFirstView()J
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->firstView:J

    return-wide v0
.end method

.method public getPreviousView()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->previousView:J

    return-wide v0
.end method

.method public getSessionCounter()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionCounter:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionId:I

    return v0
.end method

.method public head(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 2
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public isMetaLoaded()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->metaLoaded:Z

    return v0
.end method

.method public load(Ljava/nio/ByteBuffer;)Z
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x1

    .line 165
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->readFlag(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "flag":Ljava/lang/String;
    const-string v4, "ReaperSDK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->reset()V

    .line 168
    const/4 v3, 0x0

    .line 186
    :cond_0
    :goto_0
    return v3

    .line 170
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 171
    .local v2, "version":I
    if-ge v2, v3, :cond_2

    .line 172
    invoke-virtual {p0, p1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->upgrade(Ljava/nio/ByteBuffer;II)V

    .line 174
    :cond_2
    if-ne v2, v3, :cond_0

    .line 175
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v4, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 176
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v1

    .line 177
    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v1

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->id:J

    .line 180
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionId:I

    .line 181
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->firstView:J

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->previousView:J

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->currentTime:J

    .line 184
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    iput v4, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionCounter:I

    goto :goto_0
.end method

.method public next(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;I)I
    .locals 4
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    .param p2, "pointer"    # I

    .prologue
    .line 271
    add-int/lit8 v0, p2, 0x1

    .line 272
    .local v0, "p":I
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 273
    .local v1, "seq":I
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->defaultHead:[I

    aget v2, v2, v1

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    aget v3, v3, v1

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->defaultHead:[I

    aget v0, v2, v1

    .end local v0    # "p":I
    :cond_0
    return v0
.end method

.method public nextId()J
    .locals 4

    .prologue
    .line 293
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->id:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->id:J

    return-wide v0
.end method

.method public offer(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 4
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 109
    .local v0, "seq":I
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;I)I

    move-result v2

    aput v2, v1, v0

    .line 110
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_0

    .line 111
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drop record at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;I)I

    move-result v2

    aput v2, v1, v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v1, v1, v0

    return v1
.end method

.method public printLog()V
    .locals 5

    .prologue
    .line 392
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->currentTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v1, "FileStorageMeta"

    const-string v2, "Loading DB..."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 396
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capability["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 398
    :cond_0
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sequence:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SessionID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FirstView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->firstView:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreviousView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->previousView:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visits:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 404
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Head["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tail["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public pull(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 4
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 123
    const/4 v0, -0x1

    .line 124
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->empty(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 126
    .local v1, "seq":I
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v0, v2, v1

    .line 127
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v3, v3, v1

    invoke-virtual {p0, p1, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->next(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;I)I

    move-result v3

    aput v3, v2, v1

    .line 129
    .end local v1    # "seq":I
    :cond_0
    return v0
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 207
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->id:J

    .line 208
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    .line 209
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    .line 210
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aput v5, v1, v5

    .line 211
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aput v5, v1, v5

    .line 212
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 214
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->defaultHead:[I

    if-nez v1, :cond_1

    .line 217
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->defaultHead:[I

    .line 218
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->defaultHead:[I

    aput v5, v1, v5

    .line 219
    const/4 v0, 0x1

    :goto_1
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 220
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->defaultHead:[I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->defaultHead:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 224
    :cond_1
    return-void
.end method

.method public setCurrentTime(J)V
    .locals 0
    .param p1, "currentTime"    # J

    .prologue
    .line 350
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->currentTime:J

    .line 351
    return-void
.end method

.method public setFirstView(J)V
    .locals 0
    .param p1, "firstView"    # J

    .prologue
    .line 312
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->firstView:J

    .line 313
    return-void
.end method

.method public setMetaLoaded()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->metaLoaded:Z

    .line 78
    return-void
.end method

.method public setPreviousView(J)V
    .locals 0
    .param p1, "previousView"    # J

    .prologue
    .line 331
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->previousView:J

    .line 332
    return-void
.end method

.method public setSessionCounter(I)V
    .locals 0
    .param p1, "sessionCounter"    # I

    .prologue
    .line 388
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionCounter:I

    .line 389
    return-void
.end method

.method public setSessionId(I)V
    .locals 0
    .param p1, "sessionId"    # I

    .prologue
    .line 369
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->sessionId:I

    .line 370
    return-void
.end method

.method public size(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 3
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 282
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 283
    .local v0, "seq":I
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v2, v2, v0

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->head:[I

    aget v1, v1, v0

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    aget v2, v2, v0

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public tail(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 2
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;->tail:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected upgrade(Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "fromVersion"    # I
    .param p3, "toVersion"    # I

    .prologue
    .line 201
    return-void
.end method
