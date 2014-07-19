.class Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AllSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/AllSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# static fields
.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x3

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_SWITCH:I = 0x2


# instance fields
.field private final mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private final mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

.field private mIdeaUI_preference_background_bottom:I

.field private mIdeaUI_preference_background_middle:I

.field private mIdeaUI_preference_background_single:I

.field private mIdeaUI_preference_background_top:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsAirlineMode:Z

.field private mIsMmsOngoing:Z

.field private mIsSimEnable:Z

.field private final mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v1, 0x0

    .line 1038
    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 954
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsMmsOngoing:Z

    .line 955
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsAirlineMode:Z

    .line 959
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    .line 1040
    iput-object p3, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 1041
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1045
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1046
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 1048
    new-instance v1, Lcom/android/settings/dataconnection/DataEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/dataconnection/DataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    .line 1049
    new-instance v1, Lcom/android/settings/AirplaneModeEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 1053
    new-instance v1, Lcom/android/settings/WiFiSwitchEnabler;

    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/WiFiSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

    .line 1057
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    const v1, 0x301000f

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 1063
    .local v0, "res_id":I
    iput v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_top:I

    .line 1065
    const v1, 0x3010010

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 1067
    iput v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_middle:I

    .line 1069
    const v1, 0x3010011

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 1071
    iput v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_bottom:I

    .line 1073
    const v1, 0x3010012

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 1075
    iput v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_single:I

    .line 1078
    .end local v0    # "res_id":I
    :cond_0
    return-void
.end method

.method private IdeaUI_bindItemBackground(ILandroid/view/View;)V
    .locals 8
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1230
    const/4 v2, 0x0

    .line 1231
    .local v2, "isAtCategoryTop":Z
    const/4 v1, 0x0

    .line 1234
    .local v1, "isAtCategoryBottom":Z
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1235
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1240
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_0

    .line 1242
    if-nez p1, :cond_4

    .line 1243
    const/4 v2, 0x1

    .line 1254
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne p1, v7, :cond_5

    .line 1255
    const/4 v1, 0x1

    .line 1265
    :cond_3
    :goto_2
    if-eqz v2, :cond_7

    .line 1266
    if-eqz v1, :cond_6

    .line 1267
    iget v7, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_single:I

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1245
    :cond_4
    add-int/lit8 v7, p1, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceActivity$Header;

    .line 1246
    .local v5, "pre_header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v5}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v6

    .line 1248
    .local v6, "pre_headerType":I
    if-nez v6, :cond_2

    .line 1249
    const/4 v2, 0x1

    goto :goto_1

    .line 1257
    .end local v5    # "pre_header":Landroid/preference/PreferenceActivity$Header;
    .end local v6    # "pre_headerType":I
    :cond_5
    add-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    .line 1258
    .local v3, "next_header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v3}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v4

    .line 1260
    .local v4, "next_headerType":I
    if-nez v4, :cond_3

    .line 1261
    const/4 v1, 0x1

    goto :goto_2

    .line 1269
    .end local v3    # "next_header":Landroid/preference/PreferenceActivity$Header;
    .end local v4    # "next_headerType":I
    :cond_6
    iget v7, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_top:I

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1272
    :cond_7
    if-eqz v1, :cond_8

    .line 1273
    iget v7, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_bottom:I

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1275
    :cond_8
    iget v7, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIdeaUI_preference_background_middle:I

    invoke-virtual {p2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic access$700(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;)Lcom/android/settings/dataconnection/DataEnabler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    return-object v0
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 5
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    const/4 v0, 0x2

    .line 986
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0387

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return v0

    .line 988
    :cond_1
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0384

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 994
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0386

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 1002
    const/4 v0, 0x0

    goto :goto_0

    .line 1003
    :cond_2
    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0385

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v3, 0x7f0b0388

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1006
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleAirplaneModeHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 0
    .param p1, "holder"    # Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1367
    return-void
.end method

.method private handleDataConnectionHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 6
    .param p1, "holder"    # Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1356
    const-string v1, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleDataConnectionHolder(mIsMmsOngoing ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsMmsOngoing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsAirlineMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsAirlineMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsSimEnable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsMmsOngoing:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsAirlineMode:Z

    if-nez v4, :cond_1

    :goto_1
    and-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    and-int v0, v1, v2

    .line 1359
    .local v0, "enable":Z
    iget-object v1, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1360
    iget-object v1, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1361
    iget-object v1, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1363
    return-void

    .end local v0    # "enable":Z
    :cond_0
    move v1, v3

    .line 1358
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private handleDisableHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1319
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1321
    iget-object v1, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1323
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1324
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1325
    iget-boolean v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1326
    return-void

    .line 1321
    :cond_0
    const/16 v0, 0x4b

    goto :goto_0

    .line 1325
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleEnableHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1301
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1304
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1307
    :cond_0
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1310
    :cond_1
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1311
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1313
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1314
    return-void
.end method

.method private handleSimManagementHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1287
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1288
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1289
    iget-object v0, p1, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1291
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1018
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1012
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 1013
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1083
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1084
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 1085
    .local v2, "headerType":I
    const/4 v7, 0x0

    .line 1087
    .local v7, "view":Landroid/view/View;
    if-nez p2, :cond_4

    .line 1088
    new-instance v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/tabsettings/AllSettings$1;)V

    .line 1089
    .local v3, "holder":Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 1132
    :goto_0
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1139
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1195
    :goto_2
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0387

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 1196
    invoke-direct {p0, v3, v7}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->handleDataConnectionHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    .line 1198
    :cond_0
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0384

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    .line 1199
    invoke-direct {p0, v3, v7}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->handleAirplaneModeHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    .line 1213
    :cond_1
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0398

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 1214
    invoke-direct {p0, v3, v7}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->handleSimManagementHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    .line 1221
    :goto_3
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1222
    invoke-direct {p0, p1, v7}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->IdeaUI_bindItemBackground(ILandroid/view/View;)V

    .line 1225
    :cond_2
    return-object v7

    .line 1092
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1093
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x3040011

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    move-object v8, v7

    .line 1094
    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1099
    :cond_3
    new-instance v7, Landroid/widget/TextView;

    .end local v7    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const v10, 0x1010208

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v7    # "view":Landroid/view/View;
    move-object v8, v7

    .line 1101
    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1105
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x306001b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    #invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 1111
    :pswitch_1
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04009e

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1113
    const v8, 0x7f0b0030

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1114
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1116
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1118
    const v8, 0x7f0b0011

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Switch;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 1122
    :pswitch_2
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f04009d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1125
    const v8, 0x7f0b0030

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1126
    const v8, 0x1020016

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1128
    const v8, 0x1020010

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1134
    .end local v3    # "holder":Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    :cond_4
    move-object v7, p2

    .line 1135
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;

    .restart local v3    # "holder":Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1141
    :pswitch_3
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1146
    :pswitch_4
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0385

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    .line 1147
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v9, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1169
    :goto_4
    :pswitch_5
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v8, :cond_9

    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1171
    iget-object v8, v1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, "accType":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1174
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f08001c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1176
    iget v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1177
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1179
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1183
    .end local v0    # "accType":Ljava/lang/String;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_5
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1184
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 1185
    .local v6, "summary":Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 1186
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1148
    .end local v6    # "summary":Ljava/lang/CharSequence;
    :cond_5
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0387

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 1149
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    iget-object v9, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings/dataconnection/DataEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1153
    :cond_6
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0386

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 1155
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

    iget-object v9, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings/WiFiSwitchEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1159
    :cond_7
    iget-wide v8, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v10, 0x7f0b0384

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 1160
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    iget-object v9, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings/AirplaneModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1163
    :cond_8
    iget-object v8, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v9, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v8, v9}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_4

    .line 1181
    :cond_9
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v9, v1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1189
    .restart local v6    # "summary":Ljava/lang/CharSequence;
    :cond_a
    iget-object v8, v3, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1216
    .end local v6    # "summary":Ljava/lang/CharSequence;
    :cond_b
    invoke-direct {p0, v3, v7}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->handleEnableHolder(Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    goto/16 :goto_3

    .line 1089
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 1139
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1028
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 1033
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1023
    invoke-virtual {p0, p1}, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSimManagementAvailable(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1377
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_internet_call_value"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1380
    .local v1, "isInternetCallEnabled":I
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isInternetCallEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    invoke-static {p1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    .line 1383
    .local v2, "isVoipSupported":Z
    :goto_0
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 1384
    .local v0, "isHasSimCards":Z
    :goto_1
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isVoipSupported = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    const-string v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isHasSimCards = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsSimEnable:Z

    .line 1387
    return-void

    .end local v0    # "isHasSimCards":Z
    .end local v2    # "isVoipSupported":Z
    :cond_2
    move v2, v4

    .line 1381
    goto :goto_0

    .restart local v2    # "isVoipSupported":Z
    :cond_3
    move v0, v4

    .line 1383
    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1343
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1345
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dataconnection/DataEnabler;->pause()V

    .line 1346
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 1350
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/WiFiSwitchEnabler;->pause()V

    .line 1352
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1330
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1332
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dataconnection/DataEnabler;->resume()V

    .line 1333
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 1337
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mWiFiSwitchEnabler:Lcom/android/settings/WiFiSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/WiFiSwitchEnabler;->resume()V

    .line 1339
    return-void
.end method

.method public updateAirPlaneMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1370
    iput-boolean p1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsAirlineMode:Z

    .line 1371
    return-void
.end method

.method public updateIsMmsOngoing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1374
    iput-boolean p1, p0, Lcom/android/settings/tabsettings/AllSettings$HeaderAdapter;->mIsMmsOngoing:Z

    .line 1375
    return-void
.end method
