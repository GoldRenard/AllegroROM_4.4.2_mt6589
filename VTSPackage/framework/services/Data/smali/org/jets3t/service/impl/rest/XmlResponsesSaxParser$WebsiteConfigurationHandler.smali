.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebsiteConfigurationHandler"
.end annotation


# instance fields
.field private config:Lorg/jets3t/service/model/WebsiteConfig;

.field private errorDocumentKey:Ljava/lang/String;

.field private indexDocumentSuffix:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1598
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 1599
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->config:Lorg/jets3t/service/model/WebsiteConfig;

    .line 1600
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->indexDocumentSuffix:Ljava/lang/String;

    .line 1601
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->errorDocumentKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 1609
    const-string v0, "Suffix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1610
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->indexDocumentSuffix:Ljava/lang/String;

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1611
    :cond_1
    const-string v0, "Key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1612
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->errorDocumentKey:Ljava/lang/String;

    goto :goto_0

    .line 1613
    :cond_2
    const-string v0, "WebsiteConfiguration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    new-instance v0, Lorg/jets3t/service/model/WebsiteConfig;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->indexDocumentSuffix:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->errorDocumentKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/model/WebsiteConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->config:Lorg/jets3t/service/model/WebsiteConfig;

    goto :goto_0
.end method

.method public getWebsiteConfig()Lorg/jets3t/service/model/WebsiteConfig;
    .locals 1

    .prologue
    .line 1604
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$WebsiteConfigurationHandler;->config:Lorg/jets3t/service/model/WebsiteConfig;

    return-object v0
.end method
