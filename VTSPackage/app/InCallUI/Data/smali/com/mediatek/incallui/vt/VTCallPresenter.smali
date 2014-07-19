.class public Lcom/mediatek/incallui/vt/VTCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VTCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;
.implements Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;",
        "Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;"
    }
.end annotation


# instance fields
.field private mIsUIReady:Z

.field private mPrimaryCall:Lcom/android/services/telephony/common/Call;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    .line 35
    return-void
.end method

.method private onVTReady()V
    .locals 3

    .prologue
    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVTReady()...mIsUIReady / VTManagerLocal.getState(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-boolean v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v1

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-ne v1, v2, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .line 205
    .local v0, "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    if-eqz v0, :cond_0

    .line 206
    const-string v1, "Call ui.onVTReady()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->onVTReady()V

    .line 210
    .end local v0    # "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    :cond_0
    return-void
.end method

.method private startVTManagerCounter(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 215
    const-string v0, "startVTManagerCounter()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->startVTCallTimer()V

    .line 217
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 218
    if-eqz p1, :cond_0

    .line 219
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 223
    :cond_0
    return-void
.end method

.method private updateVoiceCallRecordState(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 232
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVoiceCallRecordState... state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "ringCall":Lcom/android/services/telephony/common/Call;
    const/4 v1, -0x1

    .line 235
    .local v1, "ringCallState":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .line 240
    .local v2, "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    if-ne v6, p1, :cond_3

    if-eq v1, v7, :cond_3

    if-eq v1, v8, :cond_3

    .line 245
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v3, v6}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->showRecord(Z)V

    goto :goto_0

    .line 246
    :cond_3
    if-nez p1, :cond_4

    .line 247
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v3, v5}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->showRecord(Z)V

    goto :goto_0

    .line 248
    :cond_4
    if-eq v1, v7, :cond_5

    if-ne v1, v8, :cond_1

    .line 250
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v3, v5}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->showRecord(Z)V

    goto :goto_0
.end method


# virtual methods
.method public answerVTCallPre()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "answerVTCallPre()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->answerVTCallPre()V

    .line 171
    :cond_0
    return-void
.end method

.method public dialVTCallSuccess()V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "dialVTCallSuccess()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->dialVTCallSuccess()V

    .line 179
    :cond_0
    return-void
.end method

.method public endCallClicked()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 101
    const-string v0, "endCallClicked but mCall is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0
.end method

.method public init(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    .line 89
    return-void
.end method

.method public isIncomingCall()Z
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "isMT":Z
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v1}, Lcom/mediatek/incallui/InCallUtils;->isIncomingCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 128
    :cond_0
    const-string v1, "mPrimaryCall is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 96
    iput-object p2, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    .line 97
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 0
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 92
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 28
    check-cast p1, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onUiReady(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 60
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 61
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 64
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->addVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    .line 67
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onVTReady()V

    .line 69
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->updateVoiceCallRecordState(I)V

    .line 70
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addPhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 28
    check-cast p1, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onUiUnready(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 80
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 83
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->removeVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mIsUIReady:Z

    .line 85
    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->updateVoiceCallRecordState(I)V

    .line 229
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 3
    .param p1, "msgVT"    # I

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVTStateChanged()... msgVT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    .line 139
    .local v0, "ui":Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    if-nez v0, :cond_0

    .line 140
    const-string v1, "UI is not ready when onVTStateChanged(), just return."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 144
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 146
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->onVTReady()V

    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->startVTManagerCounter(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 157
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v1}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->onVTReceiveFirstFrame()V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method startVoiceRecording()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallPresenter;->mPrimaryCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->startVoiceRecording(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method startVtRecording(IJ)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "maxSize"    # J

    .prologue
    .line 109
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/incallui/CallCommandClient;->startVtRecording(IJ)V

    .line 110
    return-void
.end method

.method stopRecording()V
    .locals 1

    .prologue
    .line 120
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->stopRecording()V

    .line 121
    return-void
.end method

.method public updateVTCallButton()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public updateVTCallFragment()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    const-string v0, "updateVTCallFragment()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    invoke-interface {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;->updateVTScreen()V

    .line 187
    :cond_0
    return-void
.end method
