.class public Lcom/android/server/lightadjust/LightAdjustService;
.super Lcom/android/server/lightadjust/ILightAdjustService$Stub;
.source "LightAdjustService.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;,
        Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AUTOADJUST"

.field private static final MSG_ENTER_AUTO_MODE_TIMEOUT:I = 0x1

.field private static final MSG_EXIT_AUTO_MODE_TIMEOUT:I = 0x2


# instance fields
.field private enterAutoModeChange:Z

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessValueObserver:Landroid/database/ContentObserver;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/server/lightadjust/ILightAdjustCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mComputedNightMode:Z

.field private mContext:Landroid/content/Context;

.field private mDelaySetBrightnessHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

.field private mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

.field private mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

.field private mTwilight:Lcom/android/server/TwilightService;

.field private final mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

.field private myBroadcastReceiver:Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Lcom/android/server/lightadjust/ILightAdjustService$Stub;-><init>()V

    .line 32
    iput-boolean v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    .line 35
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 149
    new-instance v0, Lcom/android/server/lightadjust/LightAdjustService$2;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/LightAdjustService$2;-><init>(Lcom/android/server/lightadjust/LightAdjustService;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    .line 185
    new-instance v0, Lcom/android/server/lightadjust/LightAdjustService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/lightadjust/LightAdjustService$3;-><init>(Lcom/android/server/lightadjust/LightAdjustService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessValueObserver:Landroid/database/ContentObserver;

    .line 249
    new-instance v0, Lcom/android/server/lightadjust/LightAdjustService$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/lightadjust/LightAdjustService$4;-><init>(Lcom/android/server/lightadjust/LightAdjustService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 45
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    const v1, 0x10f0013

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 50
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    const v1, 0x10f0014

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 53
    new-instance v0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;-><init>(Lcom/android/server/lightadjust/LightAdjustService;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->myBroadcastReceiver:Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    .line 57
    new-instance v0, Lcom/android/server/lightadjust/ServiceSettings;

    invoke-direct {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    .line 58
    new-instance v0, Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-direct {v0, p1, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;-><init>(Landroid/content/Context;Lcom/android/server/lightadjust/ServiceSettings;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    .line 61
    new-instance v0, Lcom/android/server/lightadjust/NotificationControllerPanel;

    invoke-direct {v0, p1}, Lcom/android/server/lightadjust/NotificationControllerPanel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

    .line 63
    new-instance v0, Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/lightadjust/LightAdjustService$DelaySetHandler;-><init>(Lcom/android/server/lightadjust/LightAdjustService;Lcom/android/server/lightadjust/LightAdjustService$1;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mDelaySetBrightnessHandler:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method private UpdateNotificationText(II)V
    .locals 1
    .param p1, "enviromentalLightValue"    # I
    .param p2, "brightness_value"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/lightadjust/NotificationControllerPanel;->updateNotificationViewDisplay(II)V

    .line 599
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lightadjust/LightAdjustService;)Lcom/android/server/lightadjust/LightAdjuestCore;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/lightadjust/LightAdjustService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->isAutoAdjustEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->clearAllMessages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/lightadjust/LightAdjustService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/LightAdjustService;->sendExitAutoModeMessage(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/lightadjust/LightAdjustService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/LightAdjustService;->sendEnterAutoModeMessage(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->decreaseBrightnessPercent10()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->increaseBrightnessPercent10()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->changeProfileToNext()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->lockBrightnessAtCurrent()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->refreshBrightnessScreenOn()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/lightadjust/LightAdjustService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/LightAdjustService;->setBacklightValue(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->refreshBrightnessScreenOff()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeSetBrightness()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/lightadjust/LightAdjustService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/LightAdjustService;->exitAutoModeSetBrightness(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/lightadjust/LightAdjustService;)Lcom/android/server/lightadjust/NotificationControllerPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lightadjust/LightAdjustService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientDataFromService(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->updateBrightnessUser()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/lightadjust/LightAdjustService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientLogInfor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->updateNightMode()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/lightadjust/LightAdjustService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->getScreenBrightness()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/lightadjust/LightAdjustService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/lightadjust/LightAdjustService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjustService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    return p1
.end method

.method private callBackToUpdateClientDataFromService(II)V
    .locals 3
    .param p1, "enviromentalLightValue"    # I
    .param p2, "backlightBrightness"    # I

    .prologue
    .line 432
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 433
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 435
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/server/lightadjust/ILightAdjustCallback;

    invoke-interface {v2, p1, p2}, Lcom/android/server/lightadjust/ILightAdjustCallback;->updateServiceData(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 433
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 446
    :goto_2
    return-void

    .line 443
    :catch_0
    move-exception v2

    goto :goto_2

    .line 436
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private callBackToUpdateClientLogInfor(Ljava/lang/String;)V
    .locals 3
    .param p1, "logInfo"    # Ljava/lang/String;

    .prologue
    .line 617
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 618
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 620
    :try_start_0
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/android/server/lightadjust/ILightAdjustCallback;

    invoke-interface {v2, p1}, Lcom/android/server/lightadjust/ILightAdjustCallback;->updateLogInfor(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 618
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 631
    :goto_2
    return-void

    .line 628
    :catch_0
    move-exception v2

    goto :goto_2

    .line 621
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private callBackToUpdateClientSettingsFromService()V
    .locals 6

    .prologue
    .line 450
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 451
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 453
    :try_start_0
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v3}, Lcom/android/server/lightadjust/ServiceSettings;->getSettingsCache()Lcom/android/server/lightadjust/SettingsCache;

    move-result-object v2

    .line 454
    .local v2, "settingsCache":Lcom/android/server/lightadjust/SettingsCache;
    const-string v3, "zhangxj"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSettings--2-1-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/android/server/lightadjust/ILightAdjustCallback;

    invoke-interface {v3}, Lcom/android/server/lightadjust/ILightAdjustCallback;->updateSettings()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 451
    .end local v2    # "settingsCache":Lcom/android/server/lightadjust/SettingsCache;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    :goto_2
    return-void

    .line 463
    :catch_0
    move-exception v3

    goto :goto_2

    .line 456
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private changeProfileToNext()V
    .locals 2

    .prologue
    .line 705
    const-string v0, "AUTOADJUST"

    const-string v1, "updateSettings--1--changeProfileToNext"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->isLockedBrightness()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->changeProfileToNext()V

    .line 709
    :cond_0
    return-void
.end method

.method private clearAllMessages()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mDelaySetBrightnessHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mDelaySetBrightnessHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    return-void
.end method

.method private decreaseBrightnessPercent10()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 658
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5, v8}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessPercent(Z)I

    move-result v0

    .line 659
    .local v0, "currentPercent":I
    const-string v5, "zhangxj"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "get current percent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/16 v5, 0xa

    if-le v0, v5, :cond_1

    .line 661
    add-int/lit8 v0, v0, -0xa

    .line 666
    :goto_0
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5}, Lcom/android/server/lightadjust/LightAdjuestCore;->isLockedBrightness()Z

    move-result v5

    if-nez v5, :cond_0

    .line 667
    const-string v5, "zhangxj"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "percent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/LightAdjustService;->setBacklightPercentFromService(I)V

    .line 669
    invoke-static {v0}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getValue(I)I

    move-result v1

    .line 670
    .local v1, "current_value":I
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v2

    .line 671
    .local v2, "envLevel":I
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5, v8}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessPercent(Z)I

    move-result v3

    .line 672
    .local v3, "percent":I
    invoke-static {v3}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getValue(I)I

    move-result v4

    .line 673
    .local v4, "value":I
    invoke-direct {p0, v2, v1}, Lcom/android/server/lightadjust/LightAdjustService;->UpdateNotificationText(II)V

    .line 674
    invoke-direct {p0, v2, v4}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientDataFromService(II)V

    .line 676
    .end local v1    # "current_value":I
    .end local v2    # "envLevel":I
    .end local v3    # "percent":I
    .end local v4    # "value":I
    :cond_0
    return-void

    .line 663
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enterAutoModeSetBrightness()V
    .locals 2

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->isAutoAdjustEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    .line 211
    iget-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBrightnessLocked(Z)V

    .line 213
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->screenOnReportFirstDataRightNow()V

    .line 215
    :cond_0
    return-void
.end method

.method private exitAutoModeSetBrightness(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->isAutoAdjustEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    .line 219
    iget-boolean v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBrightnessLocked(Z)V

    .line 221
    invoke-static {p1}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getPercent(I)I

    move-result v0

    .line 222
    .local v0, "percent":I
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-2--Exit--Brightness Value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/LightAdjustService;->setBacklightPercent(I)V

    .line 224
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBrightnessLocked(Z)V

    .line 227
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->screenOffStopSampleRightNow()V

    .line 229
    .end local v0    # "percent":I
    :cond_0
    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 290
    move v0, p1

    .line 292
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    :goto_0
    return v0

    .line 294
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentProfileResId()I
    .locals 6

    .prologue
    .line 634
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v3}, Lcom/android/server/lightadjust/ServiceSettings;->getProfileIndex()I

    move-result v0

    .line 635
    .local v0, "mode":I
    const-string v3, "zhangxj"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "profile_mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v3, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 642
    .local v2, "resIds":[I
    array-length v3, v2

    if-ge v0, v3, :cond_0

    if-ltz v0, :cond_0

    .line 643
    aget v1, v2, v0

    .line 646
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 636
    :array_0
    .array-data 4
        0x108068a
        0x108068c
        0x108068b
        0x1080689
    .end array-data
.end method

.method private getScreenBrightness()I
    .locals 3

    .prologue
    .line 176
    const/16 v0, 0x63

    .line 178
    .local v0, "screenBrightness":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 182
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private increaseBrightnessPercent10()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 576
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5, v7}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessPercent(Z)I

    move-result v0

    .line 577
    .local v0, "currentPercent":I
    add-int/lit8 v5, v0, 0xa

    const/16 v6, 0x64

    if-ge v5, v6, :cond_1

    .line 579
    add-int/lit8 v0, v0, 0xa

    .line 584
    :goto_0
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5}, Lcom/android/server/lightadjust/LightAdjuestCore;->isLockedBrightness()Z

    move-result v5

    if-nez v5, :cond_0

    .line 585
    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/LightAdjustService;->setBacklightPercentFromService(I)V

    .line 586
    invoke-static {v0}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getValue(I)I

    move-result v1

    .line 587
    .local v1, "current_value":I
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v2

    .line 588
    .local v2, "envLevel":I
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v5, v7}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessPercent(Z)I

    move-result v3

    .line 589
    .local v3, "percent":I
    invoke-static {v3}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getValue(I)I

    move-result v4

    .line 590
    .local v4, "value":I
    invoke-direct {p0, v2, v1}, Lcom/android/server/lightadjust/LightAdjustService;->UpdateNotificationText(II)V

    .line 591
    invoke-direct {p0, v2, v4}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientDataFromService(II)V

    .line 594
    .end local v1    # "current_value":I
    .end local v2    # "envLevel":I
    .end local v3    # "percent":I
    .end local v4    # "value":I
    :cond_0
    return-void

    .line 581
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private isAutoAdjustEnable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 260
    .local v0, "checked":Z
    :goto_0
    return v0

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 258
    goto :goto_0
.end method

.method private lockBrightnessAtCurrent()V
    .locals 2

    .prologue
    .line 715
    const-string v0, "AUTOADJUST"

    const-string v1, "lockBrightnessAtCurrent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->lockBrightnessAtCurrent()V

    .line 718
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->notificationUpdateLockIcon()V

    .line 720
    return-void
.end method

.method private notificationUpdateLockIcon()V
    .locals 2

    .prologue
    .line 723
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->isLockedBrightness()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x1080687

    .line 725
    .local v0, "resId":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

    invoke-virtual {v1, v0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->updateNotificationLockIcon(I)V

    .line 726
    return-void

    .line 723
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x108068f

    goto :goto_0
.end method

.method private notificationUpdateProfileIcon()V
    .locals 2

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->getCurrentProfileResId()I

    move-result v0

    .line 651
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

    invoke-virtual {v1, v0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->updateNotificationProfileIcon(I)V

    .line 652
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 6

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->isAutoAdjustEnable()Z

    move-result v1

    .line 267
    .local v1, "enterAutoModeChange":Z
    if-eqz v1, :cond_0

    .line 268
    const-string v2, "Enter AutoMode"

    .line 272
    .local v2, "logString":Ljava/lang/String;
    :goto_0
    const-string v3, "LOGTAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "###Mode Changed--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->forceStopAdjustBrightness()V

    .line 275
    iget-object v4, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBrightnessLocked(Z)V

    .line 276
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->clearAllMessages()V

    .line 277
    if-eqz v1, :cond_2

    .line 279
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessValue()I

    move-result v0

    .line 280
    .local v0, "backlightValue":I
    const/4 v1, 0x1

    .line 281
    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/LightAdjustService;->sendEnterAutoModeMessage(I)V

    .line 286
    .end local v0    # "backlightValue":I
    :goto_2
    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

    invoke-virtual {v3, v1}, Lcom/android/server/lightadjust/NotificationControllerPanel;->notificationEnabled(Z)V

    .line 287
    return-void

    .line 270
    .end local v2    # "logString":Ljava/lang/String;
    :cond_0
    const-string v2, "Exit AutoMode"

    .restart local v2    # "logString":Ljava/lang/String;
    goto :goto_0

    .line 275
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 283
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private profileChanged()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->reInitProfiles()V

    .line 606
    const-string v0, "AUTOADJUST"

    const-string v1, "--> Profile Changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v0, "Profile Changed!"

    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientLogInfor(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->updateBrightnessUser()V

    .line 610
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->notificationUpdateProfileIcon()V

    .line 611
    const-string v0, "zhangxj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings--2--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientSettingsFromService()V

    .line 613
    return-void
.end method

.method private refreshBrightnessScreenOff()V
    .locals 2

    .prologue
    .line 736
    const-string v0, "AUTOADJUST"

    const-string v1, "refreshBrightnessScreenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->screenOffStopSampleRightNow()V

    .line 739
    const-string v0, "refreshBrightnessScreenOff"

    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientLogInfor(Ljava/lang/String;)V

    .line 740
    return-void
.end method

.method private refreshBrightnessScreenOn()V
    .locals 2

    .prologue
    .line 729
    const-string v0, "AUTOADJUST"

    const-string v1, "refreshBrightnessScreenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v0, "refreshBrightnessScreenOn"

    invoke-direct {p0, v0}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientLogInfor(Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->screenOnReportFirstDataRightNow()V

    .line 733
    return-void
.end method

.method private sendEnterAutoModeMessage(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mDelaySetBrightnessHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 238
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 239
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mDelaySetBrightnessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 240
    return-void
.end method

.method private sendExitAutoModeMessage(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mDelaySetBrightnessHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 244
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 245
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mDelaySetBrightnessHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 246
    return-void
.end method

.method private setBacklightPercent(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBacklightPercent(IZ)V

    .line 502
    return-void
.end method

.method private setBacklightPercentFromService(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBacklightPercent(IZ)V

    .line 506
    return-void
.end method

.method private setBacklightValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBacklightValue(I)V

    .line 493
    return-void
.end method

.method private setProfileMode(Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)V
    .locals 2
    .param p1, "type"    # Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    .line 350
    .local v1, "index":I
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->setProfile(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private updateBrightnessUser()V
    .locals 4

    .prologue
    .line 691
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v0

    .line 692
    .local v0, "envValue":I
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessValue()I

    move-result v1

    .line 695
    .local v1, "value":I
    invoke-virtual {p0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->setBacklightValueUser(I)V

    .line 696
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force set brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientLogInfor(Ljava/lang/String;)V

    .line 697
    invoke-direct {p0, v0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->UpdateNotificationText(II)V

    .line 698
    invoke-direct {p0, v0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientDataFromService(II)V

    .line 699
    return-void
.end method

.method private updateNightMode()V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mTwilight:Lcom/android/server/TwilightService;

    invoke-virtual {v1}, Lcom/android/server/TwilightService;->getCurrentState()Lcom/android/server/TwilightService$TwilightState;

    move-result-object v0

    .line 159
    .local v0, "state":Lcom/android/server/TwilightService$TwilightState;
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/android/server/TwilightService$TwilightState;->isNight()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mComputedNightMode:Z

    .line 162
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/lightadjust/LightAdjustService;->mComputedNightMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-boolean v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mComputedNightMode:Z

    if-eqz v1, :cond_1

    .line 166
    sget-object v1, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->setProfileMode(Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    sget-object v1, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->setProfileMode(Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)V

    goto :goto_0
.end method


# virtual methods
.method public getEnviromentalLightLevel()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v0

    return v0
.end method

.method public getScreenBrightnessValue()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessValue()I

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 471
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessValueObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->myBroadcastReceiver:Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->myBroadcastReceiver:Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 482
    :cond_2
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 514
    const-string v0, "profile_selection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->profileChanged()V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    const-string v0, "minimum_brightness"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "maximum_brightness"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/ServiceSettings;->get_Minimum_Brightness_Value()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/ServiceSettings;->get_Maximum_Brightness_Value()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->setScreenBrightnessPercentScope(II)V

    goto :goto_0

    .line 522
    :cond_3
    const-string v0, "light_sensor_poll_rate"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 523
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/ServiceSettings;->get_Sensor_Sample_Rate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setSampleRate(I)V

    goto :goto_0

    .line 524
    :cond_4
    const-string v0, "brightness_fade_speed"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    const-string v0, "fade_brightness_changes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 530
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->reCaculateAndRestart()V

    goto :goto_0

    .line 531
    :cond_5
    const-string v0, "lenovo_antishake_interval_up"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 532
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/ServiceSettings;->get_Bright_Anti_Shake_Interval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setAntiShakeBrighter(I)V

    goto :goto_0

    .line 533
    :cond_6
    const-string v0, "lenovo_antishake_interval_down"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 534
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/ServiceSettings;->get_Dark_Anti_Shake_interval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setAntiShakeDarker(I)V

    goto :goto_0

    .line 535
    :cond_7
    const-string v0, "show_notification_control_panel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/ServiceSettings;->get_Show_Notification_Controller_Panel()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/NotificationControllerPanel;->notificationEnabled(Z)V

    goto/16 :goto_0
.end method

.method public refreshBrightnessRightNow()V
    .locals 2

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    if-eqz v0, :cond_0

    .line 683
    const-string v0, "AUTOADJUST"

    const-string v1, "refreshBrightnessRightNow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->isLockedBrightness()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->updateBrightnessUser()V

    .line 688
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/server/lightadjust/ILightAdjustCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/server/lightadjust/ILightAdjustCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 422
    :cond_0
    return-void
.end method

.method public registerTwilightService(Lcom/android/server/TwilightService;)V
    .locals 0
    .param p1, "twilight_service"    # Lcom/android/server/TwilightService;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjustService;->mTwilight:Lcom/android/server/TwilightService;

    .line 72
    return-void
.end method

.method public resetAllParams()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->resetSettings()V

    .line 417
    return-void
.end method

.method public setBacklightAdjustPolicy(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setBacklightAdjustPolicy(I)V

    .line 370
    return-void
.end method

.method public setBacklightValueUser(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBacklightValueUser(I)V

    .line 325
    return-void
.end method

.method public setBrightAntiShakeInterval(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setBrightAntiShakeInterval(I)V

    .line 400
    return-void
.end method

.method public setBrightnessFadeSpeed(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setBrightnessFadeSpeed(I)V

    .line 380
    return-void
.end method

.method public setBrightnessStepSize(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setBrightnessStepSize(I)V

    .line 385
    return-void
.end method

.method public setDarkAntiShakeInterval(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setDarkAntiShakeInterval(I)V

    .line 405
    return-void
.end method

.method public setFadeBrightnessChanges(Z)V
    .locals 1
    .param p1, "fade_brightness_changes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setFadeBrightnessChanges(Z)V

    .line 390
    return-void
.end method

.method public setProfile(I)V
    .locals 3
    .param p1, "profile_index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 358
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->getProfileCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 359
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] not in [0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v2}, Lcom/android/server/lightadjust/ServiceSettings;->getProfileCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->getProfileIndex()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setProfileIndex(I)V

    .line 365
    :cond_2
    return-void
.end method

.method public setScreenBrightnessPercentScope(II)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/lightadjust/ServiceSettings;->setScreenBrightnessScope(II)V

    .line 395
    return-void
.end method

.method public setSensorSampleRate(I)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setSensorSampleRate(I)V

    .line 375
    return-void
.end method

.method public setShowNotificationControllerPanel(Z)V
    .locals 1
    .param p1, "showOrNot"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/ServiceSettings;->setShowNotificationControllerPanel(Z)V

    .line 410
    return-void
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 79
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 80
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    const-string v5, "screen_brightness_mode"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 84
    .local v2, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v2, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 89
    const-string v5, "screen_brightness"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 90
    .local v3, "uriValue":Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/lightadjust/LightAdjustService;->mBrightnessValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v3, v8, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.lenovo.lightadjuest.INCREASE_BRIGHTNESS"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.lenovo.lightadjuest.DECREASE_BRIGHTNESS"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.lenovo.lightadjuest.REFRESH_NOW"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.lenovo.lightadjuest.CHANGE_PROFILE"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "com.lenovo.lightadjuest.LOCK_BRIGHTNESS"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/lightadjust/LightAdjustService;->myBroadcastReceiver:Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/lightadjust/LightAdjustService;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mTwilight:Lcom/android/server/TwilightService;

    iget-object v6, p0, Lcom/android/server/lightadjust/LightAdjustService;->mTwilightListener:Lcom/android/server/TwilightService$TwilightListener;

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v5, v6, v7}, Lcom/android/server/TwilightService;->registerListener(Lcom/android/server/TwilightService$TwilightListener;Landroid/os/Handler;)V

    .line 109
    iget-object v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    new-instance v6, Lcom/android/server/lightadjust/LightAdjustService$1;

    invoke-direct {v6, p0}, Lcom/android/server/lightadjust/LightAdjustService$1;-><init>(Lcom/android/server/lightadjust/LightAdjustService;)V

    invoke-virtual {v5, v6}, Lcom/android/server/lightadjust/LightAdjuestCore;->Start(Lcom/android/server/lightadjust/LightAdjuestCore$Callback;)V

    .line 138
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->isAutoAdjustEnable()Z

    move-result v0

    .line 139
    .local v0, "enabled":Z
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->clearAllMessages()V

    .line 140
    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjustService;->getScreenBrightness()I

    move-result v4

    .line 142
    .local v4, "value":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    .line 143
    invoke-direct {p0, v4}, Lcom/android/server/lightadjust/LightAdjustService;->sendExitAutoModeMessage(I)V

    .line 147
    .end local v4    # "value":I
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-boolean v8, p0, Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/android/server/lightadjust/ILightAdjustCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/server/lightadjust/ILightAdjustCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 427
    :cond_0
    return-void
.end method
