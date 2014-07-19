.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.super Ljava/lang/Object;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadErrorHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$GSBucketLoggingStatusHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;,
        Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private isGoogleStorageMode:Z

.field private properties:Lorg/jets3t/service/Jets3tProperties;

.field private xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/Jets3tProperties;Z)V
    .locals 1
    .param p1, "properties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p2, "returnGoogleStorageObjects"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    .line 81
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->properties:Lorg/jets3t/service/Jets3tProperties;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->isGoogleStorageMode:Z

    .line 95
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->properties:Lorg/jets3t/service/Jets3tProperties;

    .line 96
    iput-boolean p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->isGoogleStorageMode:Z

    .line 97
    invoke-static {}, Lorg/jets3t/service/utils/ServiceUtils;->loadXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    .line 98
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    return-object v0
.end method


# virtual methods
.method protected newBucket()Lorg/jets3t/service/model/StorageBucket;
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->isGoogleStorageMode:Z

    if-eqz v0, :cond_0

    .line 102
    new-instance v0, Lorg/jets3t/service/model/GSBucket;

    invoke-direct {v0}, Lorg/jets3t/service/model/GSBucket;-><init>()V

    .line 104
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jets3t/service/model/S3Bucket;

    invoke-direct {v0}, Lorg/jets3t/service/model/S3Bucket;-><init>()V

    goto :goto_0
.end method

.method protected newObject()Lorg/jets3t/service/model/StorageObject;
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->isGoogleStorageMode:Z

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Lorg/jets3t/service/model/GSObject;

    invoke-direct {v0}, Lorg/jets3t/service/model/GSObject;-><init>()V

    .line 112
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jets3t/service/model/S3Object;

    invoke-direct {v0}, Lorg/jets3t/service/model/S3Object;-><init>()V

    goto :goto_0
.end method

.method protected newOwner()Lorg/jets3t/service/model/StorageOwner;
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->isGoogleStorageMode:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lorg/jets3t/service/model/GSOwner;

    invoke-direct {v0}, Lorg/jets3t/service/model/GSOwner;-><init>()V

    .line 120
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jets3t/service/model/S3Owner;

    invoke-direct {v0}, Lorg/jets3t/service/model/S3Owner;-><init>()V

    goto :goto_0
.end method

.method public parseAccessControlListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/AccessControlListHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 256
    iget-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->isGoogleStorageMode:Z

    if-eqz v1, :cond_0

    .line 257
    new-instance v0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;

    invoke-direct {v0}, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;-><init>()V

    .line 262
    .local v0, "handler":Lorg/jets3t/service/impl/rest/AccessControlListHandler;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseAccessControlListResponse(Ljava/io/InputStream;Lorg/jets3t/service/impl/rest/AccessControlListHandler;)Lorg/jets3t/service/impl/rest/AccessControlListHandler;

    move-result-object v1

    return-object v1

    .line 259
    .end local v0    # "handler":Lorg/jets3t/service/impl/rest/AccessControlListHandler;
    :cond_0
    new-instance v0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;

    invoke-direct {v0}, Lorg/jets3t/service/impl/rest/AccessControlListHandler;-><init>()V

    .restart local v0    # "handler":Lorg/jets3t/service/impl/rest/AccessControlListHandler;
    goto :goto_0
.end method

.method public parseAccessControlListResponse(Ljava/io/InputStream;Lorg/jets3t/service/impl/rest/AccessControlListHandler;)Lorg/jets3t/service/impl/rest/AccessControlListHandler;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/jets3t/service/impl/rest/AccessControlListHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-virtual {p0, p2, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 282
    return-object p2
.end method

.method public parseBucketLocationResponse(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 330
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 331
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;->getLocation()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public parseCompleteMultipartUploadResult(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 419
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CompleteMultipartUploadResultHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 420
    return-object v0
.end method

.method public parseCopyObjectResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 338
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 339
    return-object v0
.end method

.method public parseInitiateMultipartUploadResult(Ljava/io/InputStream;)Lorg/jets3t/service/model/MultipartUpload;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 387
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 388
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->getMultipartUpload()Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v1

    return-object v1
.end method

.method public parseListBucketResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 221
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 222
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListBucketHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 223
    return-object v0
.end method

.method public parseListMultipartPartsResult(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 411
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartPartsResultHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 412
    return-object v0
.end method

.method public parseListMultipartUploadsResult(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 403
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 404
    return-object v0
.end method

.method public parseListMyBucketsResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 238
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 239
    return-object v0
.end method

.method public parseListVersionsResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 378
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 379
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 380
    return-object v0
.end method

.method public parseLoggingStatusResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 299
    iget-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->isGoogleStorageMode:Z

    if-eqz v1, :cond_0

    .line 300
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$GSBucketLoggingStatusHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$GSBucketLoggingStatusHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 304
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 305
    return-object v0

    .line 302
    .end local v0    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
    :cond_0
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .restart local v0    # "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
    goto :goto_0
.end method

.method public parseLoggingStatusResponse(Ljava/io/InputStream;Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;)Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "handler"    # Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0, p2, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 323
    return-object p2
.end method

.method public parseMultipartUploadPartCopyResult(Ljava/io/InputStream;)Lorg/jets3t/service/model/MultipartPart;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 395
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 396
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->getMultipartPart()Lorg/jets3t/service/model/MultipartPart;

    move-result-object v1

    return-object v1
.end method

.method public parseMultipleDeleteResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/MultipleDeleteResult;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 442
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 443
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 444
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->getMultipleDeleteResult()Lorg/jets3t/service/model/MultipleDeleteResult;

    move-result-object v1

    return-object v1
.end method

.method public parseNotificationConfigurationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/NotificationConfig;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 435
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 436
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->getNotificationConfig()Lorg/jets3t/service/model/NotificationConfig;

    move-result-object v1

    return-object v1
.end method

.method public parseRequestPaymentConfigurationResponse(Ljava/io/InputStream;)Z
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 355
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 356
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->isRequesterPays()Z

    move-result v1

    return v1
.end method

.method public parseVersioningConfigurationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/S3BucketVersioningStatus;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 370
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 371
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 372
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->getVersioningStatus()Lorg/jets3t/service/model/S3BucketVersioningStatus;

    move-result-object v1

    return-object v1
.end method

.method public parseWebsiteConfigurationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/model/WebsiteConfig;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;

    invoke-direct {v0, p0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 427
    .local v0, "handler":Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 428
    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->getWebsiteConfig()Lorg/jets3t/service/model/WebsiteConfig;

    move-result-object v1

    return-object v1
.end method

.method protected parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 137
    :try_start_0
    sget-object v3, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    sget-object v3, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing XML response document with handler: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 140
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 142
    .local v0, "breader":Ljava/io/BufferedReader;
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 143
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 144
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 145
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-void

    .line 146
    .end local v0    # "breader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 148
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :cond_1
    :goto_0
    new-instance v3, Lorg/jets3t/service/ServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse XML document with handler "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 149
    :catch_1
    move-exception v1

    .line 150
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    sget-object v3, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to close response InputStream up after XML parse failure"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected sanitizeXmlDocument(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 11
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v8, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->properties:Lorg/jets3t/service/Jets3tProperties;

    const-string v9, "xmlparser.sanitize-listings"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 206
    .end local p2    # "inputStream":Ljava/io/InputStream;
    :goto_0
    return-object p2

    .line 166
    .restart local p2    # "inputStream":Ljava/io/InputStream;
    :cond_0
    sget-object v8, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    sget-object v8, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sanitizing XML document destined for handler "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 170
    :cond_1
    const/4 v6, 0x0

    .line 177
    .local v6, "sanitizedInputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .local v4, "listingDocBuffer":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    sget-object v9, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v8, p2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 181
    .local v0, "br":Ljava/io/BufferedReader;
    const/16 v8, 0x2000

    new-array v1, v8, [C

    .line 182
    .local v1, "buf":[C
    const/4 v5, -0x1

    .line 183
    .local v5, "read":I
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/Reader;->read([C)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_3

    .line 184
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buf":[C
    .end local v4    # "listingDocBuffer":Ljava/lang/StringBuilder;
    .end local v5    # "read":I
    .end local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    .line 197
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 203
    :cond_2
    :goto_2
    new-instance v8, Lorg/jets3t/service/ServiceException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to sanitize XML document destined for handler "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 186
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buf":[C
    .restart local v4    # "listingDocBuffer":Ljava/lang/StringBuilder;
    .restart local v5    # "read":I
    .restart local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 191
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\r"

    const-string v10, "&#013;"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 193
    .local v3, "listingDoc":Ljava/lang/String;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .end local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    sget-object v8, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    move-object p2, v6

    .line 206
    goto/16 :goto_0

    .line 198
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buf":[C
    .end local v3    # "listingDoc":Ljava/lang/String;
    .end local v4    # "listingDocBuffer":Ljava/lang/StringBuilder;
    .end local v5    # "read":I
    .end local v6    # "sanitizedInputStream":Ljava/io/InputStream;
    .restart local v7    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/IOException;
    sget-object v8, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v8}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 200
    sget-object v8, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    const-string v9, "Unable to close response InputStream after failure sanitizing XML document"

    invoke-interface {v8, v9, v2}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
