.class public Lorg/jets3t/service/model/GSOwner;
.super Lorg/jets3t/service/model/StorageOwner;
.source "GSOwner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageOwner;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageOwner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method
