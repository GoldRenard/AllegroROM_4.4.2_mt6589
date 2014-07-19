.class public Lcom/mediatek/gemini/SimDataRoamingSettings;
.super Lcom/mediatek/gemini/SimCheckboxEntrance;
.source "SimDataRoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DLG_ROAMING_WARNING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SimDataRoamingSettings"


# instance fields
.field private mCurrentSimID:J

.field private mCurrentSimSlot:I

.field private mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

.field private mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;-><init>()V

    return-void
.end method

.method private getDataRoamingState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private setDataRoaming(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 183
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 184
    invoke-direct {p0, v1}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 48
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 51
    invoke-static {p0}, Lcom/android/settings/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 53
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    .line 110
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 113
    move-object v1, p0

    .line 115
    .local v1, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    const v4, 0x7f09050a

    invoke-interface {v3, v1, v4}, Lcom/mediatek/settings/ext/ISimRoamingExt;->getRoamingWarningMsg(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "SimDataRoamingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 125
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "msg":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 78
    move-object v4, p2

    check-cast v4, Lcom/mediatek/gemini/SimInfoPreference;

    iput-object v4, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    .line 79
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 81
    .local v1, "simID":J
    invoke-static {p0, v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 83
    .local v3, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_2

    .line 88
    invoke-direct {p0}, Lcom/mediatek/gemini/SimDataRoamingSettings;->getDataRoamingState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 94
    .local v0, "dataRoaming":I
    :goto_0
    iget v4, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v4, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimSlot:I

    .line 95
    iget-wide v7, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v7, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mCurrentSimID:J

    .line 96
    if-nez v0, :cond_1

    .line 97
    invoke-virtual {p0, v5}, Landroid/app/Activity;->showDialog(I)V

    :goto_1
    move v4, v5

    .line 104
    .end local v0    # "dataRoaming":I
    :goto_2
    return v4

    .line 91
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "dataRoaming":I
    goto :goto_0

    .line 99
    :cond_1
    invoke-direct {p0, v6}, Lcom/mediatek/gemini/SimDataRoamingSettings;->setDataRoaming(Z)V

    .line 100
    iget-object v4, p0, Lcom/mediatek/gemini/SimDataRoamingSettings;->mSimInfoPref:Lcom/mediatek/gemini/SimInfoPreference;

    invoke-virtual {v4, v6}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    goto :goto_1

    .end local v0    # "dataRoaming":I
    :cond_2
    move v4, v6

    .line 104
    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 57
    invoke-super {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->onResume()V

    .line 61
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 62
    .local v2, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 63
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/mediatek/gemini/SimInfoPreference;

    .line 67
    .local v3, "sp":Lcom/mediatek/gemini/SimInfoPreference;
    invoke-virtual {v3}, Lcom/mediatek/gemini/SimInfoPreference;->getSlotIndex()I

    move-result v4

    invoke-static {p0, v4}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/gemini/SimDataRoamingSettings;->updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v3    # "sp":Lcom/mediatek/gemini/SimInfoPreference;
    :cond_0
    return-void
.end method

.method protected shouldDisableWhenRadioOff()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method protected updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 1
    .param p1, "pref"    # Lcom/mediatek/gemini/SimInfoPreference;
    .param p2, "siminfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/mediatek/gemini/SimDataRoamingSettings;->getDataRoamingState()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mediatek/gemini/SimInfoPreference;->setCheck(Z)V

    .line 139
    return-void
.end method
