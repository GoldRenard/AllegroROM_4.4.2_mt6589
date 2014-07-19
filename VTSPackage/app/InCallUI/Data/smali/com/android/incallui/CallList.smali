.class public Lcom/android/incallui/CallList;
.super Ljava/lang/Object;
.source "CallList.java"

# interfaces
.implements Lcom/mediatek/incallui/ext/IInCallScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallList$2;,
        Lcom/android/incallui/CallList$CallUpdateListener;,
        Lcom/android/incallui/CallList$Listener;
    }
.end annotation


# static fields
.field private static final DISCONNECTED_CALL_LONG_TIMEOUT_MS:I = 0x1388

.field private static final DISCONNECTED_CALL_MEDIUM_TIMEOUT_MS:I = 0x7d0

.field private static final DISCONNECTED_CALL_SHORT_TIMEOUT_MS:I = 0xc8

.field private static final EVENT_DISCONNECTED_TIMEOUT:I = 0x1

.field private static sInstance:Lcom/android/incallui/CallList;


# instance fields
.field private final mCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallTextReponsesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallUpdateListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/CallList$CallUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInComingCallList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/CallList$Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/incallui/CallList;

    invoke-direct {v0}, Lcom/android/incallui/CallList;-><init>()V

    sput-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    .line 62
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    .line 64
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    .line 65
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    .line 479
    new-instance v0, Lcom/android/incallui/CallList$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallList$1;-><init>(Lcom/android/incallui/CallList;)V

    iput-object v0, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallList;
    .param p1, "x1"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V

    return-void
.end method

.method private addIncomingCallForDualtalk(Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 594
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v0, v0, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getHasMultipleRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addIncomingCall; mInComingCallList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 600
    :cond_0
    return-void
.end method

.method private finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 471
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 472
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 473
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 474
    return-void
.end method

.method private getDelayForDisconnect(Lcom/android/services/telephony/common/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 425
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v0

    .line 427
    .local v0, "cause":Lcom/android/services/telephony/common/Call$DisconnectCause;
    sget-object v2, Lcom/android/incallui/CallList$2;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 441
    const/16 v1, 0x1388

    .line 445
    .local v1, "delay":I
    :goto_1
    return v1

    .line 422
    .end local v0    # "cause":Lcom/android/services/telephony/common/Call$DisconnectCause;
    .end local v1    # "delay":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 429
    .restart local v0    # "cause":Lcom/android/services/telephony/common/Call$DisconnectCause;
    :pswitch_0
    const/16 v1, 0xc8

    .line 430
    .restart local v1    # "delay":I
    goto :goto_1

    .line 433
    .end local v1    # "delay":I
    :pswitch_1
    const/16 v1, 0x7d0

    .line 434
    .restart local v1    # "delay":I
    goto :goto_1

    .line 438
    .end local v1    # "delay":I
    :pswitch_2
    const/4 v1, 0x0

    .line 439
    .restart local v1    # "delay":I
    goto :goto_1

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/incallui/CallList;->sInstance:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method private initIncomingCallListForDualtalk()V
    .locals 3

    .prologue
    .line 603
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 604
    const-string v2, "initIncomingCallListForDualtalk; mCallMap is null."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v2, v2, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    invoke-virtual {v2}, Lcom/android/services/telephony/common/DualtalkCallInfo;->getHasMultipleRingingCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 609
    const-string v2, "initIncomingCallListForDualtalk; only one incoming call and no need do this."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 612
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    .line 613
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 614
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 615
    iget-object v2, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private isCallDead(Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v1, 0x1

    .line 463
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    .line 464
    .local v0, "state":I
    if-eq v1, v0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyListenersOfChange()V
    .locals 3

    .prologue
    .line 374
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 375
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 377
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 380
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 381
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onDisconnect(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 383
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method private updateCallInMap(Lcom/android/services/telephony/common/Call;)Z
    .locals 6
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 390
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const/4 v2, 0x0

    .line 394
    .local v2, "updated":Z
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 396
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 398
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    iget-object v3, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 405
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/incallui/CallList;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->getDelayForDisconnect(Lcom/android/services/telephony/common/Call;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 407
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const/4 v2, 0x1

    .line 418
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const/4 v2, 0x1

    goto :goto_0

    .line 413
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 453
    .local v0, "id":Ljava/lang/Integer;
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    if-eqz p2, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 457
    .restart local p2    # "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 188
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-nez v0, :cond_0

    .line 189
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public addListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 209
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {p1, p0}, Lcom/android/incallui/CallList$Listener;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 215
    return-void
.end method

.method public clearDisconnectStateForVT()V
    .locals 3

    .prologue
    .line 622
    const-string v2, "clearDisconnectVTCall()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 624
    .local v1, "disconnectingCall":Lcom/android/services/telephony/common/Call;
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 625
    .local v0, "disconnectedCall":Lcom/android/services/telephony/common/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    invoke-direct {p0, v1}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V

    .line 628
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->finishDisconnectedCall(Lcom/android/services/telephony/common/Call;)V

    .line 631
    :cond_1
    return-void
.end method

.method public clearOnDisconnect()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 355
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 356
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 357
    .local v2, "state":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    if-eqz v2, :cond_0

    if-eq v2, v4, :cond_0

    .line 361
    invoke-virtual {v0, v4}, Lcom/android/services/telephony/common/Call;->setState(I)V

    .line 362
    sget-object v3, Lcom/android/services/telephony/common/Call$DisconnectCause;->UNKNOWN:Lcom/android/services/telephony/common/Call$DisconnectCause;

    invoke-virtual {v0, v3}, Lcom/android/services/telephony/common/Call;->setDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)V

    .line 363
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    goto :goto_0

    .line 366
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "state":I
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 367
    return-void
.end method

.method public existsLiveCall()Z
    .locals 3

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 309
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->isCallDead(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    const/4 v2, 0x1

    .line 313
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getActiveCallWithPhoneType(I)Lcom/android/services/telephony/common/Call;
    .locals 4
    .param p1, "phoneType"    # I

    .prologue
    .line 567
    iget-object v2, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 568
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 572
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 265
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 268
    :cond_0
    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCall(I)Lcom/android/services/telephony/common/Call;
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getCallMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/services/telephony/common/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCallWithState(II)Lcom/android/services/telephony/common/Call;
    .locals 5
    .param p1, "state"    # I
    .param p2, "positionToFind"    # I

    .prologue
    .line 332
    const/4 v3, 0x0

    .line 333
    .local v3, "retval":Lcom/android/services/telephony/common/Call;
    const/4 v2, 0x0

    .line 334
    .local v2, "position":I
    iget-object v4, p0, Lcom/android/incallui/CallList;->mCallMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 335
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 336
    if-lt v2, p2, :cond_2

    .line 337
    move-object v3, v0

    .line 345
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_1
    return-object v3

    .line 340
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCdmaActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getActiveCallWithPhoneType(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectedCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 252
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getDisconnectingCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 256
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFirstCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 288
    .local v0, "result":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 291
    :cond_0
    if-nez v0, :cond_1

    .line 292
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 294
    :cond_1
    if-nez v0, :cond_2

    .line 295
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 297
    :cond_2
    if-nez v0, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 300
    :cond_3
    return-object v0
.end method

.method public getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 324
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGsmActiveCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->getActiveCallWithPhoneType(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 3

    .prologue
    .line 272
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 273
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 274
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 277
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 283
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_1
    return-object v0
.end method

.method public getIncomingOrActive()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 229
    .local v0, "retval":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 232
    :cond_0
    return-object v0
.end method

.method public getOutgoingCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 236
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 237
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_0

    .line 238
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 240
    :cond_0
    return-object v0
.end method

.method public getSecondBackgroundCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 260
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/CallList;->getCallWithState(II)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 586
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 590
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextResponses(I)Ljava/util/ArrayList;
    .locals 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/incallui/CallList;->mCallTextReponsesMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public isGsmPhoneFirst()Z
    .locals 1

    .prologue
    .line 563
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getGsmActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 172
    iget-object v3, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 173
    .local v2, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v2, :cond_0

    .line 174
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$CallUpdateListener;

    .line 175
    .local v1, "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$CallUpdateListener;->onCallStateChanged(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 178
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/incallui/CallList$CallUpdateListener;
    :cond_0
    return-void
.end method

.method public onDisconnect(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 100
    const-string v1, "onDisconnect: "

    invoke-static {p0, v1, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    invoke-direct {p0, p2}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    .line 104
    .local v0, "updated":Z
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V

    .line 109
    invoke-direct {p0, p2}, Lcom/android/incallui/CallList;->notifyListenersOfDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 112
    invoke-static {p2}, Lcom/mediatek/incallui/vt/VTUtils;->isVTCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/mediatek/incallui/InCallUtils;->isIncomingCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTAutoDropBack:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-static {p1, p2}, Lcom/mediatek/incallui/vt/VTUtils;->handleAutoDropBack(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "textMessages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onIncoming - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    .line 129
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 130
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1}, Lcom/android/incallui/CallList$Listener;->onIncomingCall(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 134
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/android/incallui/CallList;->initIncomingCallListForDualtalk()V

    .line 138
    :cond_1
    return-void
.end method

.method public onStorageFull()V
    .locals 3

    .prologue
    .line 535
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 536
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1}, Lcom/android/incallui/CallList$Listener;->onStorageFull()V

    goto :goto_0

    .line 538
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 549
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onSuppServiceFailed(Ljava/lang/String;)V

    .line 550
    return-void
.end method

.method public onUpdate(Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 86
    const-string v0, "onUpdate - "

    invoke-static {p0, v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 89
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 90
    return-void
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "callsToUpdate":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    const-string v2, "onUpdate(...)"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/CallList;->mInComingCallList:Ljava/util/List;

    .line 152
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCommandClient;->updateVoiceCommand()V

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/Call;

    .line 154
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->updateCallInMap(Lcom/android/services/telephony/common/Call;)Z

    .line 157
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/incallui/CallList;->updateCallTextMap(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    .line 160
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lcom/android/incallui/CallList;->addIncomingCallForDualtalk(Lcom/android/services/telephony/common/Call;)V

    .line 165
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallList;->notifyCallUpdateListeners(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 168
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 169
    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 541
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateRecordState: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;customValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-static {p1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->updateRecorderState(I)V

    .line 543
    iget-object v2, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallList$Listener;

    .line 544
    .local v1, "listener":Lcom/android/incallui/CallList$Listener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/CallList$Listener;->onUpdateRecordState(II)V

    goto :goto_0

    .line 546
    .end local v1    # "listener":Lcom/android/incallui/CallList$Listener;
    :cond_0
    return-void
.end method

.method public removeCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "listener"    # Lcom/android/incallui/CallList$CallUpdateListener;

    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/incallui/CallList;->mCallUpdateListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 203
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/CallList$CallUpdateListener;>;"
    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 206
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/CallList$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/CallList$Listener;

    .prologue
    .line 218
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/android/incallui/CallList;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 220
    return-void
.end method

.method public requestUpdateScreen()V
    .locals 0

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/incallui/CallList;->notifyListenersOfChange()V

    .line 555
    return-void
.end method
