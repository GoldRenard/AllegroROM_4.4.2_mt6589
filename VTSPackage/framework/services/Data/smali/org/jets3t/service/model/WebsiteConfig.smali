.class public Lorg/jets3t/service/model/WebsiteConfig;
.super Ljava/lang/Object;
.source "WebsiteConfig.java"


# instance fields
.field private errorDocumentKey:Ljava/lang/String;

.field private indexDocumentSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/model/WebsiteConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "indexDocumentSuffix"    # Ljava/lang/String;
    .param p2, "errorDocumentKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lorg/jets3t/service/model/WebsiteConfig;->indexDocumentSuffix:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lorg/jets3t/service/model/WebsiteConfig;->errorDocumentKey:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lorg/jets3t/service/model/WebsiteConfig;->indexDocumentSuffix:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/jets3t/service/model/WebsiteConfig;->errorDocumentKey:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public getErrorDocumentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jets3t/service/model/WebsiteConfig;->errorDocumentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexDocumentSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jets3t/service/model/WebsiteConfig;->indexDocumentSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public isWebsiteConfigActive()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jets3t/service/model/WebsiteConfig;->indexDocumentSuffix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toXml()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 71
    const-string v1, "WebsiteConfiguration"

    invoke-static {v1}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v1, v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "IndexDocument"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "Suffix"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/model/WebsiteConfig;->indexDocumentSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 75
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    iget-object v1, p0, Lorg/jets3t/service/model/WebsiteConfig;->errorDocumentKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jets3t/service/model/WebsiteConfig;->errorDocumentKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 76
    const-string v1, "ErrorDocument"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "Key"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/model/WebsiteConfig;->errorDocumentKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
