.class public Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$Scopes;
.super Ljava/lang/Object;
.source "OAuthConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scopes"
.end annotation


# static fields
.field public static final FullControl:Lorg/jets3t/service/utils/oauth/OAuthScope;

.field public static final ReadOnly:Lorg/jets3t/service/utils/oauth/OAuthScope;

.field public static final ReadWrite:Lorg/jets3t/service/utils/oauth/OAuthScope;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/jets3t/service/utils/oauth/OAuthScope;

    const-string v1, "https://www.googleapis.com/auth/devstorage.read_only"

    invoke-direct {v0, v1}, Lorg/jets3t/service/utils/oauth/OAuthScope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$Scopes;->ReadOnly:Lorg/jets3t/service/utils/oauth/OAuthScope;

    .line 52
    new-instance v0, Lorg/jets3t/service/utils/oauth/OAuthScope;

    const-string v1, "https://www.googleapis.com/auth/devstorage.read_write"

    invoke-direct {v0, v1}, Lorg/jets3t/service/utils/oauth/OAuthScope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$Scopes;->ReadWrite:Lorg/jets3t/service/utils/oauth/OAuthScope;

    .line 53
    new-instance v0, Lorg/jets3t/service/utils/oauth/OAuthScope;

    const-string v1, "https://www.googleapis.com/auth/devstorage.full_control"

    invoke-direct {v0, v1}, Lorg/jets3t/service/utils/oauth/OAuthScope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$Scopes;->FullControl:Lorg/jets3t/service/utils/oauth/OAuthScope;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
