.class public Lorg/jets3t/service/acl/gs/AllAuthenticatedUsersGrantee;
.super Lorg/jets3t/service/acl/GroupGrantee;
.source "AllAuthenticatedUsersGrantee.java"


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/jets3t/service/acl/GroupGrantee;-><init>()V

    .line 36
    const-string v0, "AllAuthenticatedUsers"

    iput-object v0, p0, Lorg/jets3t/service/acl/gs/AllAuthenticatedUsersGrantee;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 54
    instance-of v0, p1, Lorg/jets3t/service/acl/gs/AllAuthenticatedUsersGrantee;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "AllAuthenticatedUsers"

    return-object v0
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
    .line 49
    const-string v0, "Scope"

    invoke-static {v0}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "AllAuthenticatedUsers"

    invoke-virtual {v0, v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

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
    .line 42
    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/AllAuthenticatedUsersGrantee;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
