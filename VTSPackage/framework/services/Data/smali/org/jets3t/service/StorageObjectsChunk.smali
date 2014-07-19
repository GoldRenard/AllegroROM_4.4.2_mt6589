.class public Lorg/jets3t/service/StorageObjectsChunk;
.super Ljava/lang/Object;
.source "StorageObjectsChunk.java"


# instance fields
.field protected commonPrefixes:[Ljava/lang/String;

.field protected delimiter:Ljava/lang/String;

.field protected objects:[Lorg/jets3t/service/model/StorageObject;

.field protected prefix:Ljava/lang/String;

.field protected priorLastKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "objects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p4, "commonPrefixes"    # [Ljava/lang/String;
    .param p5, "priorLastKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->prefix:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->delimiter:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->objects:[Lorg/jets3t/service/model/StorageObject;

    .line 36
    iput-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->commonPrefixes:[Ljava/lang/String;

    .line 37
    iput-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->priorLastKey:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lorg/jets3t/service/StorageObjectsChunk;->prefix:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/jets3t/service/StorageObjectsChunk;->delimiter:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lorg/jets3t/service/StorageObjectsChunk;->objects:[Lorg/jets3t/service/model/StorageObject;

    .line 45
    iput-object p4, p0, Lorg/jets3t/service/StorageObjectsChunk;->commonPrefixes:[Ljava/lang/String;

    .line 46
    iput-object p5, p0, Lorg/jets3t/service/StorageObjectsChunk;->priorLastKey:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->commonPrefixes:[Ljava/lang/String;

    return-object v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getObjects()[Lorg/jets3t/service/model/StorageObject;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->objects:[Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPriorLastKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->priorLastKey:Ljava/lang/String;

    return-object v0
.end method

.method public isListingComplete()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jets3t/service/StorageObjectsChunk;->priorLastKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
