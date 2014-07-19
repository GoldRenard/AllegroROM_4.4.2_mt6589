.class public Lorg/jets3t/service/model/container/ObjectKeyAndVersion;
.super Ljava/lang/Object;
.source "ObjectKeyAndVersion.java"


# instance fields
.field protected key:Ljava/lang/String;

.field protected version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;->key:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;->version:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jets3t/service/model/container/ObjectKeyAndVersion;->version:Ljava/lang/String;

    return-object v0
.end method
