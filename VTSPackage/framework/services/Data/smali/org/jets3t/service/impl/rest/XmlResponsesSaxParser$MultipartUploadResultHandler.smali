.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultipartUploadResultHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private inInitiator:Z

.field private initiatedDate:Ljava/util/Date;

.field private initiator:Lorg/jets3t/service/model/S3Owner;

.field private objectKey:Ljava/lang/String;

.field private owner:Lorg/jets3t/service/model/S3Owner;

.field private storageClass:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

.field private uploadId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 1
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 1160
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .line 1161
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->inInitiator:Z

    .line 1162
    return-void
.end method


# virtual methods
.method public controlReturned(Lorg/jets3t/service/impl/rest/SimpleHandler;)V
    .locals 1
    .param p1, "childHandler"    # Lorg/jets3t/service/impl/rest/SimpleHandler;

    .prologue
    .line 1207
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->inInitiator:Z

    if-eqz v0, :cond_0

    .line 1208
    check-cast p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Owner;

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->owner:Lorg/jets3t/service/model/S3Owner;

    .line 1212
    :goto_0
    return-void

    .line 1210
    .restart local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    :cond_0
    check-cast p1, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    .end local p1    # "childHandler":Lorg/jets3t/service/impl/rest/SimpleHandler;
    invoke-virtual {p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/model/S3Owner;

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->initiator:Lorg/jets3t/service/model/S3Owner;

    goto :goto_0
.end method

.method public endBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1180
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->bucketName:Ljava/lang/String;

    .line 1181
    return-void
.end method

.method public endInitiated(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1192
    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->initiatedDate:Ljava/util/Date;

    .line 1193
    return-void
.end method

.method public endKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1184
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->objectKey:Ljava/lang/String;

    .line 1185
    return-void
.end method

.method public endStorageClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1188
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->storageClass:Ljava/lang/String;

    .line 1189
    return-void
.end method

.method public endUpload(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1216
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 1217
    return-void
.end method

.method public endUploadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1176
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->uploadId:Ljava/lang/String;

    .line 1177
    return-void
.end method

.method public getMultipartUpload()Lorg/jets3t/service/model/MultipartUpload;
    .locals 7

    .prologue
    .line 1165
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->initiatedDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 1167
    new-instance v0, Lorg/jets3t/service/model/MultipartUpload;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->uploadId:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->objectKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->storageClass:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->initiator:Lorg/jets3t/service/model/S3Owner;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->owner:Lorg/jets3t/service/model/S3Owner;

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->initiatedDate:Ljava/util/Date;

    invoke-direct/range {v0 .. v6}, Lorg/jets3t/service/model/MultipartUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/S3Owner;Lorg/jets3t/service/model/S3Owner;Ljava/util/Date;)V

    .line 1171
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/jets3t/service/model/MultipartUpload;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->uploadId:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->objectKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/jets3t/service/model/MultipartUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startInitiator()V
    .locals 3

    .prologue
    .line 1201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->inInitiator:Z

    .line 1202
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 1203
    return-void
.end method

.method public startOwner()V
    .locals 3

    .prologue
    .line 1196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->inInitiator:Z

    .line 1197
    new-instance v0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartUploadResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;
    invoke-static {v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$100(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    invoke-virtual {p0, v0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->transferControlToHandler(Lorg/jets3t/service/impl/rest/SimpleHandler;)V

    .line 1198
    return-void
.end method
