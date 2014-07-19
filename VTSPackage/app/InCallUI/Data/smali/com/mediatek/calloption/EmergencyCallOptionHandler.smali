.class public Lcom/mediatek/calloption/EmergencyCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "EmergencyCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmergencyCallOptionHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "EmergencyCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 6
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    .line 52
    const-string v4, "handleRequest()"

    invoke-static {v4}, Lcom/mediatek/calloption/EmergencyCallOptionHandler;->log(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "number":Ljava/lang/String;
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 63
    .local v0, "isEmergencyNumber":Z
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 64
    .local v3, "requestData":Landroid/net/Uri;
    const-string v5, "voicemail:"

    if-nez v3, :cond_2

    const-string v4, ""

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 65
    .local v1, "isVoiceMail":Z
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 66
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getResultHandler()Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;->onPlaceCallDirectly(Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    .end local v1    # "isVoiceMail":Z
    :cond_2
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 70
    .restart local v1    # "isVoiceMail":Z
    :cond_3
    iget-object v4, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v4, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method
