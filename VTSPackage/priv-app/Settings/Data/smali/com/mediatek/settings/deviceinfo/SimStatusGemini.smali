.class public Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final KEY_DATA_STATE:Ljava/lang/String; = "data_state"

.field private static final KEY_NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final KEY_NUMBER:Ljava/lang/String; = "number"

.field private static final KEY_OPERATOR_NAME:Ljava/lang/String; = "operator_name"

.field private static final KEY_ROAMING_STATE:Ljava/lang/String; = "roaming_state"

.field private static final KEY_SERVICE_STATE:Ljava/lang/String; = "service_state"

.field private static final KEY_SIGNAL_STRENGTH:Ljava/lang/String; = "signal_strength"

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Gemini_SimStatus"

.field private static sRes:Landroid/content/res/Resources;

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field private mHasSlotId:Z

.field private mIsShouldBeFinished:Z

.field private mIsUnlockFollow:Z

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceComplete:Ljava/lang/Runnable;

.field private mServiceState:I

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSignalStrengthPreference:Landroid/preference/Preference;

.field private mSimCount:I

.field private mSlotId:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 88
    iput-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 99
    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 100
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 101
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    .line 114
    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    .line 116
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    .line 138
    new-instance v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 470
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
    .param p1, "x1"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    .prologue
    .line 74
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    .prologue
    .line 74
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    return p1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "property"    # Ljava/lang/String;
    .param p3, "alt"    # Ljava/lang/String;

    .prologue
    .line 317
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, "strSummary":Ljava/lang/String;
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 321
    .local v1, "p":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 322
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v2    # "strSummary":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_1
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "Gemini_SimStatus"

    const-string v4, "fail to get system property"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 336
    :cond_0
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 337
    .local v0, "p":Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    :cond_1
    return-void
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 356
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDataState(I)I

    move-result v1

    .line 357
    .local v1, "state":I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090439

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 376
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .line 361
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090437

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    goto :goto_0

    .line 364
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090438

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 365
    goto :goto_0

    .line 367
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090436

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    goto :goto_0

    .line 370
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 371
    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 344
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeNameGemini(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "netWorkTypeName":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    invoke-interface {v2, v0}, Lcom/mediatek/settings/ext/IStatusGeminiExt;->customizeNetworkTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 347
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkTypeName, mSlotId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v2, "network_type"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 349
    .local v1, "p":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 350
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .end local v0    # "netWorkTypeName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 353
    :cond_1
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 381
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 382
    .local v1, "state":I
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f090439

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, "display":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 401
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f090430

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_1
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void

    .line 386
    :pswitch_0
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09042c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 387
    goto :goto_0

    .line 389
    :pswitch_1
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09042d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    goto :goto_0

    .line 392
    :pswitch_2
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09042e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 393
    goto :goto_0

    .line 395
    :pswitch_3
    sget-object v2, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v3, 0x7f09042f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 396
    goto :goto_0

    .line 407
    :cond_0
    const-string v2, "roaming_state"

    sget-object v3, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v4, 0x7f090431

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateTitle()V
    .locals 5

    .prologue
    .line 206
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-static {p0, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 207
    .local v1, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "simDisplayName":Ljava/lang/String;
    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    if-eqz v1, :cond_0

    .line 210
    iget-object v0, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 211
    const-string v2, "Gemini_SimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simDisplayName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 497
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v0, 0x1e61

    if-ne v0, p1, :cond_1

    .line 500
    if-ne v3, p2, :cond_0

    .line 501
    const-string v0, "slotid"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 502
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    .line 510
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/gemini/GeminiUtils;->goBackSimSelection(Landroid/app/Activity;Z)V

    .line 515
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x2

    .line 171
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceComplete:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 173
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1, p0}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 174
    const v1, 0x7f060017

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 176
    invoke-static {p0}, Lcom/android/settings/Utils;->getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusGeminiExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    .line 177
    invoke-static {p0}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "slotid"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 181
    const-string v1, "Gemini_SimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotid is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    if-ne v1, v4, :cond_0

    .line 185
    invoke-static {p0}, Lcom/mediatek/gemini/GeminiUtils;->getTargetSlotId(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    .line 187
    :cond_0
    iget v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 188
    const v1, 0x7f0901cb

    invoke-static {p0, v1}, Lcom/mediatek/gemini/GeminiUtils;->startSelectSimActivity(Landroid/app/Activity;I)V

    .line 195
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    .line 196
    sget-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sRes:Landroid/content/res/Resources;

    const v2, 0x7f090419

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->sUnknown:Ljava/lang/String;

    .line 197
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 198
    new-instance v1, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v1, p0}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 199
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 202
    const-string v1, "signal_strength"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    .line 203
    return-void

    .line 190
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z

    .line 191
    const-string v1, "Gemini_SimStatus"

    const-string v2, "no need to sim selection"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateTitle()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 221
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 222
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 294
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 299
    :cond_1
    iget v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 227
    iget-boolean v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z

    if-eqz v7, :cond_1

    .line 228
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    if-eq v7, v11, :cond_0

    .line 232
    iget-boolean v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    if-nez v7, :cond_2

    .line 233
    iput-boolean v12, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z

    .line 234
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;

    invoke-direct {v8, p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$3;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    const-wide/16 v9, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 245
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v7, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 251
    .local v5, "rawNumber":Ljava/lang/String;
    invoke-static {v5}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "formattedNumber":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 255
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    :cond_3
    const-string v7, "number"

    invoke-direct {p0, v7, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V

    .line 263
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V

    .line 265
    :try_start_0
    const-string v7, "phoneEx"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-interface {v7, v8}, Lcom/mediatek/common/telephony/ITelephonyEx;->getServiceState(I)Landroid/os/Bundle;

    move-result-object v0

    .line 268
    .local v0, "data":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v6

    .line 269
    .local v6, "serviceState":Landroid/telephony/ServiceState;
    invoke-direct {p0, v6}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 270
    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    iput v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v6    # "serviceState":Landroid/telephony/ServiceState;
    :goto_1
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v7

    iput-object v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 275
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 276
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x141

    iget v10, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 282
    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSimCount:I

    if-gt v7, v12, :cond_0

    .line 284
    iget-object v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v8, 0x7f0901cb

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v11}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 286
    .local v4, "newTitle":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 271
    .end local v4    # "newTitle":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "Gemini_SimStatus"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getServiceState error e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method updateSignalStrength()V
    .locals 11

    .prologue
    const v10, 0x7f09043c

    const/4 v5, 0x0

    const/4 v9, -0x1

    .line 414
    const-string v6, "Gemini_SimStatus"

    const-string v7, "updateSignalStrength()"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 420
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ServiceState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v6, 0x1

    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-eq v6, v7, :cond_0

    const/4 v6, 0x3

    iget v7, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I

    if-ne v6, v7, :cond_1

    .line 423
    :cond_0
    const-string v6, "Gemini_SimStatus"

    const-string v7, "ServiceState is Not ready, set signalStrength 0"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 428
    .local v1, "r":Landroid/content/res/Resources;
    const/4 v0, 0x1

    .line 429
    .local v0, "isGsmSignal":Z
    const/4 v3, 0x0

    .line 430
    .local v3, "signalDbm":I
    const/4 v2, 0x0

    .line 431
    .local v2, "signalAsu":I
    const/4 v4, 0x0

    .line 432
    .local v4, "signalDbmEvdo":I
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v6, :cond_3

    .line 433
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    .line 434
    if-eqz v0, :cond_5

    .line 435
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v3

    .line 436
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v2

    .line 437
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " asu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-ne v9, v3, :cond_2

    move v3, v5

    .line 440
    :cond_2
    if-ne v9, v2, :cond_3

    move v2, v5

    .line 451
    :cond_3
    :goto_0
    if-eqz v0, :cond_8

    .line 452
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " asu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f09043d

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    .end local v0    # "isGsmSignal":Z
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v2    # "signalAsu":I
    .end local v3    # "signalDbm":I
    .end local v4    # "signalDbmEvdo":I
    :cond_4
    :goto_1
    return-void

    .line 442
    .restart local v0    # "isGsmSignal":Z
    .restart local v1    # "r":Landroid/content/res/Resources;
    .restart local v2    # "signalAsu":I
    .restart local v3    # "signalDbm":I
    .restart local v4    # "signalDbmEvdo":I
    :cond_5
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    .line 443
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v6}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v4

    .line 444
    const-string v6, "Gemini_SimStatus"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SignalStrength is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " dbm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    if-ne v9, v3, :cond_6

    move v3, v5

    .line 447
    :cond_6
    if-ne v9, v4, :cond_7

    move v4, v5

    :cond_7
    goto/16 :goto_0

    .line 459
    :cond_8
    const-string v5, "Gemini_SimStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SignalStrength is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dbm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrengthPreference:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0902fc

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
