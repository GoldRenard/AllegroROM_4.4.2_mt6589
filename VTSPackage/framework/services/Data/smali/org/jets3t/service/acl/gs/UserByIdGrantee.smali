.class public Lorg/jets3t/service/acl/gs/UserByIdGrantee;
.super Lorg/jets3t/service/acl/CanonicalGrantee;
.source "UserByIdGrantee.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/jets3t/service/acl/CanonicalGrantee;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/jets3t/service/acl/CanonicalGrantee;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/jets3t/service/acl/CanonicalGrantee;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, p2}, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->setName(Ljava/lang/String;)V

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 85
    instance-of v0, p1, Lorg/jets3t/service/acl/gs/UserByIdGrantee;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jets3t/service/acl/gs/UserByIdGrantee;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_0

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
    .line 66
    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->setDisplayName(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserById [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->displayName:Ljava/lang/String;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "Scope"

    invoke-static {v0}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "UserById"

    invoke-virtual {v0, v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "ID"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    return-object v0
.end method
