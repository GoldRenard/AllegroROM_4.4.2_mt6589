.class public Lcom/android/settings/ApnInformation;
.super Landroid/preference/PreferenceActivity;
.source "ApnInformation.java"


# static fields
.field private static final APN_INDEX:I = 0x2

.field private static final AUTH_TYPE_INDEX:I = 0xe

.field private static final BEARER_INDEX:I = 0x12

.field private static final CARRIER_ENABLED_INDEX:I = 0x11

.field private static final ID_INDEX:I = 0x0

.field private static final MCC_INDEX:I = 0x9

.field private static final MMSC_INDEX:I = 0x8

.field private static final MMSPORT_INDEX:I = 0xd

.field private static final MMSPROXY_INDEX:I = 0xc

.field private static final MNC_INDEX:I = 0xa

.field private static final NAME_INDEX:I = 0x1

.field private static final PASSWORD_INDEX:I = 0x7

.field private static final PORT_INDEX:I = 0x4

.field private static final PROTOCOL_INDEX:I = 0x10

.field private static final PROXY_INDEX:I = 0x3

.field private static final ROAMING_PROTOCOL_INDEX:I = 0x13

.field private static final SERVER_INDEX:I = 0x6

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_SINGLE:I = 0x0

.field private static final SOURCE_TYPE_INDEX:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_INDEX:I = 0xf

.field private static final USER_INDEX:I = 0x5

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private _GEMINI_PHONE:Z

.field private mAirplaneModeEnabled:Z

.field private mApn:Landroid/preference/Preference;

.field private mApnType:Landroid/preference/Preference;

.field private mAuthType:Landroid/preference/Preference;

.field private mAuthTypeNames:[Ljava/lang/String;

.field private mBearer:Landroid/preference/Preference;

.field private mBearerEntries:[Ljava/lang/String;

.field private mCarrierEnabled:Landroid/preference/Preference;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCursor:Landroid/database/Cursor;

.field private mDualSimMode:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsCallStateIdle:Z

.field private mMcc:Landroid/preference/Preference;

.field private mMmsPort:Landroid/preference/Preference;

.field private mMmsProxy:Landroid/preference/Preference;

.field private mMmsc:Landroid/preference/Preference;

.field private mMnc:Landroid/preference/Preference;

.field private mName:Landroid/preference/Preference;

.field private mPassword:Landroid/preference/Preference;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPort:Landroid/preference/Preference;

.field private mProtocol:Landroid/preference/Preference;

.field private mProtocolEntries:[Ljava/lang/String;

.field private mProviderUri:Landroid/net/Uri;

.field private mProxy:Landroid/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mServer:Landroid/preference/Preference;

.field private mSimId:I

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/Preference;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const-class v0, Lcom/android/settings/ApnEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ApnInformation;->TAG:Ljava/lang/String;

    .line 138
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "sourcetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/ApnInformation;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ApnInformation;->mIsCallStateIdle:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/settings/ApnInformation;->mAirplaneModeEnabled:Z

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ApnInformation;->mDualSimMode:I

    .line 187
    iput-boolean v1, p0, Lcom/android/settings/ApnInformation;->_GEMINI_PHONE:Z

    .line 193
    new-instance v0, Lcom/android/settings/ApnInformation$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnInformation$1;-><init>(Lcom/android/settings/ApnInformation;)V

    iput-object v0, p0, Lcom/android/settings/ApnInformation;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    new-instance v0, Lcom/android/settings/ApnInformation$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ApnInformation$2;-><init>(Lcom/android/settings/ApnInformation;)V

    iput-object v0, p0, Lcom/android/settings/ApnInformation;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ApnInformation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/settings/ApnInformation;->mAirplaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/ApnInformation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/settings/ApnInformation;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/ApnInformation;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/settings/ApnInformation;->mDualSimMode:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/ApnInformation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/settings/ApnInformation;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/ApnInformation;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ApnInformation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/settings/ApnInformation;->mIsCallStateIdle:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/ApnInformation;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/ApnInformation;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/ApnInformation;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/settings/ApnInformation;->sProjection:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/ApnInformation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ApnInformation;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/settings/ApnInformation;->fillUi()V

    return-void
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 434
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 435
    :cond_0
    sget-object p1, Lcom/android/settings/ApnInformation;->sNotSet:Ljava/lang/String;

    .line 437
    .end local p1    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private fillUi()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 356
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 419
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mName:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mApn:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x2

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mProxy:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x3

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mPort:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mUser:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x5

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mServer:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x6

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mPassword:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/4 v10, 0x7

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mMmsProxy:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xc

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mMmsPort:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xd

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mMmsc:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x8

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mMcc:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0x9

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mMnc:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xa

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mApnType:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v10, 0xf

    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/ApnInformation;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xe

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 376
    .local v0, "authVal":I
    if-eq v0, v11, :cond_3

    .line 377
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mAuthType:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mAuthTypeNames:[Ljava/lang/String;

    aget-object v9, v9, v0

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    :goto_1
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x10

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "protocolValue":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a002c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 384
    .local v7, "protocolValues":[Ljava/lang/String;
    const/4 v5, -0x1

    .line 385
    .local v5, "protocolIdx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v8, v7

    if-ge v4, v8, :cond_1

    .line 386
    aget-object v8, v7, v4

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 387
    move v5, v4

    .line 391
    :cond_1
    if-eq v5, v11, :cond_5

    .line 392
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mProtocol:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mProtocolEntries:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    :goto_3
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x11

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v12, :cond_6

    .line 398
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mCarrierEnabled:Landroid/preference/Preference;

    const v9, 0x7f090772

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    .line 403
    :goto_4
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0x12

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "bearerValue":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mRes:Landroid/content/res/Resources;

    const v9, 0x7f0a002e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "bearerValues":[Ljava/lang/String;
    const/4 v1, -0x1

    .line 407
    .local v1, "bearerIdx":I
    const/4 v4, 0x0

    :goto_5
    array-length v8, v3

    if-ge v4, v8, :cond_2

    .line 408
    aget-object v8, v3, v4

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 409
    move v1, v4

    .line 413
    :cond_2
    if-eq v1, v11, :cond_8

    .line 414
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mBearer:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/android/settings/ApnInformation;->mBearerEntries:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 379
    .end local v1    # "bearerIdx":I
    .end local v2    # "bearerValue":Ljava/lang/String;
    .end local v3    # "bearerValues":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "protocolIdx":I
    .end local v6    # "protocolValue":Ljava/lang/String;
    .end local v7    # "protocolValues":[Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mAuthType:Landroid/preference/Preference;

    sget-object v9, Lcom/android/settings/ApnInformation;->sNotSet:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 385
    .restart local v4    # "i":I
    .restart local v5    # "protocolIdx":I
    .restart local v6    # "protocolValue":Ljava/lang/String;
    .restart local v7    # "protocolValues":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 394
    :cond_5
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mProtocol:Landroid/preference/Preference;

    sget-object v9, Lcom/android/settings/ApnInformation;->sNotSet:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 400
    :cond_6
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mCarrierEnabled:Landroid/preference/Preference;

    const v9, 0x7f090773

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 407
    .restart local v1    # "bearerIdx":I
    .restart local v2    # "bearerValue":Ljava/lang/String;
    .restart local v3    # "bearerValues":[Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 416
    :cond_8
    iget-object v8, p0, Lcom/android/settings/ApnInformation;->mBearer:Landroid/preference/Preference;

    sget-object v9, Lcom/android/settings/ApnInformation;->sNotSet:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 422
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 423
    :cond_0
    sget-object v2, Lcom/android/settings/ApnInformation;->sNotSet:Ljava/lang/String;

    .line 429
    :goto_0
    return-object v2

    .line 425
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 426
    .local v1, "password":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 427
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 228
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 230
    const v3, 0x7f060004

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 232
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09075c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/ApnInformation;->sNotSet:Ljava/lang/String;

    .line 233
    const-string v3, "apn_name"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mName:Landroid/preference/Preference;

    .line 234
    const-string v3, "apn_apn"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mApn:Landroid/preference/Preference;

    .line 235
    const-string v3, "apn_http_proxy"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mProxy:Landroid/preference/Preference;

    .line 236
    const-string v3, "apn_http_port"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mPort:Landroid/preference/Preference;

    .line 237
    const-string v3, "apn_user"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mUser:Landroid/preference/Preference;

    .line 238
    const-string v3, "apn_server"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mServer:Landroid/preference/Preference;

    .line 239
    const-string v3, "apn_password"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mPassword:Landroid/preference/Preference;

    .line 240
    const-string v3, "apn_mms_proxy"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mMmsProxy:Landroid/preference/Preference;

    .line 241
    const-string v3, "apn_mms_port"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mMmsPort:Landroid/preference/Preference;

    .line 242
    const-string v3, "apn_mmsc"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mMmsc:Landroid/preference/Preference;

    .line 243
    const-string v3, "apn_mcc"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mMcc:Landroid/preference/Preference;

    .line 244
    const-string v3, "apn_mnc"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mMnc:Landroid/preference/Preference;

    .line 245
    const-string v3, "apn_type"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mApnType:Landroid/preference/Preference;

    .line 246
    const-string v3, "auth_type"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mAuthType:Landroid/preference/Preference;

    .line 247
    const-string v3, "apn_protocol"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mProtocol:Landroid/preference/Preference;

    .line 248
    const-string v3, "carrier_enabled"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mCarrierEnabled:Landroid/preference/Preference;

    .line 249
    const-string v3, "bearer"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mBearer:Landroid/preference/Preference;

    .line 251
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mRes:Landroid/content/res/Resources;

    .line 253
    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0029

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mAuthTypeNames:[Ljava/lang/String;

    .line 254
    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mProtocolEntries:[Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0a002d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mBearerEntries:[Ljava/lang/String;

    .line 257
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mIntentFilter:Landroid/content/IntentFilter;

    .line 258
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 265
    iput-boolean v5, p0, Lcom/android/settings/ApnInformation;->_GEMINI_PHONE:Z

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 268
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "simId"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ApnInformation;->mSimId:I

    .line 269
    iget v3, p0, Lcom/android/settings/ApnInformation;->mSimId:I

    if-ne v6, v3, :cond_1

    .line 272
    sget-object v3, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mProviderUri:Landroid/net/Uri;

    .line 278
    :goto_0
    const-string v3, "ApnKey"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 280
    .local v2, "key":I
    if-gez v2, :cond_2

    .line 281
    sget-object v3, Lcom/android/settings/ApnInformation;->TAG:Ljava/lang/String;

    const-string v4, "key is invalid "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 318
    :cond_0
    :goto_1
    return-void

    .line 275
    .end local v2    # "key":I
    :cond_1
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mProviderUri:Landroid/net/Uri;

    goto :goto_0

    .line 285
    .restart local v2    # "key":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mProviderUri:Landroid/net/Uri;

    int-to-long v4, v2

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mUri:Landroid/net/Uri;

    .line 287
    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 288
    sget-object v3, Lcom/android/settings/ApnInformation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert new telephony provider into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 295
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/settings/ApnInformation;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v7, v7}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    .line 296
    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 298
    new-instance v3, Lcom/android/settings/ApnInformation$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/settings/ApnInformation$3;-><init>(Lcom/android/settings/ApnInformation;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/settings/ApnInformation;->mContentObserver:Landroid/database/ContentObserver;

    .line 308
    invoke-direct {p0}, Lcom/android/settings/ApnInformation;->fillUi()V

    .line 309
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ApnInformation;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/settings/ApnInformation;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 312
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 315
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApnInformation;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 353
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 354
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 444
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 445
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 452
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 447
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 448
    const/4 v1, 0x1

    goto :goto_0

    .line 445
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/ApnInformation;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 348
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 349
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 322
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 324
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->telephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ApnInformation;->mIsCallStateIdle:Z

    .line 330
    iget-object v0, p0, Lcom/android/settings/ApnInformation;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/ApnInformation;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 334
    :cond_0
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/ApnInformation;->mAirplaneModeEnabled:Z

    .line 335
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dual_sim_mode_setting"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ApnInformation;->mDualSimMode:I

    .line 337
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/settings/ApnInformation;->mIsCallStateIdle:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/ApnInformation;->mAirplaneModeEnabled:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/settings/ApnInformation;->mDualSimMode:I

    if-eq v3, v4, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 338
    return-void

    :cond_1
    move v0, v2

    .line 329
    goto :goto_0

    :cond_2
    move v1, v2

    .line 337
    goto :goto_1
.end method
