.class public Lorg/jets3t/service/ServiceException;
.super Ljava/lang/Exception;
.source "ServiceException.java"


# static fields
.field private static final serialVersionUID:J = -0xa83a1571c10a625L


# instance fields
.field private errorCode:Ljava/lang/String;

.field private errorHostId:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private errorRequestId:Ljava/lang/String;

.field private requestHost:Ljava/lang/String;

.field private requestPath:Ljava/lang/String;

.field private requestVerb:Ljava/lang/String;

.field private responseCode:I

.field private responseDate:Ljava/lang/String;

.field private responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private responseStatus:Ljava/lang/String;

.field private xmlMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 46
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseHeaders:Ljava/util/Map;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    .line 58
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 46
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseHeaders:Ljava/util/Map;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    .line 58
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "xmlMessage"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "xmlMessage"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseHeaders:Ljava/util/Map;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    .line 58
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    .line 84
    if-eqz p2, :cond_0

    .line 85
    invoke-direct {p0, p2}, Lorg/jets3t/service/ServiceException;->parseXmlMessage(Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/mx/MxDelegate;->registerS3ServiceExceptionEvent(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseHeaders:Ljava/util/Map;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    .line 58
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 46
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 55
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseHeaders:Ljava/util/Map;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    .line 58
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "xmlMessage"    # Ljava/lang/String;
    .param p2, "elementName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ".*<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">(.*)</"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">.*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 156
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 157
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 158
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseXmlMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "xmlMessage"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    .line 168
    const-string v1, "Code"

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    .line 169
    const-string v1, "Message"

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 170
    const-string v1, "RequestId"

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 171
    const-string v1, "HostId"

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 175
    const-string v1, "Details"

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/ServiceException;->findXmlElementText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "errorDetails":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorHostId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestVerb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    return v0
.end method

.method public getResponseDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getResponseStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getXmlMessageAsBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 268
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    .line 270
    :cond_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    iget-object v3, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/jamesmurty/utils/XMLBuilder;->parse(Lorg/xml/sax/InputSource;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 272
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    goto :goto_0
.end method

.method public isParsedFromXmlMessage()Z
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->errorCode:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setErrorHostId(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostId"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->errorMessage:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setErrorRequestId(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setRequestAndHostIds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "errorRequestId"    # Ljava/lang/String;
    .param p2, "errorHostId"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    .line 393
    iput-object p2, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setRequestHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestHost"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setRequestPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestPath"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setRequestVerb(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestVerb"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 297
    iput p1, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    .line 298
    return-void
.end method

.method public setResponseDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseDate"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setResponseHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->responseHeaders:Ljava/util/Map;

    .line 410
    return-void
.end method

.method public setResponseStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseStatus"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "myString":Ljava/lang/String;
    iget-object v1, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/ServiceException;->requestVerb:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/ServiceException;->requestPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " on Host \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jets3t/service/ServiceException;->requestHost:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @ \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/jets3t/service/ServiceException;->responseDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_0
    iget v1, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- ResponseCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jets3t/service/ServiceException;->responseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ResponseStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/ServiceException;->responseStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lorg/jets3t/service/ServiceException;->isParsedFromXmlMessage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", XML Error Message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/ServiceException;->xmlMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    :cond_2
    :goto_2
    return-object v0

    .line 132
    :cond_3
    const-string v1, ""

    goto :goto_0

    :cond_4
    const-string v1, ""

    goto :goto_1

    .line 146
    :cond_5
    iget-object v1, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", RequestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/ServiceException;->errorRequestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", HostId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/ServiceException;->errorHostId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method
