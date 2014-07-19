.class public Landroid/net/CsdStateTracker;
.super Ljava/lang/Object;
.source "CsdStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CsdStateTracker$1;,
        Landroid/net/CsdStateTracker$CsdDataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "CsdStateTracker"

.field private static final VDBG:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCsdNumber:Ljava/lang/String;

.field private mCsdStateReceiver:Landroid/content/BroadcastReceiver;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMessenger:Landroid/os/Messenger;

.field private mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mSimId:I

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field protected mUserDataEnabled:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "netType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v0, p0, Landroid/net/CsdStateTracker;->mTeardownRequested:Z

    .line 74
    iput-boolean v0, p0, Landroid/net/CsdStateTracker;->mPrivateDnsRouteSet:Z

    .line 75
    iput-boolean v0, p0, Landroid/net/CsdStateTracker;->mDefaultRouteSet:Z

    .line 79
    iput-boolean v1, p0, Landroid/net/CsdStateTracker;->mUserDataEnabled:Z

    .line 80
    iput-boolean v1, p0, Landroid/net/CsdStateTracker;->mPolicyDataEnabled:Z

    .line 85
    iput v0, p0, Landroid/net/CsdStateTracker;->mSimId:I

    .line 94
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 97
    const-string v0, "CsdStateTracker create"

    invoke-direct {p0, v0}, Landroid/net/CsdStateTracker;->log(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$100(Landroid/net/CsdStateTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CsdStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/net/CsdStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/CsdStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/CsdStateTracker;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/CsdStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$202(Landroid/net/CsdStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Landroid/net/CsdStateTracker;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 59
    iput-object p1, p0, Landroid/net/CsdStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/CsdStateTracker;)Landroid/net/LinkCapabilities;
    .locals 1
    .param p0, "x0"    # Landroid/net/CsdStateTracker;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/CsdStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/CsdStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .locals 0
    .param p0, "x0"    # Landroid/net/CsdStateTracker;
    .param p1, "x1"    # Landroid/net/LinkCapabilities;

    .prologue
    .line 59
    iput-object p1, p0, Landroid/net/CsdStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$400(Landroid/net/CsdStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/CsdStateTracker;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/CsdStateTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/CsdStateTracker;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/CsdStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/CsdStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CsdStateTracker;

    .prologue
    .line 59
    iget-object v0, p0, Landroid/net/CsdStateTracker;->mCsdNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/CsdStateTracker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/CsdStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Landroid/net/CsdStateTracker;->mCsdNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/CsdStateTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CsdStateTracker;

    .prologue
    .line 59
    iget v0, p0, Landroid/net/CsdStateTracker;->mSimId:I

    return v0
.end method

.method static synthetic access$702(Landroid/net/CsdStateTracker;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/CsdStateTracker;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Landroid/net/CsdStateTracker;->mSimId:I

    return p1
.end method

.method private getPhoneService()V
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/CsdStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 191
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 400
    const-string v0, "CsdStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v0, "CsdStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 408
    const-string v0, "CsdStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 374
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 0
    .param p1, "isCaptive"    # Z

    .prologue
    .line 241
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Landroid/net/CsdStateTracker;->mDefaultRouteSet:Z

    .line 139
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/CsdStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 341
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/CsdStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getNetworkInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    const-string/jumbo v0, "net.tcp.buffersize.csd"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/net/CsdStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/net/CsdStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Landroid/net/CsdStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Landroid/net/CsdStateTracker;->mPrivateDnsRouteSet:Z

    .line 127
    return-void
.end method

.method public reconnect()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 261
    const/4 v1, 0x0

    .line 263
    .local v1, "retValue":Z
    invoke-virtual {p0, v3}, Landroid/net/CsdStateTracker;->setTeardownRequested(Z)V

    .line 264
    invoke-direct {p0}, Landroid/net/CsdStateTracker;->getPhoneService()V

    .line 266
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 267
    iget-object v4, p0, Landroid/net/CsdStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v4, :cond_1

    .line 276
    :cond_0
    :goto_1
    return v3

    .line 270
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/net/CsdStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    iget v5, p0, Landroid/net/CsdStateTracker;->mSimId:I

    iget-object v6, p0, Landroid/net/CsdStateTracker;->mCsdNumber:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/ITelephony;->dialUpCsd(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v2, :cond_2

    invoke-direct {p0}, Landroid/net/CsdStateTracker;->getPhoneService()V

    .line 266
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 379
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .param p1, "met"    # Z

    .prologue
    .line 359
    return-void
.end method

.method public setDialUpParam(ILjava/lang/String;)V
    .locals 0
    .param p1, "simId"    # I
    .param p2, "dialUpNumber"    # Ljava/lang/String;

    .prologue
    .line 252
    iput p1, p0, Landroid/net/CsdStateTracker;->mSimId:I

    .line 253
    iput-object p2, p0, Landroid/net/CsdStateTracker;->mCsdNumber:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 369
    return-void
.end method

.method public setRadio(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 315
    invoke-direct {p0}, Landroid/net/CsdStateTracker;->getPhoneService()V

    .line 320
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 321
    iget-object v2, p0, Landroid/net/CsdStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 322
    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/CsdStateTracker;->loge(Ljava/lang/String;)V

    .line 333
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set radio power to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/CsdStateTracker;->loge(Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 327
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/CsdStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/net/CsdStateTracker;->getPhoneService()V

    .line 320
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .param p1, "isRequested"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Landroid/net/CsdStateTracker;->mTeardownRequested:Z

    .line 245
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 364
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 107
    iput-object p2, p0, Landroid/net/CsdStateTracker;->mTarget:Landroid/os/Handler;

    .line 108
    iput-object p1, p0, Landroid/net/CsdStateTracker;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE_CSD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.CSD_DIAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    new-instance v1, Landroid/net/CsdStateTracker$CsdDataStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/CsdStateTracker$CsdDataStateReceiver;-><init>(Landroid/net/CsdStateTracker;Landroid/net/CsdStateTracker$1;)V

    iput-object v1, p0, Landroid/net/CsdStateTracker;->mCsdStateReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    iget-object v1, p0, Landroid/net/CsdStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/CsdStateTracker;->mCsdStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, p0, Landroid/net/CsdStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 118
    const-string v1, "CsdStateTracker startMonitoring"

    invoke-direct {p0, v1}, Landroid/net/CsdStateTracker;->log(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 383
    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 0
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 387
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 0
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 397
    return-void
.end method

.method public teardown()Z
    .locals 3

    .prologue
    .line 214
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/net/CsdStateTracker;->setTeardownRequested(Z)V

    .line 215
    invoke-direct {p0}, Landroid/net/CsdStateTracker;->getPhoneService()V

    .line 217
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 218
    iget-object v2, p0, Landroid/net/CsdStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 231
    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 224
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/CsdStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/net/CsdStateTracker;->getPhoneService()V

    .line 217
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 304
    .local v1, "writer":Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 305
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "CSD data state: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/CsdStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 306
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
