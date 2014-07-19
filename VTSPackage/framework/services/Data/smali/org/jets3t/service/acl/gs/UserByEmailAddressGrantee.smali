.class public Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;
.super Lorg/jets3t/service/acl/EmailAddressGrantee;
.source "UserByEmailAddressGrantee.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jets3t/service/acl/EmailAddressGrantee;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/jets3t/service/acl/EmailAddressGrantee;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lorg/jets3t/service/acl/EmailAddressGrantee;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p2}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->setName(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 86
    instance-of v0, p1, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->name:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserByEmail [email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 74
    const-string v1, "Scope"

    invoke-static {v1}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "UserByEmail"

    invoke-virtual {v1, v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "EmailAddress"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 78
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    const-string v1, "Name"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 81
    :cond_0
    return-object v0
.end method
