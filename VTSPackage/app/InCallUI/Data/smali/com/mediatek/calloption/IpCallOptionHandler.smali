.class public abstract Lcom/mediatek/calloption/IpCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "IpCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "IpCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 5
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    const/4 v4, -0x1

    .line 53
    const-string v2, "handleRequest()"

    invoke-static {v2}, Lcom/mediatek/calloption/IpCallOptionHandler;->log(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 55
    .local v1, "slot":I
    if-ne v4, v1, :cond_1

    .line 56
    const-string v2, "handleRequest(), slot is -1"

    invoke-static {v2}, Lcom/mediatek/calloption/IpCallOptionHandler;->log(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v2, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    .line 96
    .local v0, "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v2, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method protected abstract showToast(Lcom/mediatek/calloption/Request;)V
.end method
