.class public abstract Lorg/jets3t/service/model/cloudfront/Origin;
.super Ljava/lang/Object;
.source "Origin.java"


# instance fields
.field private dnsName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "dnsName"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/cloudfront/Origin;->dnsName:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lorg/jets3t/service/model/cloudfront/Origin;->dnsName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getDnsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/jets3t/service/model/cloudfront/Origin;->dnsName:Ljava/lang/String;

    return-object v0
.end method
