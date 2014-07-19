.class public Lorg/jets3t/service/model/StorageObject;
.super Lorg/jets3t/service/model/BaseStorageItem;
.source "StorageObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final METADATA_HEADER_HASH_MD5:Ljava/lang/String; = "md5-hash"

.field public static final METADATA_HEADER_ORIGINAL_HASH_MD5:Ljava/lang/String; = "original-md5-hash"

.field public static final METADATA_HEADER_SERVER_SIDE_ENCRYPTION:Ljava/lang/String; = "server-side-encryption"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected acl:Lorg/jets3t/service/acl/AccessControlList;

.field protected bucketName:Ljava/lang/String;

.field protected dataInputFile:Ljava/io/File;

.field protected transient dataInputStream:Ljava/io/InputStream;

.field protected isMetadataComplete:Z

.field protected serverSideEncryptionAlgorithm:Ljava/lang/String;

.field protected storageClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/jets3t/service/model/StorageObject;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/model/StorageObject;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-direct {p0}, Lorg/jets3t/service/model/BaseStorageItem;-><init>()V

    .line 58
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 59
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    .line 61
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->storageClass:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->serverSideEncryptionAlgorithm:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 90
    invoke-static {}, Lorg/jets3t/service/utils/Mimetypes;->getInstance()Lorg/jets3t/service/utils/Mimetypes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jets3t/service/utils/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/StorageObject;->setContentType(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot read from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jets3t/service/model/StorageObject;->setDataInputFile(Ljava/io/File;)V

    .line 95
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/StorageObject;->setMd5Hash([B)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/BaseStorageItem;-><init>(Ljava/lang/String;)V

    .line 58
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 59
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    .line 61
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->storageClass:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->serverSideEncryptionAlgorithm:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 123
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 124
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 125
    const-string v1, "text/plain; charset=utf-8"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/StorageObject;->setContentType(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/StorageObject;->setMd5Hash([B)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    .line 148
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 149
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 151
    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/StorageObject;->setContentType(Ljava/lang/String;)V

    .line 152
    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/StorageObject;->setMd5Hash([B)V

    .line 153
    return-void
.end method


# virtual methods
.method public addAllMetadata(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 623
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 624
    .local v2, "value":Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 625
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3, v2}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 626
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 627
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Ljava/util/Date;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3, v2}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 628
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Lorg/jets3t/service/model/S3Owner;

    if-eqz v3, :cond_0

    .line 629
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v2, Lorg/jets3t/service/model/S3Owner;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {p0, v3, v2}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Lorg/jets3t/service/model/StorageOwner;)V

    goto :goto_0

    .line 632
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 591
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Date"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 595
    :cond_0
    const/4 v1, 0x0

    .line 597
    .local v1, "parsedDate":Ljava/util/Date;
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 598
    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 602
    :goto_0
    invoke-super {p0, p1, v1}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/util/Date;)V

    .line 613
    .end local v1    # "parsedDate":Ljava/util/Date;
    :goto_1
    return-void

    .line 600
    .restart local v1    # "parsedDate":Ljava/util/Date;
    :cond_1
    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Ljava/text/ParseException;
    sget-object v2, Lorg/jets3t/service/model/StorageObject;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 606
    sget-object v2, Lorg/jets3t/service/model/StorageObject;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse value we expect to be a valid date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 612
    .end local v0    # "e":Ljava/text/ParseException;
    .end local v1    # "parsedDate":Ljava/util/Date;
    :cond_2
    invoke-super {p0, p1, p2}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "clone":Lorg/jets3t/service/model/StorageObject;
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 169
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 170
    iget-boolean v1, p0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    iput-boolean v1, v0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    .line 171
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    .line 172
    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    .line 173
    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/StorageObject;->addAllMetadata(Ljava/util/Map;)V

    .line 174
    return-object v0
.end method

.method public closeDataInputStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 295
    :cond_0
    return-void
.end method

.method public getAcl()Lorg/jets3t/service/acl/AccessControlList;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    return-object v0
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "Content-Language"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 400
    const-string v1, "Content-Length"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 401
    .local v0, "contentLength":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 402
    const-wide/16 v1, 0x0

    .line 404
    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDataInputFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    return-object v0
.end method

.method public getDataInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    new-instance v1, Lorg/jets3t/service/io/RepeatableFileInputStream;

    iget-object v2, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    invoke-direct {v1, v2}, Lorg/jets3t/service/io/RepeatableFileInputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :cond_0
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    return-object v1

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lorg/jets3t/service/ServiceException;

    const-string v2, "Cannot open file input stream"

    invoke-direct {v1, v2, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getETag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 304
    const-string v1, "ETag"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, "etag":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 306
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 310
    .end local v0    # "etag":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    invoke-super {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 376
    const-string v1, "Last-Modified"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 377
    .local v0, "lastModifiedDate":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 379
    const-string v1, "Date"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lastModifiedDate":Ljava/util/Date;
    check-cast v0, Ljava/util/Date;

    .line 381
    .restart local v0    # "lastModifiedDate":Ljava/util/Date;
    :cond_0
    return-object v0
.end method

.method public getMd5HashAsBase64()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    const-string v2, "Content-MD5"

    invoke-virtual {p0, v2}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 342
    .local v1, "md5HashBase64":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 344
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "eTag":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lorg/jets3t/service/utils/ServiceUtils;->isEtagAlsoAnMD5Hash(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-static {v0}, Lorg/jets3t/service/utils/ServiceUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    .line 353
    .end local v0    # "eTag":Ljava/lang/String;
    .end local v1    # "md5HashBase64":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 349
    .restart local v0    # "eTag":Ljava/lang/String;
    .restart local v1    # "md5HashBase64":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsHex()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsHex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jets3t/service/utils/ServiceUtils;->fromHex(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getMd5HashAsHex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string v0, "md5-hash"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getModifiableMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 644
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 645
    .local v0, "objectMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Content-Length"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v1, "Date"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const-string v1, "ETag"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 648
    const-string v1, "Last-Modified"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    const-string v1, "id-2"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v1, "request-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-object v0
.end method

.method public getServerSideEncryptionAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->serverSideEncryptionAlgorithm:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->serverSideEncryptionAlgorithm:Ljava/lang/String;

    .line 548
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "server-side-encryption"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getStorageClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lorg/jets3t/service/model/StorageObject;->storageClass:Ljava/lang/String;

    return-object v0
.end method

.method public isDirectoryPlaceholder()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v0, 0x1

    .line 658
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 682
    :cond_0
    :goto_0
    return v0

    .line 664
    :cond_1
    const-string v1, "d66759af42f282e1ba19144df2d405d0"

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_$folder$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 677
    :cond_2
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    const-string v1, "application/x-directory"

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 682
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMetadataComplete()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    return v0
.end method

.method public setAcl(Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 0
    .param p1, "acl"    # Lorg/jets3t/service/acl/AccessControlList;

    .prologue
    .line 518
    iput-object p1, p0, Lorg/jets3t/service/model/StorageObject;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 519
    return-void
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/jets3t/service/model/StorageObject;->bucketName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 469
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentEncoding"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method public setContentLanguage(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentLanguage"    # Ljava/lang/String;

    .prologue
    .line 453
    const-string v0, "Content-Language"

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method public setContentLength(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 418
    const-string v0, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 437
    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public setDataInputFile(Ljava/io/File;)V
    .locals 1
    .param p1, "dataInputFile"    # Ljava/io/File;

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 272
    iput-object p1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    .line 273
    return-void
.end method

.method public setDataInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "dataInputStream"    # Ljava/io/InputStream;

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    .line 252
    iput-object p1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 253
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 1
    .param p1, "etag"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v0, "ETag"

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-super {p0, p1}, Lorg/jets3t/service/model/BaseStorageItem;->setName(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "lastModifiedDate"    # Ljava/util/Date;

    .prologue
    .line 392
    const-string v0, "Last-Modified"

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/util/Date;)V

    .line 393
    return-void
.end method

.method public setMd5Hash([B)V
    .locals 2
    .param p1, "md5Hash"    # [B

    .prologue
    .line 365
    const-string v0, "md5-hash"

    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v0, "Content-MD5"

    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public setMetadataComplete(Z)V
    .locals 0
    .param p1, "isMetadataComplete"    # Z

    .prologue
    .line 579
    iput-boolean p1, p0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    .line 580
    return-void
.end method

.method public setServerSideEncryptionAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverSideEncryptionAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 558
    iput-object p1, p0, Lorg/jets3t/service/model/StorageObject;->serverSideEncryptionAlgorithm:Ljava/lang/String;

    .line 559
    return-void
.end method

.method public setStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageClass"    # Ljava/lang/String;

    .prologue
    .line 535
    iput-object p1, p0, Lorg/jets3t/service/model/StorageObject;->storageClass:Ljava/lang/String;

    .line 536
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageObject [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
.end method

.method public verifyData(Ljava/io/File;)Z
    .locals 2
    .param p1, "downloadedFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsBase64()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public verifyData(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "downloadedDataStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsBase64()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public verifyData([B)Z
    .locals 2
    .param p1, "downloadedData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsBase64()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash([B)[B

    move-result-object v1

    invoke-static {v1}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
