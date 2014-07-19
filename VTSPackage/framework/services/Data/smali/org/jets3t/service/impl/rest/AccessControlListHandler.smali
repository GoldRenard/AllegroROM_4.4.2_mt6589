.class public Lorg/jets3t/service/impl/rest/AccessControlListHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "AccessControlListHandler.java"


# instance fields
.field protected accessControlList:Lorg/jets3t/service/acl/AccessControlList;

.field protected currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

.field protected currentPermission:Lorg/jets3t/service/acl/Permission;

.field protected insideACL:Z

.field protected owner:Lorg/jets3t/service/model/StorageOwner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    .line 41
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 42
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 43
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/model/StorageOwner;->setId(Ljava/lang/String;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    if-nez v0, :cond_2

    .line 72
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/model/StorageOwner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    new-instance v0, Lorg/jets3t/service/acl/CanonicalGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/CanonicalGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 77
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v0, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    const-string v0, "EmailAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    new-instance v0, Lorg/jets3t/service/acl/EmailAddressGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/EmailAddressGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 80
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v0, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_4
    const-string v0, "URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 82
    new-instance v0, Lorg/jets3t/service/acl/GroupGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/GroupGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 83
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v0, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_5
    const-string v0, "DisplayName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 86
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    instance-of v0, v0, Lorg/jets3t/service/acl/CanonicalGrantee;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    check-cast v0, Lorg/jets3t/service/acl/CanonicalGrantee;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/acl/CanonicalGrantee;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_6
    const-string v0, "Permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    invoke-static {p2}, Lorg/jets3t/service/acl/Permission;->parsePermission(Ljava/lang/String;)Lorg/jets3t/service/acl/Permission;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    goto :goto_0

    .line 91
    :cond_7
    const-string v0, "Grant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 92
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/acl/AccessControlList;->grantPermission(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V

    goto/16 :goto_0

    .line 93
    :cond_8
    const-string v0, "AccessControlList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    goto/16 :goto_0
.end method

.method public getAccessControlList()Lorg/jets3t/service/acl/AccessControlList;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    new-instance v0, Lorg/jets3t/service/model/S3Owner;

    invoke-direct {v0}, Lorg/jets3t/service/model/S3Owner;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "AccessControlList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lorg/jets3t/service/acl/AccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/AccessControlList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    .line 61
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/acl/AccessControlList;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    goto :goto_0
.end method
