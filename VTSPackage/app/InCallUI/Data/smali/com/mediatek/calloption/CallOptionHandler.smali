.class public Lcom/mediatek/calloption/CallOptionHandler;
.super Ljava/lang/Object;
.source "CallOptionHandler.java"


# static fields
.field private static final SIM_STATUS_CALL_OPTION_HANDLER_INDEX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CallOptionHandler"


# instance fields
.field protected mCallOptionHandlerFactory:Lcom/mediatek/calloption/CallOptionHandlerFactory;

.field protected mCallOptionHandlerList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/calloption/CallOptionBaseHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mediatek/calloption/CallOptionHandlerFactory;)V
    .locals 2
    .param p1, "callOptionHandlerFactory"    # Lcom/mediatek/calloption/CallOptionHandlerFactory;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerFactory:Lcom/mediatek/calloption/CallOptionHandlerFactory;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    .line 28
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getFirstCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 29
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getEmergencyCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getInternetCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 31
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getVideoCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getSimSelectionCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getSimStatusCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getVoiceMailCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getIpCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getFinalCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "CallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method


# virtual methods
.method public dismissDialogs()V
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 64
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/mediatek/calloption/CallOptionBaseHandler;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->dismissDialog()V

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method

.method public doCallOptionHandle(Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZ)V
    .locals 13
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "applicationContext"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "resultHandler"    # Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;
    .param p5, "cellConnMgr"    # Lcom/mediatek/CellConnService/CellConnMgr;
    .param p6, "telephonyInterface"    # Lcom/android/internal/telephony/ITelephony;
    .param p7, "isMultipleSim"    # Z
    .param p8, "is3GSwitchSupport"    # Z

    .prologue
    .line 48
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v11

    .line 49
    .local v11, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/mediatek/calloption/CallOptionBaseHandler;>;"
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 50
    .local v12, "previousHandler":Lcom/mediatek/calloption/CallOptionBaseHandler;
    :goto_0
    invoke-interface {v11}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    invoke-interface {v11}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 52
    .local v10, "currentHandler":Lcom/mediatek/calloption/CallOptionBaseHandler;
    invoke-virtual {v12, v10}, Lcom/mediatek/calloption/CallOptionBaseHandler;->setSuccessor(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 53
    move-object v12, v10

    .line 54
    goto :goto_0

    .line 56
    .end local v10    # "currentHandler":Lcom/mediatek/calloption/CallOptionBaseHandler;
    :cond_0
    new-instance v0, Lcom/mediatek/calloption/Request;

    iget-object v9, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerFactory:Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/mediatek/calloption/Request;-><init>(Landroid/content/Context;Landroid/content/Context;Landroid/content/Intent;Lcom/mediatek/calloption/CallOptionBaseHandler$ICallOptionResultHandle;Lcom/mediatek/CellConnService/CellConnMgr;Lcom/android/internal/telephony/ITelephony;ZZLcom/mediatek/calloption/CallOptionHandlerFactory;)V

    .line 59
    .local v0, "request":Lcom/mediatek/calloption/Request;
    iget-object v1, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/calloption/CallOptionBaseHandler;

    invoke-virtual {v1, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 60
    return-void
.end method

.method public updateSimStatusIndicatorProgressDialog()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandler;->mCallOptionHandlerList:Ljava/util/LinkedList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/calloption/SimStatusCallOptionHandler;

    invoke-virtual {v0}, Lcom/mediatek/calloption/SimStatusCallOptionHandler;->showProgressDialogIfNeeded()V

    .line 78
    return-void
.end method
