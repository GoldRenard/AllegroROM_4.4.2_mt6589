.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CopyObjectResultHandler"
.end annotation


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorHostId:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorRequestId:Ljava/lang/String;

.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private receivedErrorResponse:Z

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 832
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 834
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    .line 835
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;

    .line 838
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    .line 839
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    .line 840
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    .line 841
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    .line 842
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 883
    const-string v1, "LastModified"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 885
    :try_start_0
    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    :cond_0
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-ISO8601 date for LastModified in copy object output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 891
    .end local v0    # "e":Ljava/text/ParseException;
    :cond_1
    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 892
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    goto :goto_0

    .line 893
    :cond_2
    const-string v1, "Code"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 894
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 895
    :cond_3
    const-string v1, "Message"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 896
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    goto :goto_0

    .line 897
    :cond_4
    const-string v1, "RequestId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 898
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    goto :goto_0

    .line 899
    :cond_5
    const-string v1, "HostId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 900
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getETag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->etag:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 853
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHostId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorHostId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 861
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 865
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->errorRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->lastModified:Ljava/util/Date;

    return-object v0
.end method

.method public isErrorResponse()Z
    .locals 1

    .prologue
    .line 869
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    return v0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 874
    const-string v0, "CopyObjectResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    .line 879
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    const-string v0, "Error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$CopyObjectResultHandler;->receivedErrorResponse:Z

    goto :goto_0
.end method
