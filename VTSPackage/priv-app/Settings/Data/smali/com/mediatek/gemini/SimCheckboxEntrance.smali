.class public Lcom/mediatek/gemini/SimCheckboxEntrance;
.super Landroid/preference/PreferenceActivity;
.source "SimCheckboxEntrance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimCheckboxEntrance"


# instance fields
.field private mDisableWhenRadioOff:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field protected mSimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    .line 38
    new-instance v0, Lcom/mediatek/gemini/SimCheckboxEntrance$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimCheckboxEntrance$1;-><init>(Lcom/mediatek/gemini/SimCheckboxEntrance;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimCheckboxEntrance;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimCheckboxEntrance;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimCheckboxEntrance;->updateSimState(II)V

    return-void
.end method

.method private getSimIndicator(I)I
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, -0x1

    .line 176
    const-string v4, "SimCheckboxEntrance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimIndicator---slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :try_start_0
    const-string v4, "phoneEx"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    .line 180
    .local v2, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    if-eqz v2, :cond_0

    .line 181
    invoke-interface {v2, p1}, Lcom/mediatek/common/telephony/ITelephonyEx;->getSimIndicatorState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 190
    .end local v2    # "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :cond_0
    :goto_0
    return v3

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimCheckboxEntrance"

    const-string v5, "RemoteException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v4, "SimCheckboxEntrance"

    const-string v5, "NullPointerException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSimState(II)V
    .locals 7
    .param p1, "slotID"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 207
    invoke-static {p0, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 209
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_0

    .line 211
    iget-wide v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimInfoPreference;

    .line 214
    .local v0, "pref":Lcom/mediatek/gemini/SimInfoPreference;
    if-nez v0, :cond_1

    .line 230
    .end local v0    # "pref":Lcom/mediatek/gemini/SimInfoPreference;
    :cond_0
    :goto_0
    return-void

    .line 217
    .restart local v0    # "pref":Lcom/mediatek/gemini/SimInfoPreference;
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mediatek/gemini/SimInfoPreference;->setStatus(I)V

    .line 219
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    if-eqz v2, :cond_2

    .line 220
    if-ne p2, v4, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 222
    const-string v2, "SimCheckboxEntrance"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simInfoPref.setEnabled(); "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne p2, v4, :cond_4

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_2
    const-string v2, "SimCheckboxEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimState of sim "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v2, v4

    .line 220
    goto :goto_1

    :cond_4
    move v3, v4

    .line 222
    goto :goto_2
.end method


# virtual methods
.method protected addSimInfoPreference()V
    .locals 19

    .prologue
    .line 131
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    .line 133
    .local v17, "root":Landroid/preference/PreferenceScreen;
    if-nez v17, :cond_1

    .line 174
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 137
    invoke-static/range {p0 .. p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    new-instance v4, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v4}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 142
    const-string v3, "SimCheckboxEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hot swap_mSimList.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v16, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    .local v16, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 148
    .end local v16    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 150
    .local v18, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mediatek/gemini/SimCheckboxEntrance;->getSimIndicator(I)I

    move-result v7

    .line 155
    .local v7, "status":I
    new-instance v2, Lcom/mediatek/gemini/SimInfoPreference;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v6, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    move-object/from16 v0, v18

    iget v9, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZZ)V

    .line 160
    .local v2, "simInfoPref":Lcom/mediatek/gemini/SimInfoPreference;
    const-string v3, "SimCheckboxEntrance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state of sim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    if-eqz v2, :cond_3

    .line 163
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/mediatek/gemini/SimCheckboxEntrance;->updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 164
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    if-eqz v3, :cond_4

    .line 165
    const/4 v3, 0x1

    if-ne v7, v3, :cond_5

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 166
    const-string v4, "SimCheckboxEntrance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "simInfoPref.setEnabled(); "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v3, 0x1

    if-ne v7, v3, :cond_6

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 165
    :cond_5
    const/4 v3, 0x1

    goto :goto_1

    .line 166
    :cond_6
    const/4 v3, 0x1

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f060043

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    .line 85
    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->shouldDisableWhenRadioOff()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mDisableWhenRadioOff:Z

    .line 89
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 90
    invoke-virtual {p0}, Lcom/mediatek/gemini/SimCheckboxEntrance;->addSimInfoPreference()V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/mediatek/gemini/SimCheckboxEntrance;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 116
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 97
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 98
    return-void
.end method

.method protected shouldDisableWhenRadioOff()Z
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected updateCheckState(Lcom/mediatek/gemini/SimInfoPreference;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 0
    .param p1, "pref"    # Lcom/mediatek/gemini/SimInfoPreference;
    .param p2, "siminfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 203
    return-void
.end method
