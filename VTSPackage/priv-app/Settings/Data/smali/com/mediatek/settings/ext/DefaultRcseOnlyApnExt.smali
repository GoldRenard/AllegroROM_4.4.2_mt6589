.class public Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;
.super Ljava/lang/Object;
.source "DefaultRcseOnlyApnExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addRcseOnlyApnStateChanged(Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    .prologue
    .line 23
    return-void
.end method

.method public isRcseOnlyApnEnabled()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method

.method public removeRcseOnlyApnStateChanged(Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;

    .prologue
    .line 29
    return-void
.end method
