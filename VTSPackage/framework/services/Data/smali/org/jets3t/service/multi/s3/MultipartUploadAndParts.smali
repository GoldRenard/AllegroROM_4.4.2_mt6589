.class public Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;
.super Ljava/lang/Object;
.source "MultipartUploadAndParts.java"


# instance fields
.field private multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

.field private partNumberOffset:Ljava/lang/Integer;

.field private partObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/S3Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jets3t/service/model/MultipartUpload;)V
    .locals 2
    .param p1, "multipartUpload"    # Lorg/jets3t/service/model/MultipartUpload;

    .prologue
    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;-><init>(Lorg/jets3t/service/model/MultipartUpload;Ljava/util/List;Ljava/lang/Integer;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/MultipartUpload;Ljava/util/List;)V
    .locals 1
    .param p1, "multipartUpload"    # Lorg/jets3t/service/model/MultipartUpload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/model/MultipartUpload;",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/S3Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "partObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Object;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;-><init>(Lorg/jets3t/service/model/MultipartUpload;Ljava/util/List;Ljava/lang/Integer;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/MultipartUpload;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "multipartUpload"    # Lorg/jets3t/service/model/MultipartUpload;
    .param p3, "partNumberOffset"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/model/MultipartUpload;",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/S3Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "partObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    .line 44
    iput-object p2, p0, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->partObjects:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->partNumberOffset:Ljava/lang/Integer;

    .line 46
    return-void
.end method


# virtual methods
.method public addPartObject(Lorg/jets3t/service/model/S3Object;)V
    .locals 1
    .param p1, "partObject"    # Lorg/jets3t/service/model/S3Object;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->partObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public getMultipartUpload()Lorg/jets3t/service/model/MultipartUpload;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    return-object v0
.end method

.method public getPartNumberOffset()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->partNumberOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPartObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/S3Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->partObjects:Ljava/util/List;

    return-object v0
.end method
