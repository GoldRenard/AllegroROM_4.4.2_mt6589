.class public Lorg/jets3t/service/acl/Permission;
.super Ljava/lang/Object;
.source "Permission.java"


# static fields
.field public static final PERMISSION_FULL_CONTROL:Lorg/jets3t/service/acl/Permission;

.field public static final PERMISSION_READ:Lorg/jets3t/service/acl/Permission;

.field public static final PERMISSION_READ_ACP:Lorg/jets3t/service/acl/Permission;

.field public static final PERMISSION_WRITE:Lorg/jets3t/service/acl/Permission;

.field public static final PERMISSION_WRITE_ACP:Lorg/jets3t/service/acl/Permission;


# instance fields
.field private permissionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lorg/jets3t/service/acl/Permission;

    const-string v1, "FULL_CONTROL"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_FULL_CONTROL:Lorg/jets3t/service/acl/Permission;

    .line 30
    new-instance v0, Lorg/jets3t/service/acl/Permission;

    const-string v1, "READ"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ:Lorg/jets3t/service/acl/Permission;

    .line 31
    new-instance v0, Lorg/jets3t/service/acl/Permission;

    const-string v1, "WRITE"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE:Lorg/jets3t/service/acl/Permission;

    .line 32
    new-instance v0, Lorg/jets3t/service/acl/Permission;

    const-string v1, "READ_ACP"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ_ACP:Lorg/jets3t/service/acl/Permission;

    .line 33
    new-instance v0, Lorg/jets3t/service/acl/Permission;

    const-string v1, "WRITE_ACP"

    invoke-direct {v0, v1}, Lorg/jets3t/service/acl/Permission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE_ACP:Lorg/jets3t/service/acl/Permission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "permissionString"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lorg/jets3t/service/acl/Permission;->permissionString:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lorg/jets3t/service/acl/Permission;->permissionString:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static parsePermission(Ljava/lang/String;)Lorg/jets3t/service/acl/Permission;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "permission":Lorg/jets3t/service/acl/Permission;
    if-nez p0, :cond_0

    .line 64
    :goto_0
    return-object v0

    .line 51
    :cond_0
    sget-object v1, Lorg/jets3t/service/acl/Permission;->PERMISSION_FULL_CONTROL:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v1}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    sget-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_FULL_CONTROL:Lorg/jets3t/service/acl/Permission;

    goto :goto_0

    .line 53
    :cond_1
    sget-object v1, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v1}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 54
    sget-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ:Lorg/jets3t/service/acl/Permission;

    goto :goto_0

    .line 55
    :cond_2
    sget-object v1, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v1}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 56
    sget-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE:Lorg/jets3t/service/acl/Permission;

    goto :goto_0

    .line 57
    :cond_3
    sget-object v1, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ_ACP:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v1}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 58
    sget-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_READ_ACP:Lorg/jets3t/service/acl/Permission;

    goto :goto_0

    .line 59
    :cond_4
    sget-object v1, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE_ACP:Lorg/jets3t/service/acl/Permission;

    invoke-virtual {v1}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 60
    sget-object v0, Lorg/jets3t/service/acl/Permission;->PERMISSION_WRITE_ACP:Lorg/jets3t/service/acl/Permission;

    goto :goto_0

    .line 62
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 80
    instance-of v0, p1, Lorg/jets3t/service/acl/Permission;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

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

.method public hashCode()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jets3t/service/acl/Permission;->permissionString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jets3t/service/acl/Permission;->permissionString:Ljava/lang/String;

    return-object v0
.end method
