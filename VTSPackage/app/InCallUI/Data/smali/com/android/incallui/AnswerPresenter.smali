.class public Lcom/android/incallui/AnswerPresenter;
.super Lcom/android/incallui/Presenter;
.source "AnswerPresenter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/incallui/CallList$CallUpdateListener;
.implements Lcom/android/incallui/CallList$Listener;
.implements Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerPresenter$AnswerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/CallList$CallUpdateListener;",
        "Lcom/android/incallui/CallList$Listener;",
        "Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;",
        "Landroid/hardware/SensorEventListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCall:Lcom/android/services/telephony/common/Call;

.field private mCallId:I

.field private mContext:Landroid/content/Context;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mReadyAll:Z

.field private mRejectCallNotifyMsg:Ljava/lang/String;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mVoiceUIShowMsg:Ljava/lang/String;

.field private mgCanPick:Z

.field private mgReady:Z

.field private mgSensor:Landroid/hardware/Sensor;

.field private mpCanPick:Z

.field private mpReady:Z

.field private mpSensor:Landroid/hardware/Sensor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    .line 57
    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 71
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mReadyAll:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mpReady:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mgReady:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mpCanPick:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/incallui/AnswerPresenter;->mgCanPick:Z

    .line 402
    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mVoiceUIShowMsg:Ljava/lang/String;

    .line 404
    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mRejectCallNotifyMsg:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerPresenter;
    .param p1, "x1"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/AnswerPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/AnswerPresenter;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerPresenter;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method private getCallStateLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "callStateLabel":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 327
    const v1, 0x7f0a0132

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_0
    :goto_0
    return-object v0

    .line 330
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const v1, 0x7f0a0281

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 522
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    const-string v0, ""

    .line 535
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSmartCallAnswerStatus()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "retVal":Z
    iget-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smart_call_answer"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 192
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retval is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    return v0

    :cond_0
    move v0, v2

    .line 191
    goto :goto_0
.end method

.method private inCarMode()Z
    .locals 1

    .prologue
    .line 617
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    return v0
.end method

.method private static isConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 539
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isGenericConference(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 543
    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "type"    # I

    .prologue
    .line 548
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeStartSearch, call =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, p2, v0}, Lcom/android/incallui/AnswerPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V

    .line 553
    :cond_0
    return-void

    .line 550
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 7
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    iput v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    .line 152
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 155
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget v4, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v1, v4, p0}, Lcom/android/incallui/CallList;->addCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V

    .line 157
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing incoming for call id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/CallList;->getTextResponses(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 161
    .local v0, "textMsgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->smartCallAnswerEnabled(Landroid/content/Context;)Z

    .line 163
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 165
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTextButton(Z)V

    .line 167
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/ArrayList;)V

    .line 172
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCall = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", context = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", number = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->updateCallerInfoPresentation()V

    .line 174
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v5

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 178
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/AnswerPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 179
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/AnswerPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    .line 187
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTextButton(Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 176
    goto :goto_1
.end method

.method private smartCallAnswerDisable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 231
    const-string v0, "smartCallAnswerEnabled: called with null context"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v0, "smartCallAnswerDisable:enter"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getSmartCallAnswerStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method private smartCallAnswerEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string v1, "smartCallAnswerEnabled: called with null context"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v2

    .line 227
    :goto_0
    return v1

    .line 201
    :cond_0
    const-string v1, "smartCallAnswerEnabled:enter"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->getSmartCallAnswerStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    :try_start_0
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 206
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mpSensor:Landroid/hardware/Sensor;

    .line 207
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mgSensor:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mpSensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v1, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 215
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mgSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 218
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mReadyAll:Z

    .line 219
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mpReady:Z

    .line 220
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mgReady:Z

    .line 222
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mpCanPick:Z

    .line 223
    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mgCanPick:Z

    move v1, v3

    .line 224
    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v2

    .line 210
    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 227
    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V
    .locals 2
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "type"    # I
    .param p3, "isIncoming"    # Z

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    .line 568
    .local v0, "cache":Lcom/android/incallui/ContactInfoCache;
    new-instance v1, Lcom/android/incallui/AnswerPresenter$1;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/AnswerPresenter$1;-><init>(Lcom/android/incallui/AnswerPresenter;I)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 599
    return-void
.end method

.method private updateCallerInfoPresentation()V
    .locals 3

    .prologue
    .line 477
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v1, v2}, Lcom/android/incallui/ContactInfoCache;->updateCallerInformation(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 479
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallerInfoPresentation entry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    if-eqz v0, :cond_0

    .line 481
    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 482
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/AnswerPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 485
    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    return-void
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 2
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "type"    # I
    .param p3, "isConference"    # Z

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateContactEntry, type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; entry = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 603
    invoke-direct {p0, p1, p3}, Lcom/android/incallui/AnswerPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 604
    return-void
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 19
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 487
    sget-object v5, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update primary display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .line 489
    .local v1, "ui":Lcom/android/incallui/AnswerPresenter$AnswerUi;
    if-nez v1, :cond_0

    .line 492
    sget-object v5, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v6, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_0
    return-void

    .line 496
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v5}, Lcom/android/incallui/AnswerPresenter;->isGenericConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v8

    .line 497
    .local v8, "isGenericConf":Z
    if-eqz p1, :cond_2

    .line 498
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/incallui/AnswerPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/AnswerPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 500
    .local v2, "number":Ljava/lang/String;
    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 501
    .local v4, "nameIsNumber":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    move/from16 v7, p2

    invoke-interface/range {v1 .. v10}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V

    goto :goto_0

    .line 500
    .end local v4    # "nameIsNumber":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 504
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v9, v1

    move/from16 v15, p2

    move/from16 v16, v8

    invoke-interface/range {v9 .. v18}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public acceptIncomingCallByVoiceCommand()V
    .locals 2

    .prologue
    .line 428
    const-string v0, "acceptIncomingCallByVoiceCommand()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->acceptIncomingCallByVoiceCommand(I)V

    .line 431
    return-void
.end method

.method public getIncomingCall()Lcom/android/services/telephony/common/Call;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getVoiceUIShowMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mVoiceUIShowMsg:Ljava/lang/String;

    return-object v0
.end method

.method public isVTCall()Z
    .locals 3

    .prologue
    .line 418
    const/4 v0, 0x0

    .line 419
    .local v0, "isVT":Z
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    .line 422
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVTCall()... mCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 245
    return-void
.end method

.method public onAnswer()V
    .locals 2

    .prologue
    .line 342
    iget v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAnswer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 122
    const-string v1, "[onCallListChange]"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 124
    .local v0, "incomingCall":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 125
    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onCallListChange], mCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->updatePromptsMessage(Z)V

    .line 130
    :cond_0
    return-void
.end method

.method public onCallStateChanged(Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCallStateChange() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 296
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V

    .line 299
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 301
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V

    .line 303
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/services/telephony/common/Call;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerPresenter;->smartCallAnswerDisable(Landroid/content/Context;)V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 314
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    goto :goto_0
.end method

.method public onDecline()V
    .locals 4

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDecline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 359
    :goto_0
    return-void

    .line 358
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/CallCommandClient;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 135
    return-void
.end method

.method public onDismissDialog()V
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 378
    return-void
.end method

.method public onIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onIncomingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    if-eq v0, v1, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/services/telephony/common/Call;)V

    .line 148
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 251
    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mReadyAll:Z

    if-nez v0, :cond_2

    .line 253
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mpSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/high16 v1, 0x3f800000

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mpReady:Z

    .line 258
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mgSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_1

    .line 259
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const/high16 v1, 0x41400000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mgReady:Z

    .line 263
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mpReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mgReady:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mReadyAll:Z

    const-string v0, "MyTag"

    const-string v1, "pass aaa"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mReadyAll:Z

    if-ne v0, v2, :cond_4

    .line 268
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mpSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_3

    .line 269
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8

    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mpCanPick:Z

    .line 273
    :cond_3
    :goto_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mgSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_4

    .line 274
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    const/high16 v1, 0x40a00000

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iput-boolean v2, p0, Lcom/android/incallui/AnswerPresenter;->mgCanPick:Z

    .line 280
    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mpCanPick:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/incallui/AnswerPresenter;->mgCanPick:Z

    if-eqz v0, :cond_5

    const-string v0, "MyTag"

    const-string v1, "all pass"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    .line 286
    :cond_5
    return-void

    .line 255
    :cond_6
    iput-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mpReady:Z

    goto :goto_0

    .line 260
    :cond_7
    iput-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mgReady:Z

    goto :goto_1

    .line 270
    :cond_8
    iput-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mpCanPick:Z

    goto :goto_2

    .line 275
    :cond_9
    iput-boolean v3, p0, Lcom/android/incallui/AnswerPresenter;->mgCanPick:Z

    goto :goto_3
.end method

.method public onStorageFull()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showMessageDialog()V

    .line 364
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->silenceRinger()V

    .line 366
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 5
    .param p1, "ui"    # Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 82
    sget-object v3, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    const-string v4, "onUiReady()..."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 84
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 87
    .local v1, "call":Lcom/android/services/telephony/common/Call;
    instance-of v3, p1, Landroid/app/Fragment;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 88
    check-cast v0, Landroid/app/Fragment;

    .line 89
    .local v0, "answerFragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    .line 93
    .end local v0    # "answerFragment":Landroid/app/Fragment;
    :cond_0
    if-eqz v1, :cond_1

    .line 94
    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall(Lcom/android/services/telephony/common/Call;)V

    .line 97
    :cond_1
    invoke-virtual {v2, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 98
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 50
    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiReady(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V
    .locals 4
    .param p1, "ui"    # Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 104
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 108
    iget v0, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    if-eq v0, v3, :cond_0

    .line 109
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/incallui/CallList;->removeCallUpdateListener(ILcom/android/incallui/CallList$CallUpdateListener;)V

    .line 112
    :cond_0
    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    .line 113
    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 114
    iput v3, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    .line 115
    iput-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 117
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 50
    check-cast p1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerPresenter;->onUiUnready(Lcom/android/incallui/AnswerPresenter$AnswerUi;)V

    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 415
    return-void
.end method

.method public processIncomingCall()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 620
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 621
    sget-object v1, Lcom/android/incallui/AnswerPresenter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Showing incoming for call id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/AnswerPresenter;->mCallId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/CallList;->getTextResponses(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 625
    .local v0, "textMsgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerPresenter;->smartCallAnswerEnabled(Landroid/content/Context;)Z

    .line 627
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 629
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTextButton(Z)V

    .line 631
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v0}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->configureMessageDialog(Ljava/util/ArrayList;)V

    .line 636
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCall = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", context = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", number = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/android/incallui/AnswerPresenter;->updateCallerInfoPresentation()V

    .line 638
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 640
    iget-object v4, p0, Lcom/android/incallui/AnswerPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v5

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v4, v5, v1}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrimaryContactInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-static {v2}, Lcom/android/incallui/AnswerPresenter;->isConference(Lcom/android/services/telephony/common/Call;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/incallui/AnswerPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 644
    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, v1, v3}, Lcom/android/incallui/AnswerPresenter;->maybeStartSearch(Lcom/android/services/telephony/common/Call;I)V

    .line 652
    .end local v0    # "textMsgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->restartRinger()V

    .line 653
    return-void

    .line 633
    .restart local v0    # "textMsgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showTextButton(Z)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 640
    goto :goto_1
.end method

.method public receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveVoiceCommandNotificationMessage(message)... + message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    if-eqz p1, :cond_0

    .line 444
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter;->mVoiceUIShowMsg:Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->showAnswerUi(Z)V

    .line 447
    :cond_0
    return-void
.end method

.method public rejectCallWithMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string v0, "sendTextToDefaultActivity()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/incallui/CallCommandClient;->rejectCall(Lcom/android/services/telephony/common/Call;ZLjava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 374
    return-void
.end method

.method public rejectIncomingCallByVoiceCommand()V
    .locals 1

    .prologue
    .line 436
    const-string v0, "rejectIncomingCallByVoiceCommand()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    .line 438
    return-void
.end method

.method public restartRinger()V
    .locals 2

    .prologue
    .line 460
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 461
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallCommandClient;->restartRinger()V

    .line 464
    :cond_0
    return-void
.end method

.method public setVoiceUIListener()V
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->getInstance()Lcom/mediatek/incallui/VoiceCommandUIUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->setListener(Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;)V

    .line 452
    return-void
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->silenceRinger()V

    .line 469
    return-void
.end method
