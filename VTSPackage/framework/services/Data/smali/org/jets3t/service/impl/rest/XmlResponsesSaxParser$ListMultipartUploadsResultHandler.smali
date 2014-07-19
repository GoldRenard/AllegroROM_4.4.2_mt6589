.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListMultipartUploadsResultHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private final commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private insideCommonPrefixes:Z

.field private isTruncated:Z

.field private keyMarker:Ljava/lang/String;

.field private maxUploads:I

.field private nextKeyMarker:Ljava/lang/String;

.field private nextUploadIdMarker:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

.field private uploadIdMarker:Ljava/lang/String;

.field private final uploads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartUpload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    const/4 v1, 0x0

    .line 1232
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .line 1233
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->uploads:Ljava/util/List;

    .line 1222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->commonPrefixes:Ljava/util/List;

    .line 1224
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->bucketName:Ljava/lang/String;

    .line 1225
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->keyMarker:Ljava/lang/String;

    .line 1226
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->uploadIdMarker:Ljava/lang/String;

    .line 1227
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->nextKeyMarker:Ljava/lang/String;

    .line 1228
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->nextUploadIdMarker:Ljava/lang/String;

    .line 1229
    const/16 v0, 0x3e8

    iput v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->maxUploads:I

    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->isTruncated:Z

    .line 1234
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 2
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 1282
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->uploads:Ljava/util/List;

    check-cast p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->getMultipartUpload()Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    return-void
.end method

.method public endBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1287
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->bucketName:Ljava/lang/String;

    .line 1288
    return-void
.end method

.method public endCommonPrefixes()V
    .locals 1

    .prologue
    .line 1321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->insideCommonPrefixes:Z

    .line 1322
    return-void
.end method

.method public endIsTruncated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1311
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->isTruncated:Z

    .line 1312
    return-void
.end method

.method public endKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1291
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->keyMarker:Ljava/lang/String;

    .line 1292
    return-void
.end method

.method public endMaxUploads(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->maxUploads:I

    .line 1308
    return-void
.end method

.method public endNextKeyMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1299
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->nextKeyMarker:Ljava/lang/String;

    .line 1300
    return-void
.end method

.method public endNextUploadIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1303
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->nextUploadIdMarker:Ljava/lang/String;

    .line 1304
    return-void
.end method

.method public endPrefix(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1315
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->insideCommonPrefixes:Z

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    :cond_0
    return-void
.end method

.method public endUploadIdMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1295
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->uploadIdMarker:Ljava/lang/String;

    .line 1296
    return-void
.end method

.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->commonPrefixes:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxUploads()I
    .locals 1

    .prologue
    .line 1265
    iget v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->maxUploads:I

    return v0
.end method

.method public getMultipartUploadList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartUpload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1238
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->uploads:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/model/MultipartUpload;

    .line 1239
    .local v1, "upload":Lorg/jets3t/service/model/MultipartUpload;
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/model/MultipartUpload;->setBucketName(Ljava/lang/String;)V

    goto :goto_0

    .line 1241
    .end local v1    # "upload":Lorg/jets3t/service/model/MultipartUpload;
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->uploads:Ljava/util/List;

    return-object v2
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->nextKeyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextUploadIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->nextUploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->uploadIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 1245
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->isTruncated:Z

    return v0
.end method

.method public startCommonPrefixes()V
    .locals 1

    .prologue
    .line 1277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->insideCommonPrefixes:Z

    .line 1278
    return-void
.end method

.method public startUpload()V
    .locals 3

    .prologue
    .line 1273
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListMultipartUploadsResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 1274
    return-void
.end method
