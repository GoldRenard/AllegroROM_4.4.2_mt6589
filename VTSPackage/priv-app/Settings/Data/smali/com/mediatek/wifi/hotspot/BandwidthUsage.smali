.class public Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.super Landroid/app/Fragment;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/wifi/hotspot/BandwidthUsage$LimitEditorFragment;
    }
.end annotation


# static fields
.field private static final EVENT_TICK:I = 0x1

.field private static final GB_IN_BYTES:J = 0x40000000L

.field private static final IFACE:Ljava/lang/String; = "ap0"

.field private static final KB_IN_BYTES:J = 0x400L

.field private static final LIMIT_MAX_SIZE:I = 0xa

.field private static final MB_IN_BYTES:J = 0x100000L

.field private static final NETWORK_INFO:Ljava/lang/String; = "network_info"

.field private static final NETWORK_LIMIT:Ljava/lang/String; = "network_limit"

.field private static final TAG:Ljava/lang/String; = "BandwidthUsage"

.field private static final TAG_LIMIT_EDITOR:Ljava/lang/String; = "limitEditor"


# instance fields
.field private mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

.field private mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mEnableThrottling:Landroid/widget/CheckBox;

.field private mEnableThrottlingView:Landroid/view/View;

.field private mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNetworkService:Landroid/os/INetworkManagementService;

.field private mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTime:J

.field private mTotalDataView:Landroid/view/View;

.field private mTotalTimeView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    .line 87
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    .line 100
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$2;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 221
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$3;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 235
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$4;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    .line 253
    new-instance v0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage$5;-><init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->updateBandwidthUsage()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/animation/LayoutTransition;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->buildLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Lcom/mediatek/widget/ChartBandwidthUsageView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setLimitData(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/wifi/hotspot/BandwidthUsage;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/BandwidthUsage;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setThrottleEnabled(Z)V

    return-void
.end method

.method private buildLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 312
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 313
    return-object v0
.end method

.method private inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "widget"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x2

    .line 320
    const v2, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, "view":Landroid/view/View;
    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 322
    .local v1, "widgetFrame":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    return-object v0
.end method

.method private refreshTimeAndData()V
    .locals 14

    .prologue
    const-wide/32 v12, 0x40000000

    const-wide/32 v10, 0x100000

    .line 342
    const-wide/16 v4, 0x0

    .line 344
    .local v4, "usedTime":J
    iget-wide v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    sub-long v4, v6, v8

    .line 348
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    long-to-double v7, v4

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "time":Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    const v7, 0x7f0902a7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    .line 352
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getTotalUsedData()J

    move-result-wide v1

    .line 354
    .local v1, "totalData":J
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    cmp-long v6, v1, v10

    if-gez v6, :cond_1

    .line 355
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const-wide/16 v6, 0x400

    div-long/2addr v1, v6

    .line 356
    const-string v3, " KB"

    .line 364
    .local v3, "unit":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    const v7, 0x7f0902a8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v6, v7, v8}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V

    .line 365
    return-void

    .line 357
    .end local v3    # "unit":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    cmp-long v6, v1, v12

    if-gez v6, :cond_2

    .line 358
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    div-long/2addr v1, v10

    .line 359
    const-string v3, " M"

    .restart local v3    # "unit":Ljava/lang/String;
    goto :goto_0

    .line 361
    .end local v3    # "unit":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    div-long/2addr v1, v12

    .line 362
    const-string v3, " G"

    .restart local v3    # "unit":Ljava/lang/String;
    goto :goto_0
.end method

.method private setLimitData(Z)V
    .locals 11
    .param p1, "enable"    # Z

    .prologue
    .line 279
    :try_start_0
    const-string v7, "ap0"

    invoke-static {v7}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v4

    .line 280
    .local v4, "ni":Ljava/net/NetworkInterface;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v7

    if-nez v7, :cond_1

    .line 281
    :cond_0
    const-string v7, "BandwidthUsage"

    const-string v8, "Network interface has been removed, setLimitData() return"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    .local v0, "e":Ljava/net/SocketException;
    const-string v7, "BandwidthUsage"

    const-string v8, "SocketException happens when getNetworkInterface return"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v4    # "ni":Ljava/net/NetworkInterface;
    :cond_1
    if-eqz p1, :cond_5

    .line 291
    :try_start_1
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v7}, Lcom/mediatek/widget/ChartBandwidthUsageView;->getLimitBytes()J

    move-result-wide v2

    .line 292
    .local v2, "limit":J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_3

    const/4 v5, 0x1

    .line 293
    .local v5, "rxBytes":I
    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_4

    const/4 v6, 0x1

    .line 294
    .local v6, "txBytes":I
    :goto_2
    const-string v7, "BandwidthUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setLimitData,setInterfaceThrottle,rxBytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",txBytes="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v8, "ap0"

    invoke-interface {v7, v8, v5, v6}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V

    .line 297
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "network_info"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 299
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "network_limit"

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_2

    const-wide/16 v2, 0x1

    .end local v2    # "limit":J
    :cond_2
    invoke-interface {v1, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 304
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "rxBytes":I
    .end local v6    # "txBytes":I
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "BandwidthUsage"

    const-string v8, " RemoteException happens when setInterfaceRxThrottle"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "limit":J
    :cond_3
    const-wide/16 v7, 0x8

    mul-long/2addr v7, v2

    const-wide/16 v9, 0x2

    mul-long/2addr v7, v9

    long-to-int v7, v7

    :try_start_2
    div-int/lit16 v5, v7, 0xc00

    goto :goto_1

    .line 293
    .restart local v5    # "rxBytes":I
    :cond_4
    const-wide/16 v7, 0x8

    mul-long/2addr v7, v2

    long-to-int v7, v7

    div-int/lit16 v6, v7, 0xc00

    goto :goto_2

    .line 302
    .end local v2    # "limit":J
    .end local v5    # "rxBytes":I
    :cond_5
    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    const-string v8, "ap0"

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-interface {v7, v8, v9, v10}, Landroid/os/INetworkManagementService;->setInterfaceThrottle(Ljava/lang/String;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private setPreferenceTitle(Landroid/view/View;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 330
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 331
    .local v0, "title":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 332
    return-void
.end method

.method private setPreferenceTitle(Landroid/view/View;ILjava/lang/String;)V
    .locals 5
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "resId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "text":Ljava/lang/String;
    const v2, 0x1020016

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 337
    .local v1, "title":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method private setThrottleEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 420
    const-string v1, "BandwidthUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setThrottleEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 422
    .local v0, "value":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "interface_throttle_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    return-void

    .line 421
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateBandwidthUsage()V
    .locals 4

    .prologue
    .line 368
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering()Landroid/net/NetworkStats;

    move-result-object v1

    .line 369
    .local v1, "networkStats":Landroid/net/NetworkStats;
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v2, v1}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setNetworkStates(Landroid/net/NetworkStats;)V

    .line 370
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "networkStats":Landroid/net/NetworkStats;
    :goto_0
    return-void

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BandwidthUsage"

    const-string v3, "RemoteException happens"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 126
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mConnManager:Landroid/net/IConnectivityManager;

    .line 128
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    .line 129
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f04008d

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    const-string v5, "BandwidthUsage"

    const-string v6, "onCreateView"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    .local v0, "context":Landroid/content/Context;
    const v5, 0x7f0400ee

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 138
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0b02f8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 139
    .local v2, "enableLayout":Landroid/widget/LinearLayout;
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    .line 140
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 141
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 142
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-direct {p0, p1, v2, v5}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->inflatePreference(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    .line 143
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setClickable(Z)V

    .line 144
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setFocusable(Z)V

    .line 145
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mOnEnableCheckBoxClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 147
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    const v6, 0x7f0902a2

    invoke-direct {p0, v5, v6}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->setPreferenceTitle(Landroid/view/View;I)V

    .line 149
    const v5, 0x7f0b00e6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/widget/ChartBandwidthUsageView;

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    .line 150
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChartListener:Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;

    invoke-virtual {v5, v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setListener(Lcom/mediatek/widget/ChartBandwidthUsageView$BandwidthChartListener;)V

    .line 152
    const v5, 0x7f0b02f9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 153
    .local v3, "timeLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p1, v9, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    .line 154
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 155
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 156
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalTimeView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 158
    const v5, 0x7f0b019b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 159
    .local v1, "dataLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p1, v9, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    .line 160
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 161
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 162
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mTotalDataView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 164
    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "BandwidthUsage"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 215
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 216
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottlingView:Landroid/view/View;

    .line 210
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    const-string v0, "BandwidthUsage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 203
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 204
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 169
    const-string v6, "BandwidthUsage"

    const-string v7, "onResume"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 171
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v5

    .line 174
    .local v1, "isAirplaneMode":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->onBackPressed()V

    .line 178
    :cond_0
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "interface_throttle_enable"

    invoke-static {v6, v7, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_1

    move v0, v5

    .line 182
    .local v0, "enable":Z
    :cond_1
    const-string v6, "BandwidthUsage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onResume,getInterfaceRxThrottle="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mEnableThrottling:Landroid/widget/CheckBox;

    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 184
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v6, v0}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitState(Z)V

    .line 186
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "network_info"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v6, v7, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 188
    .local v2, "pre":Landroid/content/SharedPreferences;
    const-string v5, "network_limit"

    invoke-interface {v2, v5, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 189
    .local v3, "value":J
    const-string v5, "BandwidthUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init limit value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    invoke-virtual {v5, v3, v4}, Lcom/mediatek/widget/ChartBandwidthUsageView;->setLimitBytes(J)V

    .line 191
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mChart:Lcom/mediatek/widget/ChartBandwidthUsageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/mediatek/widget/ChartBandwidthUsageView;->updateVertAxisBounds(Lcom/mediatek/widget/ChartSweepView;)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_hotspot_start_time"

    invoke-static {v5, v6, v9, v10}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    .line 195
    const-string v5, "BandwidthUsage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mStartTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->mStartTime:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->refreshTimeAndData()V

    .line 197
    return-void

    .end local v0    # "enable":Z
    .end local v1    # "isAirplaneMode":Z
    .end local v2    # "pre":Landroid/content/SharedPreferences;
    .end local v3    # "value":J
    :cond_2
    move v1, v0

    .line 172
    goto/16 :goto_0
.end method
