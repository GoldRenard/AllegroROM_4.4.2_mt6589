.class Lcom/android/server/pm/GrantedPermissions;
.super Ljava/lang/Object;
.source "GrantedPermissions.java"


# instance fields
.field gids:[I

.field grantedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mtkFlags:I

.field pkgFlags:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "pkgFlags"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    .line 34
    return-void
.end method

.method constructor <init>(II)V
    .locals 1
    .param p1, "pkgFlags"    # I
    .param p2, "mtkFlags"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/pm/GrantedPermissions;->setFlags(I)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/android/server/pm/GrantedPermissions;->setMtkFlags(I)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/GrantedPermissions;)V
    .locals 1
    .param p1, "base"    # Lcom/android/server/pm/GrantedPermissions;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 44
    iget v0, p1, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 46
    iget v0, p1, Lcom/android/server/pm/GrantedPermissions;->mtkFlags:I

    iput v0, p0, Lcom/android/server/pm/GrantedPermissions;->mtkFlags:I

    .line 47
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 49
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p1, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/server/pm/GrantedPermissions;->gids:[I

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method setFlags(I)V
    .locals 0
    .param p1, "pkgFlags"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/server/pm/GrantedPermissions;->pkgFlags:I

    .line 57
    return-void
.end method

.method setMtkFlags(I)V
    .locals 0
    .param p1, "mtkFlags"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/server/pm/GrantedPermissions;->mtkFlags:I

    .line 62
    return-void
.end method
