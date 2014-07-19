.class public Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
.super Ljava/lang/Object;
.source "SignatureRequest.java"


# static fields
.field public static final SIGNATURE_TYPE_ACL_LOOKUP:Ljava/lang/String; = "acl-lookup"

.field public static final SIGNATURE_TYPE_ACL_UPDATE:Ljava/lang/String; = "acl-update"

.field public static final SIGNATURE_TYPE_DELETE:Ljava/lang/String; = "delete"

.field public static final SIGNATURE_TYPE_GET:Ljava/lang/String; = "get"

.field public static final SIGNATURE_TYPE_HEAD:Ljava/lang/String; = "head"

.field public static final SIGNATURE_TYPE_PUT:Ljava/lang/String; = "put"


# instance fields
.field private bucketName:Ljava/lang/String;

.field private declineReason:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private objectMetadata:Ljava/util/Map;

.field private signatureType:Ljava/lang/String;

.field private signedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signatureType:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectKey:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->bucketName:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectMetadata:Ljava/util/Map;

    .line 45
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signedUrl:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->declineReason:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "signatureType"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signatureType:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectKey:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->bucketName:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectMetadata:Ljava/util/Map;

    .line 45
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signedUrl:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->declineReason:Ljava/lang/String;

    .line 61
    invoke-virtual {p0, p1}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->setSignatureType(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectKey:Ljava/lang/String;

    .line 63
    return-void
.end method


# virtual methods
.method public addObjectMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "metadataName"    # Ljava/lang/String;
    .param p2, "metadataValue"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectMetadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public buildObject()Lorg/jets3t/service/model/S3Object;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Lorg/jets3t/service/model/S3Object;

    invoke-virtual {p0}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/model/S3Object;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "object":Lorg/jets3t/service/model/S3Object;
    invoke-virtual {p0}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getObjectMetadata()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/StorageObject;->addAllMetadata(Ljava/util/Map;)V

    .line 204
    return-object v0
.end method

.method public declineRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->declineReason:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeclineReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->declineReason:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectMetadata()Ljava/util/Map;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectMetadata:Ljava/util/Map;

    return-object v0
.end method

.method public getSignatureType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signatureType:Ljava/lang/String;

    return-object v0
.end method

.method public getSignedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signedUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isSigned()Z
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getSignedUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->bucketName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "objectKey"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectKey:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setObjectMetadata(Ljava/util/Map;)V
    .locals 1
    .param p1, "objectMetadata"    # Ljava/util/Map;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->objectMetadata:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 114
    return-void
.end method

.method public setSignatureType(Ljava/lang/String;)V
    .locals 3
    .param p1, "signatureType"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "get"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "head"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "put"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "delete"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "acl-lookup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "acl-update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal signature type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iput-object p1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signatureType:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public signRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "signedUrl"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signedUrl:Ljava/lang/String;

    .line 163
    return-void
.end method
