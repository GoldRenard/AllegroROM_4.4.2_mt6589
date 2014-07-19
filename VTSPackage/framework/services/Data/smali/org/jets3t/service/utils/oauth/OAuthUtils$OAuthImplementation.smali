.class public final enum Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;
.super Ljava/lang/Enum;
.source "OAuthUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/oauth/OAuthUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OAuthImplementation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

.field public static final enum GOOGLE_STORAGE_OAUTH2_10:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v0, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    const-string v1, "GOOGLE_STORAGE_OAUTH2_10"

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->GOOGLE_STORAGE_OAUTH2_10:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    sget-object v1, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->GOOGLE_STORAGE_OAUTH2_10:Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    aput-object v1, v0, v2

    sput-object v0, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->$VALUES:[Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    const-class v0, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    return-object v0
.end method

.method public static values()[Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;->$VALUES:[Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/utils/oauth/OAuthUtils$OAuthImplementation;

    return-object v0
.end method
