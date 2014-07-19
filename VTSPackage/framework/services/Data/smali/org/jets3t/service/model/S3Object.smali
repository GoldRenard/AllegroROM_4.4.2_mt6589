.class public Lorg/jets3t/service/model/S3Object;
.super Lorg/jets3t/service/model/StorageObject;
.source "S3Object.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final S3_VERSION_ID:Ljava/lang/String; = "version-id"

.field public static final SERVER_SIDE_ENCRYPTION__AES256:Ljava/lang/String; = "AES256"

.field public static final SERVER_SIDE_ENCRYPTION__NONE:Ljava/lang/String;

.field public static final STORAGE_CLASS_REDUCED_REDUNDANCY:Ljava/lang/String; = "REDUCED_REDUNDANCY"

.field public static final STORAGE_CLASS_STANDARD:Ljava/lang/String; = "STANDARD"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lorg/jets3t/service/model/S3Object;->SERVER_SIDE_ENCRYPTION__NONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageObject;-><init>()V

    .line 199
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/io/File;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;[B)V

    .line 167
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/S3Bucket;Ljava/io/File;)V
    .locals 1
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0, p2}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/io/File;)V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    .line 71
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0, p2}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    .line 192
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "dataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0, p2, p3}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    .line 121
    :cond_0
    return-void
.end method

.method public static cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/S3Object;
    .locals 6
    .param p0, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 248
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Object;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/jets3t/service/model/StorageObject;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 250
    .local v3, "object":Lorg/jets3t/service/model/StorageObject;
    check-cast v3, Lorg/jets3t/service/model/S3Object;

    .end local v3    # "object":Lorg/jets3t/service/model/StorageObject;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/S3Object;

    return-object v5
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 235
    new-instance v0, Lorg/jets3t/service/model/S3Object;

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/model/S3Object;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "clone":Lorg/jets3t/service/model/S3Object;
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    .line 237
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 238
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 239
    iget-boolean v1, p0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    iput-boolean v1, v0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    .line 240
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    .line 241
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->storageClass:Ljava/lang/String;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->storageClass:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    .line 243
    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/StorageObject;->addAllMetadata(Ljava/util/Map;)V

    .line 244
    return-object v0
.end method

.method public getVersionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "version-id"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setAcl(Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 2
    .param p1, "acl"    # Lorg/jets3t/service/acl/AccessControlList;

    .prologue
    .line 217
    iput-object p1, p0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-virtual {p1}, Lorg/jets3t/service/acl/AccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "restHeaderAclValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 222
    const-string v1, "x-amz-acl"

    invoke-virtual {p0, v1, v0}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v0    # "restHeaderAclValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Object [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<Unknown>"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataInputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", storageClass="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method
