.class public Lorg/jets3t/service/acl/AccessControlList;
.super Ljava/lang/Object;
.source "AccessControlList.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/AccessControlList;

.field public static final REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/AccessControlList;

.field public static final REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/AccessControlList;

.field public static final REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/AccessControlList;

.field private static final serialVersionUID:J = -0x4011c5bea453200dL


# instance fields
.field protected final grants:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/jets3t/service/acl/GrantAndPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected owner:Lorg/jets3t/service/model/StorageOwner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lorg/jets3t/service/acl/AccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/AccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/AccessControlList;

    .line 56
    new-instance v0, Lorg/jets3t/service/acl/AccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/AccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/AccessControlList;

    .line 62
    new-instance v0, Lorg/jets3t/service/acl/AccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/AccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/AccessControlList;

    .line 68
    new-instance v0, Lorg/jets3t/service/acl/AccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/AccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/AccessControlList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/acl/AccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    return-void
.end method


# virtual methods
.method public getGrantAndPermissions()[Lorg/jets3t/service/acl/GrantAndPermission;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/acl/GrantAndPermission;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/acl/GrantAndPermission;

    return-object v0
.end method

.method public getGranteesWithPermission(Lorg/jets3t/service/acl/Permission;)Ljava/util/List;
    .locals 4
    .param p1, "permission"    # Lorg/jets3t/service/acl/Permission;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/acl/Permission;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/acl/GranteeInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "grantees":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/acl/GranteeInterface;>;"
    iget-object v3, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/acl/GrantAndPermission;

    .line 110
    .local v0, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/jets3t/service/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    :cond_1
    return-object v1
.end method

.method public getOwner()Lorg/jets3t/service/model/StorageOwner;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jets3t/service/acl/AccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    return-object v0
.end method

.method public getPermissionsForGrantee(Lorg/jets3t/service/acl/GranteeInterface;)Ljava/util/List;
    .locals 4
    .param p1, "grantee"    # Lorg/jets3t/service/acl/GranteeInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/acl/GranteeInterface;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/acl/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/acl/Permission;>;"
    iget-object v3, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/acl/GrantAndPermission;

    .line 96
    .local v0, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 100
    .end local v0    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    :cond_1
    return-object v2
.end method

.method public getValueForRESTHeaderACL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/AccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    const-string v0, "private"

    .line 249
    :goto_0
    return-object v0

    .line 242
    :cond_0
    sget-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/AccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const-string v0, "public-read"

    goto :goto_0

    .line 244
    :cond_1
    sget-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/AccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    const-string v0, "public-read-write"

    goto :goto_0

    .line 246
    :cond_2
    sget-object v0, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/AccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 247
    const-string v0, "authenticated-read"

    goto :goto_0

    .line 249
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public grantAllPermissions([Lorg/jets3t/service/acl/GrantAndPermission;)V
    .locals 4
    .param p1, "grantAndPermissions"    # [Lorg/jets3t/service/acl/GrantAndPermission;

    .prologue
    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 148
    aget-object v0, p1, v1

    .line 149
    .local v0, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jets3t/service/acl/AccessControlList;->grantPermission(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    :cond_0
    return-void
.end method

.method public grantPermission(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V
    .locals 2
    .param p1, "grantee"    # Lorg/jets3t/service/acl/GranteeInterface;
    .param p2, "permission"    # Lorg/jets3t/service/acl/Permission;

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    new-instance v1, Lorg/jets3t/service/acl/GrantAndPermission;

    invoke-direct {v1, p1, p2}, Lorg/jets3t/service/acl/GrantAndPermission;-><init>(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    return-void
.end method

.method public hasGranteeAndPermission(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)Z
    .locals 1
    .param p1, "grantee"    # Lorg/jets3t/service/acl/GranteeInterface;
    .param p2, "permission"    # Lorg/jets3t/service/acl/Permission;

    .prologue
    .line 123
    invoke-virtual {p0, p1}, Lorg/jets3t/service/acl/AccessControlList;->getPermissionsForGrantee(Lorg/jets3t/service/acl/GranteeInterface;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isCannedRestACL()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/jets3t/service/acl/AccessControlList;->isRESTHeaderACL()Z

    move-result v0

    return v0
.end method

.method public isRESTHeaderACL()Z
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/jets3t/service/acl/AccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public revokeAllPermissions(Lorg/jets3t/service/acl/GranteeInterface;)V
    .locals 4
    .param p1, "grantee"    # Lorg/jets3t/service/acl/GranteeInterface;

    .prologue
    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "grantsToRemove":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/acl/GrantAndPermission;>;"
    iget-object v3, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/acl/GrantAndPermission;

    .line 162
    .local v0, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v0    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    :cond_1
    iget-object v3, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 167
    return-void
.end method

.method public setOwner(Lorg/jets3t/service/model/StorageOwner;)V
    .locals 0
    .param p1, "owner"    # Lorg/jets3t/service/model/StorageOwner;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jets3t/service/acl/AccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessControlList [owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/AccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/AccessControlList;->getGrantAndPermissions()[Lorg/jets3t/service/acl/GrantAndPermission;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v6, p0, Lorg/jets3t/service/acl/AccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    if-nez v6, :cond_0

    .line 182
    new-instance v6, Lorg/jets3t/service/ServiceException;

    const-string v7, "Invalid AccessControlList: missing an owner"

    invoke-direct {v6, v7}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 184
    :cond_0
    const-string v6, "AccessControlPolicy"

    invoke-static {v6}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    const-string v7, "xmlns"

    const-string v8, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v6, v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    const-string v7, "Owner"

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    const-string v7, "ID"

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jets3t/service/acl/AccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v7}, Lorg/jets3t/service/model/StorageOwner;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    const-string v7, "DisplayName"

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jets3t/service/acl/AccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v7}, Lorg/jets3t/service/model/StorageOwner;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    .line 191
    .local v1, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    const-string v6, "AccessControlList"

    invoke-virtual {v1, v6}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 192
    .local v0, "accessControlList":Lcom/jamesmurty/utils/XMLBuilder;
    iget-object v6, p0, Lorg/jets3t/service/acl/AccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jets3t/service/acl/GrantAndPermission;

    .line 193
    .local v2, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    invoke-virtual {v2}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v3

    .line 194
    .local v3, "grantee":Lorg/jets3t/service/acl/GranteeInterface;
    invoke-virtual {v2}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v5

    .line 195
    .local v5, "permission":Lorg/jets3t/service/acl/Permission;
    const-string v6, "Grant"

    invoke-virtual {v0, v6}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/jets3t/service/acl/GranteeInterface;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/XMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    const-string v7, "Permission"

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    goto :goto_0

    .line 200
    .end local v2    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    .end local v3    # "grantee":Lorg/jets3t/service/acl/GranteeInterface;
    .end local v5    # "permission":Lorg/jets3t/service/acl/Permission;
    :cond_1
    return-object v1
.end method

.method public toXml()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 210
    :try_start_0
    invoke-virtual {p0}, Lorg/jets3t/service/acl/AccessControlList;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jets3t/service/ServiceException;

    const-string v2, "Failed to build XML document for ACL"

    invoke-direct {v1, v2, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
