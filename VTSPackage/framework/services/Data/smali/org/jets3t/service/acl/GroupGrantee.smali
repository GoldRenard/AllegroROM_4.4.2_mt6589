.class public Lorg/jets3t/service/acl/GroupGrantee;
.super Ljava/lang/Object;
.source "GroupGrantee.java"

# interfaces
.implements Lorg/jets3t/service/acl/GranteeInterface;


# static fields
.field public static final ALL_USERS:Lorg/jets3t/service/acl/GroupGrantee;

.field public static final AUTHENTICATED_USERS:Lorg/jets3t/service/acl/GroupGrantee;

.field public static final LOG_DELIVERY:Lorg/jets3t/service/acl/GroupGrantee;


# instance fields
.field protected id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lorg/jets3t/service/acl/GroupGrantee;

    const-string v1, "http://acs.amazonaws.com/groups/global/AllUsers"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/GroupGrantee;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/GroupGrantee;->ALL_USERS:Lorg/jets3t/service/acl/GroupGrantee;

    .line 49
    new-instance v0, Lorg/jets3t/service/acl/GroupGrantee;

    const-string v1, "http://acs.amazonaws.com/groups/global/AuthenticatedUsers"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/GroupGrantee;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/GroupGrantee;->AUTHENTICATED_USERS:Lorg/jets3t/service/acl/GroupGrantee;

    .line 55
    new-instance v0, Lorg/jets3t/service/acl/GroupGrantee;

    const-string v1, "http://acs.amazonaws.com/groups/s3/LogDelivery"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/GroupGrantee;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/GroupGrantee;->LOG_DELIVERY:Lorg/jets3t/service/acl/GroupGrantee;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "groupUri"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 109
    instance-of v0, p1, Lorg/jets3t/service/acl/GroupGrantee;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    check-cast p1, Lorg/jets3t/service/acl/GroupGrantee;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 112
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
    .line 101
    iget-object v0, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupGrantee ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
    .line 83
    const-string v0, "Grantee"

    invoke-static {v0}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "xmlns:xsi"

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {v0, v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "xsi:type"

    const-string v2, "Group"

    invoke-virtual {v0, v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    const-string v1, "URI"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->element(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/GroupGrantee;->id:Ljava/lang/String;

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
    .line 77
    invoke-virtual {p0}, Lorg/jets3t/service/acl/GroupGrantee;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
