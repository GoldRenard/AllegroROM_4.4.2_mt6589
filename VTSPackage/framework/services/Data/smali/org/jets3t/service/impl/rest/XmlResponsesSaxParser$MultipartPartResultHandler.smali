.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultipartPartResultHandler"
.end annotation


# instance fields
.field private etag:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private partNumber:Ljava/lang/Integer;

.field private size:Ljava/lang/Long;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 2
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 1332
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .line 1333
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1327
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->partNumber:Ljava/lang/Integer;

    .line 1330
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->size:Ljava/lang/Long;

    .line 1334
    return-void
.end method


# virtual methods
.method public endETag(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1349
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->etag:Ljava/lang/String;

    .line 1350
    return-void
.end method

.method public endLastModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1345
    invoke-static {p1}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->lastModified:Ljava/util/Date;

    .line 1346
    return-void
.end method

.method public endPart(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1358
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 1359
    return-void
.end method

.method public endPartNumber(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1341
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->partNumber:Ljava/lang/Integer;

    .line 1342
    return-void
.end method

.method public endSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1353
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->size:Ljava/lang/Long;

    .line 1354
    return-void
.end method

.method public getMultipartPart()Lorg/jets3t/service/model/MultipartPart;
    .locals 5

    .prologue
    .line 1337
    new-instance v0, Lorg/jets3t/service/model/MultipartPart;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->partNumber:Ljava/lang/Integer;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->lastModified:Ljava/util/Date;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->etag:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipartPartResultHandler;->size:Ljava/lang/Long;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/jets3t/service/model/MultipartPart;-><init>(Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method
