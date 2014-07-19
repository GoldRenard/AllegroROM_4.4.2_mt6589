.class public Lorg/jets3t/service/acl/GrantAndPermission;
.super Ljava/lang/Object;
.source "GrantAndPermission.java"


# instance fields
.field private grantee:Lorg/jets3t/service/acl/GranteeInterface;

.field private permission:Lorg/jets3t/service/acl/Permission;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V
    .locals 1
    .param p1, "grantee"    # Lorg/jets3t/service/acl/GranteeInterface;
    .param p2, "permission"    # Lorg/jets3t/service/acl/Permission;

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lorg/jets3t/service/acl/GrantAndPermission;->grantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 28
    iput-object v0, p0, Lorg/jets3t/service/acl/GrantAndPermission;->permission:Lorg/jets3t/service/acl/Permission;

    .line 31
    iput-object p1, p0, Lorg/jets3t/service/acl/GrantAndPermission;->grantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 32
    iput-object p2, p0, Lorg/jets3t/service/acl/GrantAndPermission;->permission:Lorg/jets3t/service/acl/Permission;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 48
    instance-of v0, p1, Lorg/jets3t/service/acl/GrantAndPermission;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lorg/jets3t/service/acl/GrantAndPermission;

    invoke-virtual {v0}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v0

    check-cast p1, Lorg/jets3t/service/acl/GrantAndPermission;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/acl/Permission;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGrantee()Lorg/jets3t/service/acl/GranteeInterface;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jets3t/service/acl/GrantAndPermission;->grantee:Lorg/jets3t/service/acl/GranteeInterface;

    return-object v0
.end method

.method public getPermission()Lorg/jets3t/service/acl/Permission;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/jets3t/service/acl/GrantAndPermission;->permission:Lorg/jets3t/service/acl/Permission;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jets3t/service/acl/GrantAndPermission;->grantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/GrantAndPermission;->permission:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v1}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrantAndPermission [grantee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/GrantAndPermission;->grantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/acl/GrantAndPermission;->permission:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
