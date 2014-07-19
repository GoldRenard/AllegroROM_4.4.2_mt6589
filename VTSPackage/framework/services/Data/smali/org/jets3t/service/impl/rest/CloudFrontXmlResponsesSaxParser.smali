.class public Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;
.super Ljava/lang/Object;
.source "CloudFrontXmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionSummaryHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;,
        Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private properties:Lorg/jets3t/service/Jets3tProperties;

.field private xr:Lorg/xml/sax/XMLReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/Jets3tProperties;)V
    .locals 1
    .param p1, "properties"    # Lorg/jets3t/service/Jets3tProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    .line 67
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->properties:Lorg/jets3t/service/Jets3tProperties;

    .line 78
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->properties:Lorg/jets3t/service/Jets3tProperties;

    .line 79
    invoke-static {}, Lorg/jets3t/service/utils/ServiceUtils;->loadXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;)Lorg/xml/sax/XMLReader;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    return-object v0
.end method


# virtual methods
.method public getProperties()Lorg/jets3t/service/Jets3tProperties;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->properties:Lorg/jets3t/service/Jets3tProperties;

    return-object v0
.end method

.method public parseDistributionConfigResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 148
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionConfigHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 149
    return-object v0
.end method

.method public parseDistributionListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 132
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionListHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 133
    return-object v0
.end method

.method public parseDistributionResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 140
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$DistributionHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 141
    return-object v0
.end method

.method public parseErrorResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 196
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$ErrorHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 197
    return-object v0
.end method

.method public parseInvalidationListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 188
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationListHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 189
    return-object v0
.end method

.method public parseInvalidationResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 180
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$InvalidationHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 181
    return-object v0
.end method

.method public parseOriginAccessIdentity(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 156
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 157
    return-object v0
.end method

.method public parseOriginAccessIdentityConfig(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 164
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityConfigHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 165
    return-object v0
.end method

.method public parseOriginAccessIdentityListResponse(Ljava/io/InputStream;)Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;-><init>(Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V

    .line 172
    .local v0, "handler":Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser$OriginAccessIdentityListHandler;
    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V

    .line 173
    return-object v0
.end method

.method protected parseXmlInputStream(Lorg/xml/sax/helpers/DefaultHandler;Ljava/io/InputStream;)V
    .locals 6
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/CloudFrontServiceException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    sget-object v3, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    sget-object v3, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

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

    .line 102
    :cond_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    sget-object v4, Lorg/jets3t/service/Constants;->DEFAULT_ENCODING:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 104
    .local v0, "breader":Ljava/io/BufferedReader;
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 105
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    invoke-interface {v3, p1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 106
    iget-object v3, p0, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->xr:Lorg/xml/sax/XMLReader;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    return-void

    .line 107
    .end local v0    # "breader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 115
    :cond_1
    :goto_0
    new-instance v3, Lorg/jets3t/service/CloudFrontServiceException;

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

    invoke-direct {v3, v4, v2}, Lorg/jets3t/service/CloudFrontServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 110
    :catch_1
    move-exception v1

    .line 111
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    sget-object v3, Lorg/jets3t/service/impl/rest/CloudFrontXmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to close response InputStream up after XML parse failure"

    invoke-interface {v3, v4, v1}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
