.class public Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;
.super Ljava/lang/Object;
.source "UsbSettingsExts.java"


# static fields
.field private static final DEFAULT_PLUGGED_TYPE:I = 0x0

.field private static final DEFAULT_USB_TYPE:Ljava/lang/String; = "mtp"

.field private static final EXTRA_PLUGGED_TYPE:Ljava/lang/String; = "plugged"

.field private static final EXTRA_USB_HW_DISCONNECTED:Ljava/lang/String; = "USB_HW_DISCONNECTED"

.field private static final EXTRA_USB_IS_PC_KNOW_ME:Ljava/lang/String; = "USB_IS_PC_KNOW_ME"

.field private static final FUNCTION_CHARGING:Ljava/lang/String; = "charging"

.field private static final FUNCTION_NONE:Ljava/lang/String; = "none"

.field private static final FUNCTION_NOT_SUPPORT:Ljava/lang/String; = "no"

.field private static final FUNCTION_SUPPORT:Ljava/lang/String; = "yes"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_USB_CATEGORY:Ljava/lang/String; = "usb_category"

.field private static final ORDER_UMS:I = -0x1

.field private static final PROPERTY_USB_BICR:Ljava/lang/String; = "ro.sys.usb.bicr"

.field private static final PROPERTY_USB_CHARGE_ONLY:Ljava/lang/String; = "ro.sys.usb.charging.only"

.field private static final PROPERTY_USB_CONFIG:Ljava/lang/String; = "sys.usb.config"

.field private static final PROPERTY_USB_TYPE:Ljava/lang/String; = "ro.sys.usb.storage.type"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USB_CHARGING_PLUGIN:I = 0x2


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mCurrentFunction:Ljava/lang/String;

.field private mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mNeedExit:Z

.field private mNeedUpdate:Z

.field private mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mRootContainer:Landroid/preference/PreferenceScreen;

.field private mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

.field private mUsbPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/settings/deviceinfo/UsbPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    return-void
.end method


# virtual methods
.method public addUsbSettingsItem(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/PreferenceScreen;
    .locals 13
    .param p1, "usbSettings"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 74
    .local v6, "root":Landroid/preference/PreferenceScreen;
    if-nez v6, :cond_0

    const/4 v6, 0x0

    .line 131
    .end local v6    # "root":Landroid/preference/PreferenceScreen;
    :goto_0
    return-object v6

    .line 76
    .restart local v6    # "root":Landroid/preference/PreferenceScreen;
    :cond_0
    const-string v10, "usb_mtp"

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 77
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v10, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 78
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v10, "usb_ptp"

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 81
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v10, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 82
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 86
    .local v5, "context":Landroid/content/Context;
    const-string v10, "ro.sys.usb.storage.type"

    const-string v11, "mtp"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "umsConfig":Ljava/lang/String;
    const-string v10, "mtp,mass_storage"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 90
    .local v8, "umsExist":Z
    if-eqz v8, :cond_1

    .line 91
    new-instance v10, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-direct {v10, v5}, Lcom/mediatek/settings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 92
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    const v11, 0x7f090198

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 93
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    const v11, 0x7f090199

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 94
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v10, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 95
    const-string v10, "usb_category"

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 97
    .local v9, "usbConnectionCategory":Landroid/preference/PreferenceCategory;
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 98
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setOrder(I)V

    .line 99
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v9    # "usbConnectionCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    const-string v10, "ro.sys.usb.charging.only"

    const-string v11, "no"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "chargeConfig":Ljava/lang/String;
    const-string v10, "yes"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 106
    .local v4, "chargeExist":Z
    if-eqz v4, :cond_2

    .line 107
    new-instance v10, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-direct {v10, v5}, Lcom/mediatek/settings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 108
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    const v11, 0x7f09019a

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 109
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    const v11, 0x7f09019b

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 110
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v10, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 112
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    const-string v10, "ro.sys.usb.bicr"

    const-string v11, "no"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "bicrConfig":Ljava/lang/String;
    const-string v10, "yes"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 118
    .local v2, "bicrExist":Z
    if-eqz v2, :cond_3

    .line 119
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "bicrCategory":Landroid/preference/PreferenceCategory;
    const v10, 0x7f090288

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 121
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 122
    new-instance v10, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-direct {v10, v5}, Lcom/mediatek/settings/deviceinfo/UsbPreference;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 123
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    const v11, 0x7f090272

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 124
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    const v11, 0x7f090273

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 125
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v10, p1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 127
    iget-object v10, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    iget-object v11, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    .end local v0    # "bicrCategory":Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v10, "UsbSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "umsExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " chargeExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " bicrExist : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dealWithBroadcastEvent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->getCurrentFunction()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "currentFunction":Ljava/lang/String;
    const-string v6, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    const-string v6, "USB_HW_DISCONNECTED"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v5

    .line 212
    .local v2, "isHwUsbConnected":Z
    :cond_0
    if-eqz v2, :cond_3

    .line 213
    const-string v6, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 214
    .local v3, "isPcKnowMe":Z
    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v3, :cond_2

    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    const-string v7, "charging"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 216
    :cond_1
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    .line 231
    .end local v2    # "isHwUsbConnected":Z
    .end local v3    # "isPcKnowMe":Z
    :cond_2
    :goto_0
    return-void

    .line 218
    .restart local v2    # "isHwUsbConnected":Z
    :cond_3
    const-string v6, "charging"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 219
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    goto :goto_0

    .line 221
    .end local v2    # "isHwUsbConnected":Z
    :cond_4
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 222
    const-string v6, "plugged"

    invoke-virtual {p1, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 223
    .local v4, "plugType":I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5

    .line 224
    const-string v6, "charging"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 225
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    goto :goto_0

    .line 228
    :cond_5
    iput-boolean v5, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    goto :goto_0
.end method

.method public getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 193
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "functions":Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 196
    .local v0, "commandIndex":I
    if-lez v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getFunction(Landroid/preference/Preference;)Ljava/lang/String;
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 165
    const-string v0, "none"

    .line 166
    .local v0, "function":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const-string v0, "mtp"

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    const-string v0, "ptp"

    goto :goto_0

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 171
    const-string v0, "mass_storage"

    goto :goto_0

    .line 172
    :cond_3
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 173
    const-string v0, "charging"

    goto :goto_0

    .line 174
    :cond_4
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    invoke-virtual {v1}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    const-string v0, "bicr"

    goto :goto_0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    return-object v0
.end method

.method public isMakeDefault(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedExit()Z
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedExit:Z

    return v0
.end method

.method public isNeedUpdate()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    return v0
.end method

.method public setCurrentFunction(Ljava/lang/String;)V
    .locals 0
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCurrentFunction:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mNeedUpdate:Z

    .line 239
    return-void
.end method

.method public updateCheckedStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v3, "mtp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mMtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 155
    .local v0, "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 156
    .local v2, "usb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_1

    .line 144
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "usb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    :cond_0
    const-string v3, "ptp"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mPtp:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    goto :goto_0

    .line 146
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    :cond_1
    const-string v3, "mass_storage"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUms:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    goto :goto_0

    .line 148
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    :cond_2
    const-string v3, "charging"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 149
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mCharge:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    goto :goto_0

    .line 150
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    :cond_3
    const-string v3, "bicr"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mBicr:Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    goto :goto_0

    .line 153
    .end local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "currentUsb":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    goto :goto_0

    .line 158
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method public updateEnableStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/UsbSettingsExts;->mUsbPreferenceList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/deviceinfo/UsbPreference;

    .line 136
    .local v1, "preference":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 138
    .end local v1    # "preference":Lcom/mediatek/settings/deviceinfo/UsbPreference;
    :cond_0
    return-void
.end method
