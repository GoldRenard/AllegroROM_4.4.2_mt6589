.class public Lcom/android/incallui/DialpadPresenter;
.super Lcom/android/incallui/Presenter;
.source "DialpadPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadPresenter$DialpadUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;"
    }
.end annotation


# instance fields
.field private mCall:Lcom/android/services/telephony/common/Call;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 207
    return-void
.end method

.method private processDtmfForVtIfNeeded(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 225
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDtmfForVtIfNeeded()... c: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->onUserInput(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method


# virtual methods
.method public endCallClicked()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endCallClicked mCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 166
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getSupportedAudio()I
    .locals 1

    .prologue
    .line 170
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public hideDialpadClicked()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->displayDialpad(Z)V

    .line 146
    return-void
.end method

.method public onAudioMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->setAudio(I)V

    .line 153
    :cond_0
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 157
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 58
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    .line 59
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 60
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->displayDialpad(Z)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_2

    .line 64
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStateChange]state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->displayDialpad(Z)V

    goto :goto_0

    .line 76
    :cond_2
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_4

    .line 78
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->displayDialpad(Z)V

    .line 82
    :cond_3
    iput-object v3, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0

    .line 84
    :cond_4
    iput-object v3, p0, Lcom/android/incallui/DialpadPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 85
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->displayDialpad(Z)V

    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->setSupportedAudio(I)V

    .line 164
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/DialpadPresenter$DialpadUi;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 42
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 43
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 45
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 33
    check-cast p1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadPresenter;->onUiReady(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/DialpadPresenter$DialpadUi;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 51
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 52
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 53
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 33
    check-cast p1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/DialpadPresenter;->onUiUnready(Lcom/android/incallui/DialpadPresenter$DialpadUi;)V

    return-void
.end method

.method public final processDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/DialpadPresenter;->processDtmf(CZ)V

    .line 101
    return-void
.end method

.method public final processDtmf(CZ)V
    .locals 2
    .param p1, "c"    # C
    .param p2, "timedShortTone"    # Z

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Processing dtmf key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadPresenter;->processDtmfForVtIfNeeded(C)V

    .line 119
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->appendDigitsToField(C)V

    .line 121
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/CallCommandClient;->playDtmfTone(CZ)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    .line 181
    return-void
.end method

.method public stopTone()V
    .locals 1

    .prologue
    .line 131
    const-string v0, "stopping remote tone"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->stopDtmfTone()V

    .line 133
    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 3

    .prologue
    .line 188
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0}, Lcom/android/incallui/DialpadPresenter;->getSupportedAudio()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter$DialpadUi;

    invoke-virtual {p0}, Lcom/android/incallui/DialpadPresenter;->getSupportedAudio()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/DialpadPresenter$DialpadUi;->setSupportedAudio(I)V

    .line 204
    :goto_0
    return-void

    .line 196
    :cond_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 199
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/DialpadPresenter;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v2, :cond_1

    .line 200
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 203
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/DialpadPresenter;->setAudioMode(I)V

    goto :goto_0
.end method
