.class public final Lcom/android/settings/dataconnection/DataEnabler;
.super Ljava/lang/Object;
.source "DataEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ATTACH_TIME_OUT_LENGTH:I = 0x7530

.field private static final DETACH_TIME_OUT_LENGTH:I = 0x2710

.field private static final EVENT_ATTACH_TIME_OUT:I = 0x7d1

.field private static final EVENT_DETACH_TIME_OUT:I = 0x7d0

.field private static final EVENT_SIM_STATUS_TIME_OUT:I = 0x7d2

.field private static final INTENT_OPEN_MOBILE_DATA_CONFIRM_DIALOG_CLOSED:Ljava/lang/String; = "intent.Open_Mobile_Data_Confirm_Dialog_Closed"

.field private static final MMS_TRANSACTION:Ljava/lang/String; = "mms.transaction"

.field private static final PIN1_REQUEST_CODE:I = 0x12e

.field private static final TAG:Ljava/lang/String; = "DataEnabler"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static mAllSimRadioOff:Z

.field private static mHasSim:Z

.field private static mIsSwitching:Z

.field private static mScreenEnable:Z


# instance fields
.field private isConflict:Z

.field private isSim1StateReady:Z

.field private isSim2StateReady:Z

.field private isSimStateReady:Z

.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileStateChangeObserver:Landroid/database/ContentObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private timerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z

    .line 68
    sput-boolean v1, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    .line 69
    sput-boolean v1, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    .line 70
    sput-boolean v1, Lcom/android/settings/dataconnection/DataEnabler;->mIsSwitching:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->isSimStateReady:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->isSim1StateReady:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->isSim2StateReady:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->isConflict:Z

    .line 82
    new-instance v0, Lcom/android/settings/dataconnection/DataEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/dataconnection/DataEnabler$1;-><init>(Lcom/android/settings/dataconnection/DataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    new-instance v0, Lcom/android/settings/dataconnection/DataEnabler$2;

    invoke-direct {v0, p0}, Lcom/android/settings/dataconnection/DataEnabler$2;-><init>(Lcom/android/settings/dataconnection/DataEnabler;)V

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->timerHandler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/android/settings/dataconnection/DataEnabler$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dataconnection/DataEnabler$3;-><init>(Lcom/android/settings/dataconnection/DataEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mMobileStateChangeObserver:Landroid/database/ContentObserver;

    .line 259
    new-instance v0, Lcom/android/settings/dataconnection/DataEnabler$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dataconnection/DataEnabler$4;-><init>(Lcom/android/settings/dataconnection/DataEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 276
    iput-object p1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    .line 277
    iput-object p2, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 278
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 279
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 280
    new-instance v0, Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 281
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    .line 283
    const-string v0, "DataEnabler"

    const-string v1, "DataEnabler, create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dataconnection/DataEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dataconnection/DataEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z

    return p0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dataconnection/DataEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/dataconnection/DataEnabler;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dataconnection/DataEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/settings/dataconnection/DataEnabler;->mIsSwitching:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 48
    sput-boolean p0, Lcom/android/settings/dataconnection/DataEnabler;->mIsSwitching:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/dataconnection/DataEnabler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dataconnection/DataEnabler;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->isConflict:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/net/ConnectivityManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dataconnection/DataEnabler;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private isMobileDataEnabled(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 545
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 548
    const-string v1, "DataEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMoblieDataEnabled for slotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v0
.end method

.method private onDataEnableChangeGemini(Z)V
    .locals 1
    .param p1, "dataEnabled"    # Z

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dataconnection/DataEnabler;->setMobileDataEnabled(IZ)V

    .line 536
    return-void
.end method

.method private setMobileDataEnabled(IZ)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "enabled"    # Z

    .prologue
    const-wide/16 v3, 0x1388

    .line 553
    const-string v0, "DataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled for slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 555
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/dataconnection/DataEnabler;->mIsSwitching:Z

    .line 556
    if-eqz p2, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->timerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 581
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->timerHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 585
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 602
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 603
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/dataconnection/DataEnabler;->isSimStateReady:Z

    .line 605
    const-string v2, "DataEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSimStateReady :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/dataconnection/DataEnabler;->isSimStateReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/dataconnection/DataEnabler;->isSimStateReady:Z

    if-eqz v2, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 603
    goto :goto_0

    :cond_1
    move v3, v4

    .line 608
    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 441
    const-string v0, "DataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0, p2}, Lcom/android/settings/dataconnection/DataEnabler;->onDataEnableChangeGemini(Z)V

    .line 443
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 365
    sget-boolean v0, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 374
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 379
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 287
    const-string v1, "DataEnabler"

    const-string v4, "DataEnabler, resume"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 291
    sput-boolean v3, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    .line 298
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    .line 301
    const-string v1, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataEnabler, resume mAllSimRadioOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-boolean v1, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 333
    :cond_1
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    sget-boolean v4, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 342
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "intent.Open_Mobile_Data_Confirm_Dialog_Closed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/dataconnection/DataEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 358
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/dataconnection/DataEnabler;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 363
    :goto_2
    return-void

    .line 293
    :cond_3
    sput-boolean v2, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    .line 294
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 298
    goto/16 :goto_0

    .line 335
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v2}, Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 336
    const-string v1, "DataEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lenovo debug resume, setChecked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 382
    const-string v1, "DataEnabler"

    const-string v4, "setSwitch"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 438
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 385
    iput-object p1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    .line 388
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 389
    .local v0, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 390
    sput-boolean v3, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    .line 400
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "airplane_mode_on"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_1
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    .line 429
    sget-boolean v1, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 430
    :cond_2
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 434
    :goto_2
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    sget-boolean v4, Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z

    if-nez v4, :cond_6

    sget-boolean v4, Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z

    if-eqz v4, :cond_6

    sget-boolean v4, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 392
    :cond_3
    sput-boolean v2, Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z

    .line 393
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 400
    goto :goto_1

    .line 432
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v2}, Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_6
    move v3, v2

    .line 434
    goto :goto_3
.end method
