.class Lcom/android/settings/SettingsMTK$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
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
.field static final HEADER_TYPE_BUTTON:I = 0x3

.field static final HEADER_TYPE_CATEGORY:I = 0x0

.field private static final HEADER_TYPE_COUNT:I = 0x4

.field static final HEADER_TYPE_NORMAL:I = 0x1

.field static final HEADER_TYPE_SWITCH:I = 0x2


# instance fields
.field private mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsSimEnable:Z

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/accounts/AuthenticatorHelper;Landroid/app/admin/DevicePolicyManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "authenticatorHelper"    # Lcom/android/settings/accounts/AuthenticatorHelper;
    .param p4, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;",
            "Lcom/android/settings/accounts/AuthenticatorHelper;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v0, 0x0

    .line 995
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 939
    iput-boolean v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mIsSimEnable:Z

    .line 997
    iput-object p3, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    .line 998
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1002
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 1003
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 1004
    new-instance v0, Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    .line 1005
    iput-object p4, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1006
    return-void
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .param p0, "header"    # Landroid/preference/PreferenceActivity$Header;

    .prologue
    .line 955
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 956
    const/4 v0, 0x0

    .line 963
    :goto_0
    return v0

    .line 957
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0385

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0388

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 959
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 960
    :cond_2
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b0391

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 961
    const/4 v0, 0x3

    goto :goto_0

    .line 963
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleDisableHolder(Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 2
    .param p1, "holder"    # Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1182
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1184
    iget-object v1, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mIsSimEnable:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1186
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1187
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mIsSimEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1188
    iget-boolean v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mIsSimEnable:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1189
    return-void

    .line 1184
    :cond_0
    const/16 v0, 0x4b

    goto :goto_0

    .line 1188
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private handleEnableHolder(Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 1164
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1167
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1170
    :cond_0
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1173
    :cond_1
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1174
    iget-object v0, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1176
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1177
    return-void
.end method

.method private setHeaderIcon(Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1151
    iget-object v1, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1152
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1154
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1155
    iget-object v1, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    iget-object v1, p1, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1157
    return-void
.end method

.method private updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;)V
    .locals 5
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "holder"    # Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;

    .prologue
    .line 1128
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1130
    iget-object v3, p1, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, "accType":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mAuthHelper:Lcom/android/settings/accounts/AuthenticatorHelper;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/settings/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1133
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0, p2, v1}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->setHeaderIcon(Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;Landroid/graphics/drawable/Drawable;)V

    .line 1140
    .end local v0    # "accType":Ljava/lang/String;
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p2, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1141
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1142
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1143
    iget-object v3, p2, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    iget-object v3, p2, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    :goto_1
    return-void

    .line 1134
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_0
    # getter for: Lcom/android/settings/SettingsMTK;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;
    invoke-static {}, Lcom/android/settings/SettingsMTK;->access$500()Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->needCustomizeHeaderIcon(Landroid/preference/PreferenceActivity$Header;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1136
    # getter for: Lcom/android/settings/SettingsMTK;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;
    invoke-static {}, Lcom/android/settings/SettingsMTK;->access$500()Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v3

    iget-object v4, p2, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {v3, v4, p1}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeHeaderIcon(Landroid/widget/ImageView;Landroid/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 1138
    :cond_1
    iget-object v3, p2, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v4, p1, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1146
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    :cond_2
    iget-object v3, p2, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 975
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 970
    .local v0, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f0b0030

    const v9, 0x1020016

    const v8, 0x1020010

    const/4 v4, 0x0

    .line 1011
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 1012
    .local v1, "header":Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v2

    .line 1013
    .local v2, "headerType":I
    const/4 v5, 0x0

    .line 1015
    .local v5, "view":Landroid/view/View;
    if-nez p2, :cond_0

    .line 1016
    new-instance v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/SettingsMTK$1;)V

    .line 1017
    .local v3, "holder":Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
    packed-switch v2, :pswitch_data_0

    .line 1058
    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1065
    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 1116
    :goto_2
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0398

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 1118
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    # getter for: Lcom/android/settings/SettingsMTK;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;
    invoke-static {}, Lcom/android/settings/SettingsMTK;->access$500()Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090200

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    invoke-interface {v7, v8, v9}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    invoke-direct {p0, v3, v5}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->handleDisableHolder(Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    .line 1124
    :goto_3
    return-object v5

    .line 1019
    :pswitch_0
    new-instance v5, Landroid/widget/TextView;

    .end local v5    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x1010208

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v5    # "view":Landroid/view/View;
    move-object v6, v5

    .line 1021
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 1025
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04009e

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1027
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1028
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1030
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1032
    const v6, 0x7f0b0011

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto :goto_0

    .line 1036
    :pswitch_2
    iget-object v6, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04009c

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1038
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1039
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1041
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1043
    const v6, 0x7f0b020c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    .line 1044
    const v6, 0x7f0b0019

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    goto/16 :goto_0

    .line 1048
    :pswitch_3
    iget-object v6, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f04009d

    invoke-virtual {v6, v7, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1051
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1052
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1054
    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 1060
    .end local v3    # "holder":Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
    :cond_0
    move-object v5, p2

    .line 1061
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;

    .restart local v3    # "holder":Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1067
    :pswitch_4
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1072
    :pswitch_5
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0385

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1073
    iget-object v6, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v7, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1079
    :cond_1
    :goto_4
    invoke-direct {p0, v1, v3}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1074
    :cond_2
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0388

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1075
    iget-object v6, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v7, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto :goto_4

    .line 1083
    :pswitch_6
    iget-wide v6, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b0391

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 1084
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->hasAnyCaCertsInstalled()Z

    move-result v0

    .line 1085
    .local v0, "hasCert":Z
    if-eqz v0, :cond_6

    .line 1086
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1087
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v6, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v6}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    .line 1089
    .local v4, "isManaged":Z
    :cond_3
    if-eqz v4, :cond_5

    .line 1090
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x7f0200b5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1095
    :goto_5
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/settings/SettingsMTK$HeaderAdapter$1;

    invoke-direct {v7, p0}, Lcom/android/settings/SettingsMTK$HeaderAdapter$1;-><init>(Lcom/android/settings/SettingsMTK$HeaderAdapter;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1108
    .end local v0    # "hasCert":Z
    .end local v4    # "isManaged":Z
    :cond_4
    :goto_6
    invoke-direct {p0, v1, v3}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1092
    .restart local v0    # "hasCert":Z
    .restart local v4    # "isManaged":Z
    :cond_5
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    const v7, 0x1080078

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    .line 1104
    .end local v4    # "isManaged":Z
    :cond_6
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->button_:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1105
    iget-object v6, v3, Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;->divider_:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1112
    .end local v0    # "hasCert":Z
    :pswitch_7
    invoke-direct {p0, v1, v3}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->updateCommonHeaderView(Landroid/preference/PreferenceActivity$Header;Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;)V

    goto/16 :goto_2

    .line 1122
    :cond_7
    invoke-direct {p0, v3, v5}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->handleEnableHolder(Lcom/android/settings/SettingsMTK$HeaderAdapter$HeaderViewHolder;Landroid/view/View;)V

    goto/16 :goto_3

    .line 1017
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1065
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 985
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 980
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsMTK$HeaderAdapter;->getItemViewType(I)I

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

    .line 1192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enable_internet_call_value"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1195
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

    .line 1196
    invoke-static {p1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v2, v3

    .line 1198
    .local v2, "isVoipSupported":Z
    :goto_0
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 1199
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

    .line 1200
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

    .line 1201
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mIsSimEnable:Z

    .line 1202
    return-void

    .end local v0    # "isHasSimCards":Z
    .end local v2    # "isVoipSupported":Z
    :cond_2
    move v2, v4

    .line 1196
    goto :goto_0

    .restart local v2    # "isVoipSupported":Z
    :cond_3
    move v0, v4

    .line 1198
    goto :goto_1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1213
    iget-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1214
    iget-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->pause()V

    .line 1215
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1204
    const-string v0, "HeaderAdapter.resume"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->Start(Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1206
    iget-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1207
    iget-object v0, p0, Lcom/android/settings/SettingsMTK$HeaderAdapter;->mHotKnotEnabler:Lcom/mediatek/settings/hotknot/HotKnotEnabler;

    invoke-virtual {v0}, Lcom/mediatek/settings/hotknot/HotKnotEnabler;->resume()V

    .line 1208
    const-string v0, "HeaderAdapter.resume"

    invoke-static {v0}, Lcom/mediatek/settings/PDebug;->End(Ljava/lang/String;)V

    .line 1209
    return-void
.end method
