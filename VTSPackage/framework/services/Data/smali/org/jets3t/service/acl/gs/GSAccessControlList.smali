.class public Lorg/jets3t/service/acl/gs/GSAccessControlList;
.super Lorg/jets3t/service/acl/AccessControlList;
.source "GSAccessControlList.java"


# static fields
.field public static final REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

.field public static final REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lorg/jets3t/service/acl/gs/GSAccessControlList;

.field public static final REST_CANNED_BUCKET_OWNER_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

.field public static final REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

.field public static final REST_CANNED_PROJECT_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

.field public static final REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

.field public static final REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

.field private static final serialVersionUID:J = -0x2c016fea6074672cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 55
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 56
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 57
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 58
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 59
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 60
    new-instance v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-direct {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;-><init>()V

    sput-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PROJECT_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jets3t/service/acl/AccessControlList;-><init>()V

    return-void
.end method


# virtual methods
.method public getValueForRESTHeaderACL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string v0, "private"

    .line 117
    :goto_0
    return-object v0

    .line 104
    :cond_0
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "public-read"

    goto :goto_0

    .line 106
    :cond_1
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    const-string v0, "public-read-write"

    goto :goto_0

    .line 108
    :cond_2
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    const-string v0, "authenticated-read"

    goto :goto_0

    .line 110
    :cond_3
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const-string v0, "bucket-owner-read"

    goto :goto_0

    .line 112
    :cond_4
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const-string v0, "bucket-owner-full-control"

    goto :goto_0

    .line 114
    :cond_5
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PROJECT_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 115
    const-string v0, "project-private"

    goto :goto_0

    .line 117
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSAccessControlList [owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", grants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getGrantAndPermissions()[Lorg/jets3t/service/acl/GrantAndPermission;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

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
    .line 74
    const-string v7, "AccessControlList"

    invoke-static {v7}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    .line 77
    .local v1, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    iget-object v7, p0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    if-eqz v7, :cond_0

    .line 78
    const-string v7, "Owner"

    invoke-virtual {v1, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    .line 79
    .local v5, "ownerBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    const-string v7, "ID"

    invoke-virtual {v5, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v8}, Lorg/jets3t/service/model/StorageOwner;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 80
    iget-object v7, p0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v7}, Lorg/jets3t/service/model/StorageOwner;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 81
    const-string v7, "Name"

    invoke-virtual {v5, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v8}, Lorg/jets3t/service/model/StorageOwner;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    .line 85
    .end local v5    # "ownerBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    :cond_0
    const-string v7, "Entries"

    invoke-virtual {v1, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 86
    .local v0, "accessControlList":Lcom/jamesmurty/utils/XMLBuilder;
    iget-object v7, p0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->grants:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jets3t/service/acl/GrantAndPermission;

    .line 87
    .local v2, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    invoke-virtual {v2}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v3

    .line 88
    .local v3, "grantee":Lorg/jets3t/service/acl/GranteeInterface;
    invoke-virtual {v2}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v6

    .line 89
    .local v6, "permission":Lorg/jets3t/service/acl/Permission;
    const-string v7, "Entry"

    invoke-virtual {v0, v7}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    invoke-interface {v3}, Lorg/jets3t/service/acl/GranteeInterface;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/XMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    const-string v8, "Permission"

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    goto :goto_0

    .line 94
    .end local v2    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    .end local v3    # "grantee":Lorg/jets3t/service/acl/GranteeInterface;
    .end local v6    # "permission":Lorg/jets3t/service/acl/Permission;
    :cond_1
    return-object v1
.end method
