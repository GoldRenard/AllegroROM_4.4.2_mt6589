.class public Lorg/jets3t/service/model/MultipartPart;
.super Ljava/lang/Object;
.source "MultipartPart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/model/MultipartPart$PartNumberComparator;
    }
.end annotation


# instance fields
.field private final etag:Ljava/lang/String;

.field private final lastModified:Ljava/util/Date;

.field private final partNumber:Ljava/lang/Integer;

.field private final size:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .param p1, "partNumber"    # Ljava/lang/Integer;
    .param p2, "lastModified"    # Ljava/util/Date;
    .param p3, "etag"    # Ljava/lang/String;
    .param p4, "size"    # Ljava/lang/Long;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null part number not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    if-nez p2, :cond_1

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null last modified not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    if-nez p3, :cond_2

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null etag not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    if-nez p4, :cond_3

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null size not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    iput-object p1, p0, Lorg/jets3t/service/model/MultipartPart;->partNumber:Ljava/lang/Integer;

    .line 52
    iput-object p2, p0, Lorg/jets3t/service/model/MultipartPart;->lastModified:Ljava/util/Date;

    .line 53
    iput-object p4, p0, Lorg/jets3t/service/model/MultipartPart;->size:Ljava/lang/Long;

    .line 55
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/model/MultipartPart;->etag:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private sameEtag(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pEtag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    iget-object v2, p0, Lorg/jets3t/service/model/MultipartPart;->etag:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    move v0, v1

    .line 80
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v2, p0, Lorg/jets3t/service/model/MultipartPart;->etag:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lorg/jets3t/service/model/MultipartPart;->etag:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/model/MultipartPart;->etag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 63
    :cond_1
    instance-of v3, p1, Lorg/jets3t/service/model/MultipartPart;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 64
    check-cast v0, Lorg/jets3t/service/model/MultipartPart;

    .line 65
    .local v0, "p":Lorg/jets3t/service/model/MultipartPart;
    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lorg/jets3t/service/model/MultipartPart;->partNumber:Ljava/lang/Integer;

    aput-object v4, v3, v2

    iget-object v4, p0, Lorg/jets3t/service/model/MultipartPart;->lastModified:Ljava/util/Date;

    aput-object v4, v3, v1

    iget-object v4, p0, Lorg/jets3t/service/model/MultipartPart;->size:Ljava/lang/Long;

    aput-object v4, v3, v6

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, v0, Lorg/jets3t/service/model/MultipartPart;->partNumber:Ljava/lang/Integer;

    aput-object v5, v4, v2

    iget-object v5, v0, Lorg/jets3t/service/model/MultipartPart;->lastModified:Ljava/util/Date;

    aput-object v5, v4, v1

    iget-object v5, v0, Lorg/jets3t/service/model/MultipartPart;->size:Ljava/lang/Long;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/jets3t/service/model/MultipartPart;->etag:Ljava/lang/String;

    invoke-direct {p0, v3}, Lorg/jets3t/service/model/MultipartPart;->sameEtag(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "p":Lorg/jets3t/service/model/MultipartPart;
    :cond_3
    move v1, v2

    .line 70
    goto :goto_0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jets3t/service/model/MultipartPart;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lorg/jets3t/service/model/MultipartPart;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public getPartNumber()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/jets3t/service/model/MultipartPart;->partNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jets3t/service/model/MultipartPart;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "partNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/MultipartPart;->getPartNumber()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/MultipartPart;->getLastModified()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", etag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/MultipartPart;->getEtag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/MultipartPart;->getSize()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
