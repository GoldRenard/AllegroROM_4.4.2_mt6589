.class public Lorg/jets3t/service/acl/EmailAddressGrantee;
.super Ljava/lang/Object;
.source "EmailAddressGrantee.java"

# interfaces
.implements Lorg/jets3t/service/acl/GranteeInterface;


# instance fields
.field private emailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1}, Lorg/jets3t/service/acl/EmailAddressGrantee;->setIdentifier(Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 86
    instance-of v0, p1, Lorg/jets3t/service/acl/EmailAddressGrantee;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    check-cast p1, Lorg/jets3t/service/acl/EmailAddressGrantee;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "Grantee"

    invoke-static {v0}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "xmlns:xsi"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v0, v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "xsi:type"

    const-string v2, "AmazonCustomerByEmail"

    invoke-virtual {v0, v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "EmailAddress"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/EmailAddressGrantee;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toXml()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/jets3t/service/acl/EmailAddressGrantee;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
