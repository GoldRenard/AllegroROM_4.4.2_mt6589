.class public Lcom/android/settings/fuelgauge/PowerUsageDetail;
.super Landroid/app/Fragment;
.source "PowerUsageDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageDetail$2;,
        Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    }
.end annotation


# static fields
.field public static final ACTION_APP_DETAILS:I = 0x5

.field public static final ACTION_BLUETOOTH_SETTINGS:I = 0x3

.field public static final ACTION_DISPLAY_SETTINGS:I = 0x1

.field public static final ACTION_FORCE_STOP:I = 0x7

.field public static final ACTION_LOCATION_SETTINGS:I = 0x6

.field public static final ACTION_REPORT:I = 0x8

.field public static final ACTION_WIFI_SETTINGS:I = 0x2

.field public static final ACTION_WIRELESS_SETTINGS:I = 0x4

.field public static final EXTRA_DETAIL_TYPES:Ljava/lang/String; = "types"

.field public static final EXTRA_DETAIL_VALUES:Ljava/lang/String; = "values"

.field public static final EXTRA_DRAIN_TYPE:Ljava/lang/String; = "drainType"

.field public static final EXTRA_GAUGE:Ljava/lang/String; = "gauge"

.field public static final EXTRA_ICON_ID:Ljava/lang/String; = "iconId"

.field public static final EXTRA_ICON_PACKAGE:Ljava/lang/String; = "iconPackage"

.field public static final EXTRA_NO_COVERAGE:Ljava/lang/String; = "noCoverage"

.field public static final EXTRA_PERCENT:Ljava/lang/String; = "percent"

.field public static final EXTRA_REPORT_CHECKIN_DETAILS:Ljava/lang/String; = "report_checkin_details"

.field public static final EXTRA_REPORT_DETAILS:Ljava/lang/String; = "report_details"

.field public static final EXTRA_SHOW_LOCATION_BUTTON:Ljava/lang/String; = "showLocationButton"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field public static final EXTRA_UID:Ljava/lang/String; = "uid"

.field public static final EXTRA_USAGE_DURATION:Ljava/lang/String; = "duration"

.field public static final EXTRA_USAGE_SINCE:Ljava/lang/String; = "since"

.field private static final TAG:Ljava/lang/String; = "PowerUsageDetail"

.field public static final USAGE_SINCE_RESET:I = 0x2

.field public static final USAGE_SINCE_UNPLUGGED:I = 0x1

.field private static sDrainTypeDesciptions:[I


# instance fields
.field mApp:Landroid/content/pm/ApplicationInfo;

.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mControlsParent:Landroid/view/ViewGroup;

.field private mDetailsParent:Landroid/view/ViewGroup;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field private mForceStopButton:Landroid/widget/Button;

.field mInstaller:Landroid/content/ComponentName;

.field private mNoCoverage:D

.field private mPackages:[Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReportButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/View;

.field private mShowLocationButton:Z

.field private mStartTime:J

.field private mTitle:Ljava/lang/String;

.field private mTitleView:Landroid/widget/TextView;

.field private mTwoButtonsPanel:Landroid/view/ViewGroup;

.field private mTypes:[I

.field private mUid:I

.field private mUsageSince:I

.field private mUsesGps:Z

.field private mValues:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    return-void

    :array_0
    .array-data 4
        0x7f0909ac
        0x7f0909ad
        0x7f0909ab
        0x7f0909b1
        0x7f0909b3
        0x7f0909af
        0x7f0909b6
        0x7f0909ba
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 446
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageDetail;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/PowerUsageDetail;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/PowerUsageDetail;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    return-object v0
.end method

.method private addControl(III)V
    .locals 7
    .param p1, "title"    # I
    .param p2, "summary"    # I
    .param p3, "action"    # I

    .prologue
    .line 414
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 415
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 416
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040089

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 417
    .local v2, "item":Landroid/view/ViewGroup;
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 418
    const v5, 0x7f0b0112

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 419
    .local v0, "actionButton":Landroid/widget/Button;
    const v5, 0x7f0b0052

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 420
    .local v4, "summaryView":Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method private checkForceStop()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 454
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v3, 0x2710

    if-ge v0, v3, :cond_1

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    :goto_0
    return-void

    .line 458
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 458
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 464
    :cond_3
    const/4 v8, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 467
    .local v9, "info":Landroid/content/pm/ApplicationInfo;
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-nez v0, :cond_5

    .line 468
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v9    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v3, "package"

    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 476
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v0, "android.intent.extra.UID"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 478
    const-string v0, "android.intent.extra.user_handle"

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 479
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/ContextWrapper;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 471
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 464
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private createDetails()V
    .locals 17

    .prologue
    .line 172
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 173
    .local v2, "args":Landroid/os/Bundle;
    const-string v13, "title"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    .line 174
    const-string v13, "percent"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 175
    .local v8, "percentage":I
    const-string v13, "gauge"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 176
    .local v4, "gaugeValue":I
    const-string v13, "since"

    const/4 v14, 0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsageSince:I

    .line 177
    const-string v13, "uid"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    .line 178
    const-string v13, "drainType"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 179
    const-string v13, "noCoverage"

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v13, v14, v15}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v13

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    .line 180
    const-string v13, "iconPackage"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "iconPackage":Ljava/lang/String;
    const-string v13, "iconId"

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 182
    .local v6, "iconId":I
    const-string v13, "showLocationButton"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    .line 183
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 185
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 186
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v9, v7, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    iget-object v1, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 187
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {v1, v9}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_1

    .line 197
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020010

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 202
    .local v11, "summary":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->getDescriptionForDrainType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 205
    const-string v13, "types"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    .line 206
    const-string v13, "values"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    .line 208
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020016

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    .line 209
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTitle:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020014

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 212
    .local v12, "text1":Landroid/widget/TextView;
    const v13, 0x7f090b51

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0b01f7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    .line 215
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0b02c3

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    .line 216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0b02c4

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    .line 217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x102000d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ProgressBar;

    .line 220
    .local v10, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v10, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x1020006

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 223
    .local v5, "icon":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0b01f8

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v14, 0x7f0b01f9

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    .line 228
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillDetailsSection()V

    .line 229
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillPackagesSection(I)V

    .line 230
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->fillControlsSection(I)V

    .line 232
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUid:I

    const/16 v14, 0x2710

    if-lt v13, v14, :cond_6

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const v14, 0x7f090827

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 234
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    const/4 v14, 0x7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mForceStopButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const v14, 0x1040406

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(I)V

    .line 237
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    const/16 v14, 0x8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "send_action_app_error"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 243
    .local v3, "enabled":I
    if-eqz v3, :cond_5

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v13, v13

    if-lez v13, :cond_2

    .line 246
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v13, v14, v15}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 253
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mReportButton:Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 260
    .end local v3    # "enabled":I
    :goto_3
    return-void

    .line 193
    .end local v5    # "icon":Landroid/widget/ImageView;
    .end local v10    # "progress":Landroid/widget/ProgressBar;
    .end local v11    # "summary":Landroid/widget/TextView;
    .end local v12    # "text1":Landroid/widget/TextView;
    :cond_3
    if-eqz v6, :cond_0

    .line 194
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 253
    .restart local v3    # "enabled":I
    .restart local v5    # "icon":Landroid/widget/ImageView;
    .restart local v10    # "progress":Landroid/widget/ProgressBar;
    .restart local v11    # "summary":Landroid/widget/TextView;
    .restart local v12    # "text1":Landroid/widget/TextView;
    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 255
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 258
    .end local v3    # "enabled":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTwoButtonsPanel:Landroid/view/ViewGroup;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 250
    .restart local v3    # "enabled":I
    :catch_0
    move-exception v13

    goto :goto_1

    .line 190
    .end local v3    # "enabled":I
    .end local v5    # "icon":Landroid/widget/ImageView;
    .end local v10    # "progress":Landroid/widget/ProgressBar;
    .end local v11    # "summary":Landroid/widget/TextView;
    .end local v12    # "text1":Landroid/widget/TextView;
    :catch_1
    move-exception v13

    goto/16 :goto_0
.end method

.method private doAction(I)V
    .locals 7
    .param p1, "action"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 278
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 279
    .local v0, "pa":Landroid/preference/PreferenceActivity;
    packed-switch p1, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 281
    :pswitch_0
    const-class v1, Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0906ab

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 285
    :pswitch_1
    const-class v1, Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0905f0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 289
    :pswitch_2
    const-class v1, Lcom/android/settings/bluetooth/BluetoothSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090585

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 293
    :pswitch_3
    const-class v1, Lcom/android/settings/WirelessSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090502

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 297
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startApplicationDetailsActivity()V

    goto :goto_0

    .line 300
    :pswitch_5
    const-class v1, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090530

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 304
    :pswitch_6
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->killProcesses()V

    goto :goto_0

    .line 307
    :pswitch_7
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->reportBatteryUse()V

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private fillControlsSection(I)V
    .locals 9
    .param p1, "uid"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 354
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 355
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "packages":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 358
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_2

    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 360
    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 362
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :goto_1
    const/4 v4, 0x1

    .line 363
    .local v4, "removeHeader":Z
    sget-object v5, Lcom/android/settings/fuelgauge/PowerUsageDetail$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 408
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 409
    iget-object v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mControlsParent:Landroid/view/ViewGroup;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_1
    return-void

    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :cond_2
    move-object v2, v5

    .line 358
    goto :goto_0

    :cond_3
    move-object v0, v5

    .line 360
    goto :goto_1

    .line 366
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "removeHeader":Z
    :pswitch_0
    if-eqz v1, :cond_4

    array-length v5, v1

    if-ne v5, v8, :cond_4

    .line 367
    const v5, 0x7f0909a6

    const v6, 0x7f0909b7

    const/4 v7, 0x5

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 369
    const/4 v4, 0x0

    .line 375
    :cond_4
    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mShowLocationButton:Z

    if-eqz v5, :cond_0

    .line 376
    const v5, 0x7f090530

    const v6, 0x7f0909b8

    const/4 v7, 0x6

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 378
    const/4 v4, 0x0

    goto :goto_2

    .line 382
    :pswitch_1
    const v5, 0x7f0906da

    const v6, 0x7f0909b0

    invoke-direct {p0, v5, v6, v8}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 385
    const/4 v4, 0x0

    .line 386
    goto :goto_2

    .line 388
    :pswitch_2
    const v5, 0x7f0905f0

    const v6, 0x7f0909b2

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 391
    const/4 v4, 0x0

    .line 392
    goto :goto_2

    .line 394
    :pswitch_3
    const v5, 0x7f090585

    const v6, 0x7f0909b4

    const/4 v7, 0x3

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 397
    const/4 v4, 0x0

    .line 398
    goto :goto_2

    .line 400
    :pswitch_4
    iget-wide v5, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mNoCoverage:D

    const-wide/high16 v7, 0x4024000000000000L

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 401
    const v5, 0x7f090502

    const v6, 0x7f0909ae

    const/4 v7, 0x4

    invoke-direct {p0, v5, v6, v7}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->addControl(III)V

    .line 404
    const/4 v4, 0x0

    goto :goto_2

    .line 359
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "removeHeader":Z
    :catch_0
    move-exception v6

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private fillDetailsSection()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 314
    .local v3, "inflater":Landroid/view/LayoutInflater;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    if-eqz v9, :cond_1

    .line 315
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    array-length v9, v9

    if-ge v2, v9, :cond_1

    .line 317
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v9, v9, v2

    const-wide/16 v11, 0x0

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_0

    .line 315
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v9, v9, v2

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, "label":Ljava/lang/String;
    const/4 v8, 0x0

    .line 320
    .local v8, "value":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mTypes:[I

    aget v9, v9, v2

    packed-switch v9, :pswitch_data_0

    .line 336
    :goto_2
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v10, v10, v2

    invoke-static {v9, v10, v11, v14}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v8

    .line 338
    :goto_3
    const v9, 0x7f04008a

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 340
    .local v4, "item":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDetailsParent:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 341
    const v9, 0x7f0b01a0

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 347
    .local v6, "labelView":Landroid/widget/TextView;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 325
    .end local v4    # "item":Landroid/view/ViewGroup;
    .end local v6    # "labelView":Landroid/widget/TextView;
    :pswitch_1
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v9, v9, v2

    double-to-long v0, v9

    .line 326
    .local v0, "bytes":J
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    .line 327
    goto :goto_3

    .line 329
    .end local v0    # "bytes":J
    :pswitch_2
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mValues:[D

    aget-wide v9, v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v7, v9

    .line 330
    .local v7, "percentage":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090b51

    new-array v11, v14, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 331
    goto :goto_3

    .line 333
    .end local v7    # "percentage":I
    :pswitch_3
    iput-boolean v14, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mUsesGps:Z

    goto :goto_2

    .line 351
    .end local v2    # "i":I
    .end local v5    # "label":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    return-void

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x7f09099a
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private fillPackagesSection(I)V
    .locals 10
    .param p1, "uid"    # I

    .prologue
    .line 510
    const/4 v8, 0x1

    if-ge p1, v8, :cond_1

    .line 511
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v9, 0x7f0b01fc

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 515
    .local v6, "packagesParent":Landroid/view/ViewGroup;
    if-eqz v6, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 518
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 520
    .local v7, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    .line 521
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    const/4 v9, 0x2

    if-ge v8, v9, :cond_3

    .line 522
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->removePackagesSection()V

    goto :goto_0

    .line 527
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    if-ge v1, v8, :cond_0

    .line 529
    :try_start_0
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 530
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 532
    .local v4, "label":Ljava/lang/CharSequence;
    if-eqz v4, :cond_4

    .line 533
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v1

    .line 538
    :cond_4
    const v8, 0x7f04008c

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 540
    .local v3, "item":Landroid/view/ViewGroup;
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 541
    const v8, 0x7f0b01a0

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 542
    .local v5, "labelView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "item":Landroid/view/ViewGroup;
    .end local v4    # "label":Ljava/lang/CharSequence;
    .end local v5    # "labelView":Landroid/widget/TextView;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 543
    :catch_0
    move-exception v8

    goto :goto_2
.end method

.method private getDescriptionForDrainType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 549
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageDetail;->sDrainTypeDesciptions:[I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDrainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private killProcesses()V
    .locals 4

    .prologue
    .line 437
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 444
    :goto_0
    return-void

    .line 438
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 440
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 441
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    goto :goto_0
.end method

.method private removePackagesSection()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 428
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0b01fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    const v2, 0x7f0b01fc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    :cond_1
    return-void
.end method

.method private reportBatteryUse()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 507
    :goto_0
    return-void

    .line 486
    :cond_0
    new-instance v2, Landroid/app/ApplicationErrorReport;

    invoke-direct {v2}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 487
    .local v2, "report":Landroid/app/ApplicationErrorReport;
    const/4 v6, 0x3

    iput v6, v2, Landroid/app/ApplicationErrorReport;->type:I

    .line 488
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 489
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 490
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v6, v6, v4

    iput-object v6, v2, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 492
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mApp:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, v2, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 494
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 495
    .local v0, "args":Landroid/os/Bundle;
    new-instance v1, Landroid/app/ApplicationErrorReport$BatteryInfo;

    invoke-direct {v1}, Landroid/app/ApplicationErrorReport$BatteryInfo;-><init>()V

    .line 496
    .local v1, "batteryInfo":Landroid/app/ApplicationErrorReport$BatteryInfo;
    const-string v4, "percent"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usagePercent:I

    .line 497
    const-string v4, "duration"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->durationMicros:J

    .line 498
    const-string v4, "report_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->usageDetails:Ljava/lang/String;

    .line 499
    const-string v4, "report_checkin_details"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/ApplicationErrorReport$BatteryInfo;->checkinDetails:Ljava/lang/String;

    .line 500
    iput-object v1, v2, Landroid/app/ApplicationErrorReport;->batteryInfo:Landroid/app/ApplicationErrorReport$BatteryInfo;

    .line 502
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 503
    .local v3, "result":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mInstaller:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 504
    const-string v4, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 505
    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 506
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 269
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPackages:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 273
    .local v0, "pa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09081d

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 275
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->doAction(I)V

    .line 264
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mPm:Landroid/content/pm/PackageManager;

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 151
    const v1, 0x7f04008b

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "view":Landroid/view/View;
    invoke-static {p2, v0, v0, v2}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 154
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mRootView:Landroid/view/View;

    .line 155
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->createDetails()V

    .line 156
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 169
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 162
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageDetail;->mStartTime:J

    .line 163
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->checkForceStop()V

    .line 164
    return-void
.end method
