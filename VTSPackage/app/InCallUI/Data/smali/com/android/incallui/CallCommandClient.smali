.class public Lcom/android/incallui/CallCommandClient;
.super Ljava/lang/Object;
.source "CallCommandClient.java"


# static fields
.field private static sInstance:Lcom/android/incallui/CallCommandClient;


# instance fields
.field private mCommandService:Lcom/android/services/telephony/common/ICallCommandService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/CallCommandClient;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lcom/android/incallui/CallCommandClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/CallCommandClient;->sInstance:Lcom/android/incallui/CallCommandClient;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/android/incallui/CallCommandClient;

    invoke-direct {v0}, Lcom/android/incallui/CallCommandClient;-><init>()V

    sput-object v0, Lcom/android/incallui/CallCommandClient;->sInstance:Lcom/android/incallui/CallCommandClient;

    .line 41
    :cond_0
    sget-object v0, Lcom/android/incallui/CallCommandClient;->sInstance:Lcom/android/incallui/CallCommandClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public acceptIncomingCallByVoiceCommand(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 751
    const-string v1, "acceptIncomingCallByVoiceCommand(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    :goto_0
    return-void

    .line 755
    :cond_0
    :try_start_0
    const-string v1, "acceptIncomingCallByVoiceCommand()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->acceptIncomingCallByVoiceCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on acceptIncomingCallByVoiceCommand()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public acceptVtCallWithVoiceOnly()V
    .locals 2

    .prologue
    .line 602
    const-string v1, "acceptVtCallWithVoiceOnly()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 604
    const-string v1, "Cannot call acceptVtCallWithVoiceOnly(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    :goto_0
    return-void

    .line 608
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->acceptVtCallWithVoiceOnly()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error when acceptVtCallWithVoiceOnly()."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public addCall()V
    .locals 2

    .prologue
    .line 159
    const-string v1, "add a new call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 161
    const-string v1, "Cannot add call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    :goto_0
    return-void

    .line 165
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->addCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error merging calls."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public answerCall(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "answerCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 56
    const-string v1, "Cannot answer call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->answerCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error answering call."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public canDecBrightness()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public canDecContrast()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public canDecZoom()Z
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public canIncBrightness()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method public canIncContrast()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public canIncZoom()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public clearVoiceCommandHandler()V
    .locals 2

    .prologue
    .line 737
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 738
    const-string v1, "clearVoiceCommandHandler(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 747
    :goto_0
    return-void

    .line 742
    :cond_0
    :try_start_0
    const-string v1, "clearVoiceCommandHandler()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->clearVoiceCommandHandler()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on clearVoiceCommandHandler()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decBrightness()V
    .locals 2

    .prologue
    .line 455
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 456
    const-string v1, "Cannot decBrightness(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    :goto_0
    return-void

    .line 460
    :cond_0
    :try_start_0
    const-string v1, "decBrightness()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->decBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on decBrightness()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decContrast()V
    .locals 2

    .prologue
    .line 481
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 482
    const-string v1, "Cannot decContrast(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_0
    const-string v1, "decContrast()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->decContrast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on decContrast()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public decZoom()V
    .locals 2

    .prologue
    .line 416
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 417
    const-string v1, "Cannot decZoom(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 421
    :cond_0
    :try_start_0
    const-string v1, "decZoom()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->decZoom()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on decZoom()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disconnectCall(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect Call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 83
    const-string v1, "Cannot disconnect call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->disconnectCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error disconnecting call."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 2

    .prologue
    .line 642
    const-string v1, "explicitCallTransfer"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 644
    const-string v1, "Cannot explicit call transfer; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    :goto_0
    return-void

    .line 648
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->explicitCallTransfer()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error explicit call transfer."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getColorEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string v0, ""

    return-object v0
.end method

.method public getService()Lcom/android/services/telephony/common/ICallCommandService;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVTState()I
    .locals 1

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoQuality()I
    .locals 1

    .prologue
    .line 510
    const/4 v0, 0x1

    return v0
.end method

.method public hangupActiveAndAnswerWaiting()V
    .locals 2

    .prologue
    .line 629
    const-string v1, "hangupActiveAndAnswerWaiting"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 631
    const-string v1, "Cannot hangup active call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    :goto_0
    return-void

    .line 635
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->hangupActiveAndAnswerWaiting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error hangup active call."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hangupAllCalls()V
    .locals 2

    .prologue
    .line 576
    const-string v1, "hangupAllCalls"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 578
    const-string v1, "Cannot hangup all calls; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 586
    :goto_0
    return-void

    .line 582
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->hangupAllCalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error hangup all calls."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hangupHoldingCall()V
    .locals 2

    .prologue
    .line 589
    const-string v1, "hangupHoldingCall"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 591
    const-string v1, "Cannot hangup holding calls; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    :goto_0
    return-void

    .line 595
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->hangupHoldingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error hangup holding calls."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hideLocal(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 682
    const-string v1, "Cannot hideLocal(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void

    .line 686
    :cond_0
    :try_start_0
    const-string v1, "hideLocal()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->hideLocal(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on hideLocal()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hold(IZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "onOff"    # Z

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hold call("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 122
    const-string v1, "Cannot hold call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->hold(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error holding call."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public incBrightness()V
    .locals 2

    .prologue
    .line 442
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 443
    const-string v1, "Cannot incBrightness(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    :goto_0
    return-void

    .line 447
    :cond_0
    :try_start_0
    const-string v1, "incBrightness()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->incBrightness()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on incBrightness()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public incContrast()V
    .locals 2

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 469
    const-string v1, "Cannot incContrast(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    :goto_0
    return-void

    .line 473
    :cond_0
    :try_start_0
    const-string v1, "incContrast()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->incContrast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on incContrast()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public incZoom()V
    .locals 2

    .prologue
    .line 429
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 430
    const-string v1, "Cannot incZoom(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    :try_start_0
    const-string v1, "incZoom()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->incZoom()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on incZoom()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isNightMode()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportNightMode()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public lockPeerVideo()V
    .locals 2

    .prologue
    .line 364
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 365
    const-string v1, "Cannot lockPeerVideo(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    :try_start_0
    const-string v1, "lockPeerVideo()... "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->lockPeerVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on lockPeerVideo()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public merge()V
    .locals 2

    .prologue
    .line 133
    const-string v1, "merge calls"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 135
    const-string v1, "Cannot merge call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->merge()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error merging calls."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public mute(Z)V
    .locals 3
    .param p1, "onOff"    # Z

    .prologue
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 109
    const-string v1, "Cannot mute call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->mute(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error muting phone."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 881
    invoke-static {p1}, Lcom/mediatek/incallui/InCallUtils;->onUiShowing(Z)V

    .line 883
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 884
    const-string v1, "Cannot onUiShowing(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    :goto_0
    return-void

    .line 889
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUIShowing, show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->onUiShowing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on onUiShowing"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserInput(Ljava/lang/String;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 804
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 805
    const-string v1, "Cannot onUserInput(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    :goto_0
    return-void

    .line 810
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserInput()... input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->onUserInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v0

    .line 813
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on onUserInput()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public playDtmfTone(CZ)V
    .locals 3
    .param p1, "digit"    # C
    .param p2, "timedShortTone"    # Z

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 186
    const-string v1, "Cannot start dtmf tone; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending dtmf tone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->playDtmfTone(CZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error setting speaker."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public postDialCancel(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 226
    const-string v1, "Cannot postDialCancel(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 230
    :cond_0
    :try_start_0
    const-string v1, "postDialCancel()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->postDialCancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on postDialCancel()."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public postDialWaitContinue(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 213
    const-string v1, "Cannot postDialWaitContinue(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_0
    :try_start_0
    const-string v1, "postDialWaitContinue()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->postDialWaitContinue(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on postDialWaitContinue()."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rejectCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", with rejectMessage? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 70
    const-string v1, "Cannot reject call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/services/telephony/common/ICallCommandService;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error rejecting call."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public restartRinger()V
    .locals 2

    .prologue
    .line 790
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 791
    const-string v1, "Cannot restartRinger(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    :goto_0
    return-void

    .line 796
    :cond_0
    :try_start_0
    const-string v1, "restartRinger()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->restartRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 798
    :catch_0
    move-exception v0

    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on restartRinger()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public savePeerPhoto()V
    .locals 2

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 669
    const-string v1, "Cannot savePeerPhoto(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    :goto_0
    return-void

    .line 673
    :cond_0
    :try_start_0
    const-string v1, "savePeerPhoto()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->savePeerPhoto()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on savePeerPhoto()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public secondaryHoldPhotoClicked()V
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 833
    const-string v1, "Cannot secondaryHoldPhotoClicked(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 843
    :goto_0
    return-void

    .line 838
    :cond_0
    :try_start_0
    const-string v1, "secondaryHoldPhotoClicked()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 839
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->secondaryHoldPhotoClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 840
    :catch_0
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on secondaryHoldPhotoClicked()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public secondaryPhotoClicked()V
    .locals 2

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 819
    const-string v1, "Cannot secondaryPhotoClicked(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    :goto_0
    return-void

    .line 824
    :cond_0
    :try_start_0
    const-string v1, "secondaryPhotoClicked()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->secondaryPhotoClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on secondaryPhotoClicked()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public separateCall(I)V
    .locals 3
    .param p1, "callId"    # I

    .prologue
    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "separate Call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 96
    const-string v1, "Cannot separate call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->separateCall(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error separating call."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Audio Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 174
    const-string v1, "Cannot set audio mode; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setAudioMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error setting speaker."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 3
    .param p1, "colorEffect"    # Ljava/lang/String;

    .prologue
    .line 514
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 515
    const-string v1, "Cannot incZoom(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 519
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setColorEffect()... colorEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setColorEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setColorEffect()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 3
    .param p1, "local"    # Landroid/view/Surface;
    .param p2, "peer"    # Landroid/view/Surface;

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 322
    const-string v1, "Cannot setDisplay(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 326
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisplay() local = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", peer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setDisplay()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocalView(ILjava/lang/String;)V
    .locals 0
    .param p1, "videoType"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 503
    return-void
.end method

.method public setNightMode(Z)V
    .locals 3
    .param p1, "isOnNight"    # Z

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 339
    const-string v1, "Cannot setNightMode(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNightMode() isOnNight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setNightMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setNightMode()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setService(Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/services/telephony/common/ICallCommandService;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    .line 51
    return-void
.end method

.method public setSystemBarNavigationEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 239
    const-string v1, "Cannot setSystemBarNavigationEnabled(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSystemBarNavigationEnabled() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setSystemBarNavigationEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setSystemBarNavigationEnabled()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setUpVoiceCommandService()V
    .locals 2

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 712
    const-string v1, "setUpVoiceCommandService(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    :goto_0
    return-void

    .line 716
    :cond_0
    :try_start_0
    const-string v1, "setUpVoiceCommandService()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->setUpVoiceCommandService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setUpVoiceCommandService()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVTClose()V
    .locals 2

    .prologue
    .line 291
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 292
    const-string v1, "Cannot setVTClose(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void

    .line 296
    :cond_0
    :try_start_0
    const-string v1, "setVTClose()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->setVTClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setVTClose()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVTConnected()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 279
    const-string v1, "Cannot setVTConnected(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    :try_start_0
    const-string v1, "setVTConnected()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->setVTConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setVTConnected()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVTOpen(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 253
    const-string v1, "Cannot setVTOpen(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void

    .line 257
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTOpen() slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setVTOpen(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setVTOpen()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVTReady()V
    .locals 2

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 266
    const-string v1, "Cannot setVTReady(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 270
    :cond_0
    :try_start_0
    const-string v1, "setVTReady()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->setVTReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setVTReady()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVTVisible(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 309
    const-string v1, "Cannot setVTVisible(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 313
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTVisible() isVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setVTVisible(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setVTVisible()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVTVoiceAnswerRelated(ZLjava/lang/String;)V
    .locals 3
    .param p1, "vtVoiceAnswer"    # Z
    .param p2, "vtVoiceAnswerPhoneNumber"    # Ljava/lang/String;

    .prologue
    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVTVoiceAnswerRelated()... vtVoiceAnswer / vtVoiceAnswerPhoneNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 618
    const-string v1, "Cannot call setVTVoiceAnswerRelated(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void

    .line 622
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2}, Lcom/android/services/telephony/common/ICallCommandService;->setVTVoiceAnswerRelated(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error when setVTVoiceAnswerRelated()."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setVideoQuality(I)V
    .locals 3
    .param p1, "quality"    # I

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 352
    const-string v1, "Cannot setVideoQuality(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 356
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoQuality() quality = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->setVideoQuality(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on setVideoQuality()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public silenceRinger()V
    .locals 2

    .prologue
    .line 776
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 777
    const-string v1, "Cannot silenceRinger(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    :goto_0
    return-void

    .line 782
    :cond_0
    :try_start_0
    const-string v1, "silenceRinger()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 783
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->silenceRinger()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v0

    .line 785
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on silenceRinger()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startVoiceRecording(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 563
    const-string v1, "startVoiceRecording"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 565
    const-string v1, "Cannot start voice record; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    :goto_0
    return-void

    .line 569
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->startVoiceRecording(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error start voice record."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startVtRecording(IJ)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "maxSize"    # J

    .prologue
    .line 536
    const-string v1, "startVtRecording"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 538
    const-string v1, "Cannot start vt record; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    :goto_0
    return-void

    .line 543
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/services/telephony/common/ICallCommandService;->startVtRecording(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error start voice record."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 199
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 200
    const-string v1, "Cannot stop dtmf tone; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void

    .line 204
    :cond_0
    :try_start_0
    const-string v1, "Stop dtmf tone "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->stopDtmfTone()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error setting speaker."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stopRecording()V
    .locals 2

    .prologue
    .line 550
    const-string v1, "stopRecording"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 552
    const-string v1, "Cannot stop record; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    :goto_0
    return-void

    .line 556
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->stopRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error start voice record."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public stopVoiceCommand()V
    .locals 2

    .prologue
    .line 724
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 725
    const-string v1, "stopVoiceCommand(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    :goto_0
    return-void

    .line 729
    :cond_0
    :try_start_0
    const-string v1, "stopVoiceCommand()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->stopVoiceCommand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on stopVoiceCommand()()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public swap()V
    .locals 2

    .prologue
    .line 146
    const-string v1, "swap active/hold calls"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 148
    const-string v1, "Cannot swap call; CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 152
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->swap()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error merging calls."

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public switchCalls()V
    .locals 2

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 861
    const-string v1, "Cannot switchCalls(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 871
    :goto_0
    return-void

    .line 866
    :cond_0
    :try_start_0
    const-string v1, "switchCalls()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 867
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->switchCalls()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on switchCalls()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 656
    const-string v1, "Cannot switchCamera(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 660
    :cond_0
    :try_start_0
    const-string v1, "switchCamera()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on switchCamera()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchDisplaySurface()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public switchRingtoneForDualTalk()V
    .locals 2

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 847
    const-string v1, "Cannot switchRingtoneForDualTalk(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    :goto_0
    return-void

    .line 852
    :cond_0
    :try_start_0
    const-string v1, "switchRingtoneForDualTalk()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->switchRingtoneForDualTalk()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on switchRingtoneForDualTalk()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unlockPeerVideo()V
    .locals 2

    .prologue
    .line 378
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 379
    const-string v1, "Cannot unlockPeerVideo(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 384
    :cond_0
    :try_start_0
    const-string v1, "unlockPeerVideo()... "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->unlockPeerVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on unlockPeerVideo()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePicToReplaceLocalVideo()V
    .locals 2

    .prologue
    .line 694
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 695
    const-string v1, "Cannot updatePicToReplaceLocalVideo(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    :goto_0
    return-void

    .line 699
    :cond_0
    :try_start_0
    const-string v1, "hideLocal()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->updatePicToReplaceLocalVideo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on updatePicToReplaceLocalVideo()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updatePowerForSmartBook(Z)V
    .locals 3
    .param p1, "onOff"    # Z

    .prologue
    .line 901
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 902
    const-string v1, "Cannot updatePowerForSmartBook(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 912
    :goto_0
    return-void

    .line 907
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePowerForSmartBook()... onOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1, p1}, Lcom/android/services/telephony/common/ICallCommandService;->updatePowerForSmartBook(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on updatePowerForSmartBook()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateVoiceCommand()V
    .locals 2

    .prologue
    .line 763
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    if-nez v1, :cond_0

    .line 764
    const-string v1, "updateVoiceCommand(); CallCommandService == null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 773
    :goto_0
    return-void

    .line 768
    :cond_0
    :try_start_0
    const-string v1, "updateVoiceCommand()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/android/incallui/CallCommandClient;->mCommandService:Lcom/android/services/telephony/common/ICallCommandService;

    invoke-interface {v1}, Lcom/android/services/telephony/common/ICallCommandService;->updateVoiceCommand()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Error on updateVoiceCommand()."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
