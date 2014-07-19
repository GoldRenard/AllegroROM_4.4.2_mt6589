.class public Lorg/jets3t/service/MultipartUploadChunk;
.super Ljava/lang/Object;
.source "MultipartUploadChunk.java"


# static fields
.field private static final EMPTY_STRINGS:[Ljava/lang/String;

.field private static final EMPTY_UPLOADS:[Lorg/jets3t/service/model/MultipartUpload;


# instance fields
.field protected commonPrefixes:[Ljava/lang/String;

.field protected delimiter:Ljava/lang/String;

.field protected prefix:Ljava/lang/String;

.field protected priorLastIdMarker:Ljava/lang/String;

.field protected priorLastKey:Ljava/lang/String;

.field protected uploads:[Lorg/jets3t/service/model/MultipartUpload;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    new-array v0, v1, [Lorg/jets3t/service/model/MultipartUpload;

    sput-object v0, Lorg/jets3t/service/MultipartUploadChunk;->EMPTY_UPLOADS:[Lorg/jets3t/service/model/MultipartUpload;

    .line 41
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lorg/jets3t/service/MultipartUploadChunk;->EMPTY_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/jets3t/service/model/MultipartUpload;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .param p3, "uploads"    # [Lorg/jets3t/service/model/MultipartUpload;
    .param p4, "commonPrefixes"    # [Ljava/lang/String;
    .param p5, "priorLastKey"    # Ljava/lang/String;
    .param p6, "priorLastIdMarker"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->prefix:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->delimiter:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->uploads:[Lorg/jets3t/service/model/MultipartUpload;

    .line 46
    iput-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->commonPrefixes:[Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastKey:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastIdMarker:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/jets3t/service/MultipartUploadChunk;->prefix:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/jets3t/service/MultipartUploadChunk;->delimiter:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lorg/jets3t/service/MultipartUploadChunk;->uploads:[Lorg/jets3t/service/model/MultipartUpload;

    .line 57
    iput-object p4, p0, Lorg/jets3t/service/MultipartUploadChunk;->commonPrefixes:[Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastKey:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastIdMarker:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->commonPrefixes:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jets3t/service/MultipartUploadChunk;->EMPTY_STRINGS:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->commonPrefixes:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPriorLastIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getPriorLastKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUploads()[Lorg/jets3t/service/model/MultipartUpload;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->uploads:[Lorg/jets3t/service/model/MultipartUpload;

    if-nez v0, :cond_0

    sget-object v0, Lorg/jets3t/service/MultipartUploadChunk;->EMPTY_UPLOADS:[Lorg/jets3t/service/model/MultipartUpload;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->uploads:[Lorg/jets3t/service/model/MultipartUpload;

    goto :goto_0
.end method

.method public isListingComplete()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jets3t/service/MultipartUploadChunk;->priorLastIdMarker:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
