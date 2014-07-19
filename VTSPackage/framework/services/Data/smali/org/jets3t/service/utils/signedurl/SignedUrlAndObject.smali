.class public Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;
.super Ljava/lang/Object;
.source "SignedUrlAndObject.java"


# instance fields
.field private object:Lorg/jets3t/service/model/S3Object;

.field private signedUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)V
    .locals 1
    .param p1, "signedUrl"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->signedUrl:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->object:Lorg/jets3t/service/model/S3Object;

    .line 33
    iput-object p1, p0, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->signedUrl:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->object:Lorg/jets3t/service/model/S3Object;

    .line 35
    return-void
.end method


# virtual methods
.method public getObject()Lorg/jets3t/service/model/S3Object;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->object:Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method

.method public getSignedUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->signedUrl:Ljava/lang/String;

    return-object v0
.end method
