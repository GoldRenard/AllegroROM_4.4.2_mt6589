.class Lcom/android/settings/ApnEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 195
    const-string v4, "state"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 196
    .local v1, "airplaneModeEnabled":Z
    if-eqz v1, :cond_0

    .line 197
    # getter for: Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "receiver: ACTION_AIRPLANE_MODE_CHANGED in ApnEditor"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # invokes: Lcom/android/settings/ApnEditor;->radioOffExit()V
    invoke-static {v3}, Lcom/android/settings/ApnEditor;->access$100(Lcom/android/settings/ApnEditor;)V

    .line 228
    .end local v1    # "airplaneModeEnabled":Z
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v4, "com.android.mms.transaction.START"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 201
    # getter for: Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "receiver: TRANSACTION_START in ApnEditor"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 203
    :cond_2
    const-string v4, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 204
    # getter for: Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "receiver: TRANSACTION_STOP in ApnEditor"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mReadOnlyMode:Z
    invoke-static {v5}, Lcom/android/settings/ApnEditor;->access$200(Lcom/android/settings/ApnEditor;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v5, v5, Lcom/android/settings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v6, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mSlotId:I
    invoke-static {v6}, Lcom/android/settings/ApnEditor;->access$300(Lcom/android/settings/ApnEditor;)I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-interface {v5, v6, v7}, Lcom/mediatek/settings/ext/IApnSettingsExt;->getScreenEnableState(ILandroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 207
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mSourceType:I
    invoke-static {v3}, Lcom/android/settings/ApnEditor;->access$400(Lcom/android/settings/ApnEditor;)I

    move-result v3

    if-nez v3, :cond_4

    .line 208
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v3, v3, Lcom/android/settings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mSlotId:I
    invoke-static {v4}, Lcom/android/settings/ApnEditor;->access$300(Lcom/android/settings/ApnEditor;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mediatek/settings/ext/IApnSettingsExt;->updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V

    .line 211
    :cond_4
    const-string v3, "tethering"

    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;
    invoke-static {v4}, Lcom/android/settings/ApnEditor;->access$500(Lcom/android/settings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/apn/ApnTypePreference;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 212
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v3, v3, Lcom/android/settings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mApnTypeList:Lcom/mediatek/apn/ApnTypePreference;
    invoke-static {v4}, Lcom/android/settings/ApnEditor;->access$500(Lcom/android/settings/ApnEditor;)Lcom/mediatek/apn/ApnTypePreference;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setApnTypePreferenceState(Landroid/preference/Preference;)V

    .line 214
    :cond_5
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v3, v3, Lcom/android/settings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mMvnoType:Landroid/preference/ListPreference;
    invoke-static {v4}, Lcom/android/settings/ApnEditor;->access$600(Lcom/android/settings/ApnEditor;)Landroid/preference/ListPreference;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setMVNOPreferenceState(Landroid/preference/Preference;)V

    .line 215
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v3, v3, Lcom/android/settings/ApnEditor;->mExt:Lcom/mediatek/settings/ext/IApnSettingsExt;

    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mMvnoMatchData:Landroid/preference/EditTextPreference;
    invoke-static {v4}, Lcom/android/settings/ApnEditor;->access$700(Lcom/android/settings/ApnEditor;)Landroid/preference/EditTextPreference;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/settings/ext/IApnSettingsExt;->setMVNOPreferenceState(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 216
    :cond_6
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 217
    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 218
    .local v2, "dualSimMode":I
    # getter for: Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiver, new dual sim mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez v2, :cond_0

    .line 220
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # invokes: Lcom/android/settings/ApnEditor;->radioOffExit()V
    invoke-static {v3}, Lcom/android/settings/ApnEditor;->access$100(Lcom/android/settings/ApnEditor;)V

    goto/16 :goto_0

    .line 222
    .end local v2    # "dualSimMode":I
    :cond_7
    const-string v3, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v4, p0, Lcom/android/settings/ApnEditor$1;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mSlotId:I
    invoke-static {v4}, Lcom/android/settings/ApnEditor;->access$300(Lcom/android/settings/ApnEditor;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/mediatek/apn/ApnUtils;->dealWithSimHotSwap(Landroid/app/Activity;I)V

    goto/16 :goto_0
.end method
