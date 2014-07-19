.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestPaymentConfigurationHandler"
.end annotation


# instance fields
.field private payer:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    .line 913
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 927
    const-string v0, "Payer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    .line 930
    :cond_0
    return-void
.end method

.method public isRequesterPays()Z
    .locals 2

    .prologue
    .line 922
    const-string v0, "Requester"

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$RequestPaymentConfigurationHandler;->payer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
