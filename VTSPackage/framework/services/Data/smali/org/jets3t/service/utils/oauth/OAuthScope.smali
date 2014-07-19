.class public Lorg/jets3t/service/utils/oauth/OAuthScope;
.super Ljava/lang/Object;
.source "OAuthScope.java"


# instance fields
.field public final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/jets3t/service/utils/oauth/OAuthScope;->uri:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/jets3t/service/utils/oauth/OAuthScope;->uri:Ljava/lang/String;

    return-object v0
.end method
