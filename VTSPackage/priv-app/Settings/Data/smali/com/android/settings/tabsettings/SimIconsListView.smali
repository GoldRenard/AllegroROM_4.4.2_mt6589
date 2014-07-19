.class public Lcom/android/settings/tabsettings/SimIconsListView;
.super Landroid/widget/ListView;
.source "SimIconsListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tabsettings/SimIconsListView$SimItem;,
        Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;,
        Lcom/android/settings/tabsettings/SimIconsListView$SimInfoViewHolder;
    }
.end annotation


# static fields
.field private static final CUMccMnc:Ljava/lang/String; = "46001"

.field private static final DBG:Z = true

.field private static final DIALOG_DATA_CONNECTION:I = 0x0

.field private static IsCU:Z = false

.field private static final TAG:Ljava/lang/String; = "SimIconsListView"

.field private static mIsCU:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsNoCUCard:Z

.field private mSelectedSimId:J

.field private mServiceType:Ljava/lang/String;

.field private mSimInfotListAdapter:Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;

.field private mSimItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/tabsettings/SimIconsListView$SimItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-boolean v0, Lcom/android/settings/tabsettings/SimIconsListView;->mIsCU:Z

    .line 61
    sput-boolean v0, Lcom/android/settings/tabsettings/SimIconsListView;->IsCU:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    .line 62
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mIsNoCUCard:Z

    .line 64
    new-instance v0, Lcom/android/settings/tabsettings/SimIconsListView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/SimIconsListView$1;-><init>(Lcom/android/settings/tabsettings/SimIconsListView;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mServiceType:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/tabsettings/SimIconsListView;->initListViews()V

    .line 79
    invoke-static {}, Lcom/android/settings/tabsettings/SIMHelper;->isCU()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    sput-boolean v1, Lcom/android/settings/tabsettings/SimIconsListView;->mIsCU:Z

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tabsettings/SimIconsListView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/SimIconsListView;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/tabsettings/SimIconsListView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/tabsettings/SimIconsListView;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSelectedSimId:J

    return-wide v0
.end method

.method private initListViews()V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mTelephonyManager:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/tabsettings/SimIconsListView;->initSimList()V

    .line 94
    new-instance v1, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;

    iget-object v2, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;-><init>(Lcom/android/settings/tabsettings/SimIconsListView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimInfotListAdapter:Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;

    .line 95
    iget-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimInfotListAdapter:Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    return-void
.end method


# virtual methods
.method public initSimList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 352
    iget-object v6, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mServiceType:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/tabsettings/SIMHelper;->getDefaultSIM(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSelectedSimId:J

    .line 354
    iget-object v6, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 359
    iget-object v6, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 360
    .local v3, "simList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/Telephony$SIMInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 403
    :cond_0
    return-void

    .line 363
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_4

    .line 364
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 365
    .local v2, "simInfo":Landroid/provider/Telephony$SIMInfo;
    const-string v1, ""

    .line 366
    .local v1, "numeric":Ljava/lang/String;
    iget v6, v2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-ne v6, v8, :cond_3

    .line 367
    const-string v6, "gsm.sim.operator.numeric.2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    :goto_1
    const-string v6, "46001"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v8, :cond_2

    .line 372
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mIsNoCUCard:Z

    .line 373
    const-string v6, "SimIconsListView"

    const-string v7, "IsAllCUCard = true;"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_3
    const-string v6, "gsm.sim.operator.numeric"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 388
    .end local v1    # "numeric":Ljava/lang/String;
    .end local v2    # "simInfo":Landroid/provider/Telephony$SIMInfo;
    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 389
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/Telephony$SIMInfo;

    .line 390
    .restart local v2    # "simInfo":Landroid/provider/Telephony$SIMInfo;
    if-eqz v2, :cond_5

    .line 392
    new-instance v4, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;-><init>(Lcom/android/settings/tabsettings/SimIconsListView;Landroid/provider/Telephony$SIMInfo;)V

    .line 393
    .local v4, "simitem":Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
    const/4 v5, 0x5

    .line 394
    .local v5, "state":I
    iput v5, v4, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mState:I

    .line 395
    iget-object v6, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    .end local v4    # "simitem":Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
    .end local v5    # "state":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public notifyDataChange()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimInfotListAdapter:Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimInfotListAdapter:Lcom/android/settings/tabsettings/SimIconsListView$SimInfotListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 409
    :cond_0
    return-void
.end method

.method public updateResources()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mServiceType:Ljava/lang/String;

    const-string v1, "gprs_connection_sim_setting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mSimItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    iget-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView;->mContext:Landroid/content/Context;

    const v2, 0x7f090211

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    .line 417
    :cond_0
    return-void
.end method
