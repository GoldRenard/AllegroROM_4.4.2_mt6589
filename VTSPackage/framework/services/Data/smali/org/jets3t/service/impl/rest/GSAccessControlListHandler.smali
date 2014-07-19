.class public Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;
.super Lorg/jets3t/service/impl/rest/AccessControlListHandler;
.source "GSAccessControlListHandler.java"


# instance fields
.field protected scopeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/AccessControlListHandler;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 77
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/model/StorageOwner;->setId(Ljava/lang/String;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    if-nez v0, :cond_2

    .line 80
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/model/StorageOwner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v0, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    const-string v0, "EmailAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v0, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    const-string v0, "URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v0, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_5
    const-string v0, "Name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    instance-of v0, v0, Lorg/jets3t/service/acl/gs/UserByIdGrantee;

    if-eqz v0, :cond_6

    .line 91
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    check-cast v0, Lorg/jets3t/service/acl/gs/UserByIdGrantee;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/acl/gs/UserByIdGrantee;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_6
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    instance-of v0, v0, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;

    if-eqz v0, :cond_7

    .line 93
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    check-cast v0, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_7
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    instance-of v0, v0, Lorg/jets3t/service/acl/gs/GroupByIdGrantee;

    if-eqz v0, :cond_8

    .line 95
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    check-cast v0, Lorg/jets3t/service/acl/gs/GroupByIdGrantee;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/acl/gs/GroupByIdGrantee;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_8
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    instance-of v0, v0, Lorg/jets3t/service/acl/gs/GroupByEmailAddressGrantee;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    check-cast v0, Lorg/jets3t/service/acl/gs/GroupByEmailAddressGrantee;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/acl/gs/GroupByEmailAddressGrantee;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_9
    const-string v0, "Permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    invoke-static {p2}, Lorg/jets3t/service/acl/Permission;->parsePermission(Ljava/lang/String;)Lorg/jets3t/service/acl/Permission;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    goto/16 :goto_0

    .line 101
    :cond_a
    const-string v0, "Entry"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 102
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v0, v1, v2}, Lorg/jets3t/service/acl/AccessControlList;->grantPermission(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V

    goto/16 :goto_0

    .line 103
    :cond_b
    const-string v0, "Entries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 48
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Lorg/jets3t/service/model/GSOwner;

    invoke-direct {v0}, Lorg/jets3t/service/model/GSOwner;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v0, "Entries"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    .line 52
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->accessControlList:Lorg/jets3t/service/acl/AccessControlList;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/acl/AccessControlList;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->insideACL:Z

    goto :goto_0

    .line 54
    :cond_2
    const-string v0, "Scope"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "type"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    const-string v1, "UserById"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    new-instance v0, Lorg/jets3t/service/acl/gs/UserByIdGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/UserByIdGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    const-string v1, "UserByEmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    new-instance v0, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/UserByEmailAddressGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    goto :goto_0

    .line 60
    :cond_4
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    const-string v1, "GroupById"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 61
    new-instance v0, Lorg/jets3t/service/acl/gs/GroupByIdGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GroupByIdGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    goto :goto_0

    .line 62
    :cond_5
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    const-string v1, "GroupByEmail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 63
    new-instance v0, Lorg/jets3t/service/acl/gs/GroupByEmailAddressGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GroupByEmailAddressGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    goto :goto_0

    .line 64
    :cond_6
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    const-string v1, "GroupByDomain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 65
    new-instance v0, Lorg/jets3t/service/acl/gs/GroupByDomainGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GroupByDomainGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    goto/16 :goto_0

    .line 66
    :cond_7
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    const-string v1, "AllUsers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 67
    new-instance v0, Lorg/jets3t/service/acl/gs/AllUsersGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/AllUsersGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    goto/16 :goto_0

    .line 68
    :cond_8
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/GSAccessControlListHandler;->scopeType:Ljava/lang/String;

    const-string v1, "AllAuthenticatedUsers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lorg/jets3t/service/acl/gs/AllAuthenticatedUsersGrantee;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/AllAuthenticatedUsersGrantee;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/AccessControlListHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    goto/16 :goto_0
.end method
