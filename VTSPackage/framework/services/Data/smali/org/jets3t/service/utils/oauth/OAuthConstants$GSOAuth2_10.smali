.class public Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10;
.super Ljava/lang/Object;
.source "OAuthConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/utils/oauth/OAuthConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GSOAuth2_10"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$Scopes;,
        Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$Endpoints;,
        Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$ResponseTypes;,
        Lorg/jets3t/service/utils/oauth/OAuthConstants$GSOAuth2_10$GrantTypes;
    }
.end annotation


# static fields
.field public static final NATIVE_APPLICATION_REDIRECT_URI:Ljava/lang/String; = "urn:ietf:wg:oauth:2.0:oob"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method
