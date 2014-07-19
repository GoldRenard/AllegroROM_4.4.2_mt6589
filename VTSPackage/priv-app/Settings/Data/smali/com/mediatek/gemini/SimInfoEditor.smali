.class public Lcom/mediatek/gemini/SimInfoEditor;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimInfoEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;
    }
.end annotation


# static fields
.field private static final DIALOG_SIM_NAME_DUP:I = 0x3f2

.field private static final KEY_SIM_COLOR:Ljava/lang/String; = "sim_color"

.field private static final KEY_SIM_NAME:Ljava/lang/String; = "sim_name"

.field private static final KEY_SIM_NUMBER:Ljava/lang/String; = "sim_number"

.field private static final KEY_SIM_NUMBER_FORMAT:Ljava/lang/String; = "sim_number_format"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "status_info"

.field private static final NAME_EXISTED:I = -0x2

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SimInfoEditor"

.field private static final TYPE_COLOR:I = 0x1

.field private static final TYPE_FORMAT:I = 0x3

.field private static final TYPE_NAME:I = 0x0

.field private static final TYPE_NUMBER:I = 0x2

.field private static sArrayNumFormat:[Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLine1NumberTask:Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimColor:Lcom/mediatek/gemini/ColorPickerPreference;

.field private mSimID:J

.field private mSimName:Landroid/preference/EditTextPreference;

.field private mSimNumber:Landroid/preference/EditTextPreference;

.field private mSimNumberFormat:Landroid/preference/ListPreference;

.field private mSimStatusPreference:Landroid/preference/Preference;

.field private mSlotId:I

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    .line 80
    new-instance v0, Lcom/mediatek/gemini/SimInfoEditor$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimInfoEditor$1;-><init>(Lcom/mediatek/gemini/SimInfoEditor;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 450
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimInfoEditor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimInfoEditor;->handleAirPlane(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimInfoEditor;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/SimInfoEditor;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimInfoEditor;->handleRadioOff(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/SimInfoEditor;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;

    .prologue
    .line 47
    iget v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/SimInfoEditor;)Lcom/mediatek/common/telephony/ITelephonyEx;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/SimInfoEditor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->getSimNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/SimInfoEditor;)Landroid/preference/EditTextPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/SimInfoEditor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimInfoEditor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimInfoEditor;->updateSimNumber(Ljava/lang/String;)V

    return-void
.end method

.method private getSimNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "simNumber":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    invoke-virtual {v1, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    const-string v1, "SimInfoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-object v0
.end method

.method private handleAirPlane(Z)V
    .locals 2
    .param p1, "isAirplaneModeOn"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimStatusPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method private handleRadioOff(II)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "simStatus"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 507
    const-string v3, "SimInfoEditor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentSlotId :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    .line 510
    .local v1, "isAirplaneModeOn":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 511
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimStatusPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 517
    :cond_0
    :goto_1
    return-void

    .end local v1    # "isAirplaneModeOn":Z
    :cond_1
    move v1, v0

    .line 508
    goto :goto_0

    .line 512
    .restart local v1    # "isAirplaneModeOn":Z
    :cond_2
    iget v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    if-ne v3, p1, :cond_0

    .line 513
    if-ne v2, p2, :cond_3

    .line 514
    .local v0, "enabled":Z
    :goto_2
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimStatusPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 515
    const-string v2, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "radio status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "enabled":Z
    :cond_3
    move v0, v2

    .line 513
    goto :goto_2
.end method

.method private replaceSIMString()V
    .locals 6

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v4, 0x7f090201

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    invoke-interface {v3, v4, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f09021d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "editNameTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v0}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f090220

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "editNumTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v1}, Landroid/preference/DialogPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method

.method private setSimNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;-><init>(Lcom/mediatek/gemini/SimInfoEditor;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mLine1NumberTask:Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;

    .line 431
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mLine1NumberTask:Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 432
    return-void
.end method

.method private turnNumformatValuetoIndex(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 285
    if-nez p1, :cond_0

    .line 286
    const/4 v0, 0x2

    .line 288
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private updateInfo()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-wide v6, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v5, v6, v7}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 248
    .local v4, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v4, :cond_2

    .line 249
    iget-object v5, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 250
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    sget-object v6, Lcom/mediatek/gemini/SimInfoEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->getSimNumber()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "number":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimInfoEditor;->updateSimNumber(Ljava/lang/String;)V

    .line 258
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-static {v2}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 264
    iget v5, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimInfoEditor;->turnNumformatValuetoIndex(I)I

    move-result v1

    .line 265
    .local v1, "nIndex":I
    if-gez v1, :cond_1

    .line 282
    .end local v1    # "nIndex":I
    .end local v2    # "number":Ljava/lang/String;
    :goto_1
    return-void

    .line 252
    :cond_0
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v6, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v6, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    .restart local v1    # "nIndex":I
    .restart local v2    # "number":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    if-eqz v5, :cond_2

    .line 270
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 271
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    sget-object v6, Lcom/mediatek/gemini/SimInfoEditor;->sArrayNumFormat:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 275
    .end local v1    # "nIndex":I
    .end local v2    # "number":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/gemini/SimInfoEditor;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-static {v5, v6}, Lcom/mediatek/gemini/GeminiUtils;->getSimIndicator(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ITelephony;)I

    move-result v3

    .line 278
    .local v3, "simIndicator":I
    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    .line 280
    .local v0, "enabled":Z
    :cond_3
    const-string v5, "SimInfoEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateInfo simStatusPreference:  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimStatusPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateSimNumber(Ljava/lang/String;)V
    .locals 2
    .param p1, "simNumber"    # Ljava/lang/String;

    .prologue
    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    :cond_0
    sget-object p1, Lcom/mediatek/gemini/SimInfoEditor;->sNotSet:Ljava/lang/String;

    .line 444
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 379
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 386
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09075c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/gemini/SimInfoEditor;->sNotSet:Ljava/lang/String;

    .line 117
    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->getSimInfoExtra(Lcom/android/settings/SettingsPreferenceFragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 119
    const-string v4, "simid"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-wide v5, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v4, v5, v6}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 122
    .local v3, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_2

    .line 123
    iget v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    .line 129
    const-string v4, "SimInfoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string v4, "SimInfoEditor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a006c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/mediatek/gemini/SimInfoEditor;->sArrayNumFormat:[Ljava/lang/String;

    .line 133
    const v4, 0x7f060045

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 134
    const-string v4, "sim_number_format"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    .line 136
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 137
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 139
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    :cond_1
    const-string v4, "sim_name"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    .line 143
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    const-string v4, "sim_number"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/EditTextPreference;

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    .line 146
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/view/View;->setTextDirection(I)V

    .line 147
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 155
    const-string v4, "status_info"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimStatusPreference:Landroid/preference/Preference;

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 158
    .local v1, "parent":Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 160
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v4, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    .line 164
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    .line 165
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 166
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 168
    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->setSimInfoView(Lcom/android/settings/SettingsPreferenceFragment;)V

    .line 171
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const-string v5, "sim_color"

    invoke-interface {v4, p0, v5}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSimColorEditPreference(Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->replaceSIMString()V

    .line 173
    .end local v1    # "parent":Landroid/preference/PreferenceGroup;
    .end local v2    # "prefSet":Landroid/preference/PreferenceScreen;
    :goto_0
    return-void

    .line 125
    :cond_2
    const-string v4, "SimInfoEditor"

    const-string v5, "SimInfoManager query failed"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 402
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 404
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 425
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 406
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09021e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 408
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 410
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f09021f

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 413
    const v2, 0x104000a

    new-instance v3, Lcom/mediatek/gemini/SimInfoEditor$2;

    invoke-direct {v3, p0}, Lcom/mediatek/gemini/SimInfoEditor$2;-><init>(Lcom/mediatek/gemini/SimInfoEditor;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 422
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 211
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mLine1NumberTask:Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mLine1NumberTask:Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 215
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 205
    const-string v0, "SimInfoEditor"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 15
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 294
    .local v8, "key":Ljava/lang/String;
    const-string v1, "sim_name"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 295
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    .line 296
    .local v12, "textName":Landroid/text/Editable;
    if-eqz v12, :cond_1

    .line 297
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v1, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v11

    .line 299
    .local v11, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz v11, :cond_0

    if-eqz v2, :cond_0

    .line 301
    iget-object v1, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    const/4 v1, 0x0

    .line 373
    .end local v2    # "name":Ljava/lang/String;
    .end local v11    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v12    # "textName":Landroid/text/Editable;
    .end local p2    # "objValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 305
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v11    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v12    # "textName":Landroid/text/Editable;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    const-wide/16 v5, 0x2

    invoke-static/range {v1 .. v6}, Lcom/mediatek/telephony/SimInfoManager;->setDisplayNameEx(Landroid/content/Context;Ljava/lang/String;JJ)I

    move-result v10

    .line 308
    .local v10, "result":I
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    if-lez v10, :cond_2

    .line 311
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v7, "intent":Landroid/content/Intent;
    const-string v1, "simid"

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 314
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 373
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v10    # "result":I
    .end local v11    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v12    # "textName":Landroid/text/Editable;
    .end local p2    # "objValue":Ljava/lang/Object;
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v10    # "result":I
    .restart local v11    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v12    # "textName":Landroid/text/Editable;
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_2
    const/4 v1, -0x2

    if-ne v10, v1, :cond_3

    .line 319
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 322
    :cond_3
    if-eqz v11, :cond_4

    iget-object v1, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    iget-object v3, v11, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 326
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 330
    .end local v2    # "name":Ljava/lang/String;
    .end local v10    # "result":I
    .end local v11    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v12    # "textName":Landroid/text/Editable;
    :cond_5
    const-string v1, "sim_color"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 331
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-wide v4, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v3, v1, v4, v5}, Lcom/mediatek/telephony/SimInfoManager;->setColor(Landroid/content/Context;IJ)I

    move-result v1

    if-lez v1, :cond_1

    .line 333
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set color succeed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "simid"

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    const-string v1, "type"

    const/4 v3, 0x1

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 339
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v1, "sim_number"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 340
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    .line 341
    .local v13, "textNumber":Landroid/text/Editable;
    if-eqz v13, :cond_1

    .line 342
    const-string v1, "SimInfoEditor"

    const-string v3, "textNumber != null "

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/gemini/SimInfoEditor;->setSimNumber(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 347
    .end local v13    # "textNumber":Landroid/text/Editable;
    :cond_7
    const-string v1, "sim_number_format"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 349
    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 350
    .local v14, "value":I
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_SIM_NUMBER_FORMAT is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    if-gez v14, :cond_8

    .line 353
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 355
    :cond_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-static {v1, v14, v3, v4}, Lcom/mediatek/telephony/SimInfoManager;->setDispalyNumberFormat(Landroid/content/Context;IJ)I

    move-result v1

    if-lez v1, :cond_1

    .line 357
    const-string v1, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set format succeed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct {p0, v14}, Lcom/mediatek/gemini/SimInfoEditor;->turnNumformatValuetoIndex(I)I

    move-result v9

    .line 362
    .local v9, "nIndex":I
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    if-eqz v1, :cond_9

    .line 363
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimNumberFormat:Landroid/preference/ListPreference;

    sget-object v3, Lcom/mediatek/gemini/SimInfoEditor;->sArrayNumFormat:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 366
    :cond_9
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .restart local v7    # "intent":Landroid/content/Intent;
    const-string v1, "simid"

    iget-wide v3, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J

    invoke-virtual {v7, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 368
    const-string v1, "type"

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "status_info"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "it":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.deviceinfo.Status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 243
    .end local v0    # "it":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 194
    invoke-direct {p0}, Lcom/mediatek/gemini/SimInfoEditor;->updateInfo()V

    .line 195
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mIntentFilter:Landroid/content/IntentFilter;

    .line 197
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 391
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor;->mSimName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 392
    .local v0, "d":Landroid/app/Dialog;
    instance-of v1, v0, Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 393
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0    # "d":Landroid/app/Dialog;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 397
    :cond_0
    return-void

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
