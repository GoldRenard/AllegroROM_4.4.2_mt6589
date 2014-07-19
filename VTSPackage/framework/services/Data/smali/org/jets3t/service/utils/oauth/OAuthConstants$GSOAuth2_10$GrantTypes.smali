.class public Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$GrantTypes;
.super Ljava/lang/Object;
.source "OAuthConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantTypes"
.end annotation


# static fields
.field public static final Authorization:Ljava/lang/String; = "authorization_code"

.field public static final RefreshToken:Ljava/lang/String; = "refresh_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
