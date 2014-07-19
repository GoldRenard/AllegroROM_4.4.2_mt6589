.class Lcom/mediatek/gemini/SimManagement$5;
.super Landroid/content/BroadcastReceiver;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAirplaneOn:Z

.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 1

    .prologue
    .line 226
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement$5;->mAirplaneOn:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "action":Ljava/lang/String;
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSimReceiver action = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v9, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 235
    :cond_0
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSimNum:I
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$800(Lcom/mediatek/gemini/SimManagement;)I

    move-result v5

    .line 236
    .local v5, "previousSimNum":I
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->getSimInfo()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$900(Lcom/mediatek/gemini/SimManagement;)V

    .line 237
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "previousSimNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mSimNum = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSimNum:I
    invoke-static {v11}, Lcom/mediatek/gemini/SimManagement;->access$800(Lcom/mediatek/gemini/SimManagement;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSimNum:I
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$800(Lcom/mediatek/gemini/SimManagement;)I

    move-result v9

    if-eq v5, v9, :cond_2

    .line 240
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->initPreferenceUI()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1000(Lcom/mediatek/gemini/SimManagement;)V

    .line 321
    .end local v5    # "previousSimNum":I
    :cond_1
    :goto_0
    return-void

    .line 243
    .restart local v5    # "previousSimNum":I
    :cond_2
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->updateSimInfoForPreference()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1100(Lcom/mediatek/gemini/SimManagement;)V

    goto :goto_0

    .line 245
    .end local v5    # "previousSimNum":I
    :cond_3
    const-string v9, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 246
    const-string v9, "state"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 247
    .local v8, "state":I
    const-string v9, "slotId"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 248
    .local v7, "slotId":I
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " slotId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mAirplaneOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimManagement$5;->mAirplaneOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement$5;->mAirplaneOn:Z

    if-nez v9, :cond_1

    .line 250
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->updatePrefIndicator(II)V
    invoke-static {v9, v7, v8}, Lcom/mediatek/gemini/SimManagement;->access$1200(Lcom/mediatek/gemini/SimManagement;II)V

    goto :goto_0

    .line 252
    .end local v7    # "slotId":I
    .end local v8    # "state":I
    :cond_4
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 253
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->dealDlgOnAirplaneMode()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1300(Lcom/mediatek/gemini/SimManagement;)V

    .line 254
    const-string v9, "state"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/mediatek/gemini/SimManagement$5;->mAirplaneOn:Z

    .line 255
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "air plane mode is = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimManagement$5;->mAirplaneOn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    move-result-object v10

    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement$5;->mAirplaneOn:Z

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v9}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnableNormalItem(Z)V

    .line 258
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z
    invoke-static {v10}, Lcom/mediatek/gemini/SimManagement;->access$1500(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 260
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1600(Lcom/mediatek/gemini/SimManagement;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 261
    .local v4, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement$5;->mAirplaneOn:Z

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v4, v9}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->enableWidget(Z)V

    .line 262
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-virtual {v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v10

    # invokes: Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z
    invoke-static {v9, v10}, Lcom/mediatek/gemini/SimManagement;->access$1700(Lcom/mediatek/gemini/SimManagement;I)Z

    move-result v9

    invoke-virtual {v4, v9}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_2

    .line 256
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 261
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 266
    .end local v4    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_7
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$1800(Lcom/mediatek/gemini/SimManagement;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 267
    .local v6, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget v10, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget v12, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    # invokes: Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I
    invoke-static {v11, v12}, Lcom/mediatek/gemini/SimManagement;->access$1900(Lcom/mediatek/gemini/SimManagement;I)I

    move-result v11

    # invokes: Lcom/mediatek/gemini/SimManagement;->updatePrefIndicator(II)V
    invoke-static {v9, v10, v11}, Lcom/mediatek/gemini/SimManagement;->access$1200(Lcom/mediatek/gemini/SimManagement;II)V

    goto :goto_4

    .line 269
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_8
    const-string v9, "com.android.mms.transaction.START"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 272
    const-string v9, "SimManagementSettings"

    const-string v10, "MMS starting dismiss GPRS selection dialog to prohbit data switch"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v10, 0x1

    # invokes: Lcom/mediatek/gemini/SimManagement;->handleTransaction(Z)V
    invoke-static {v9, v10}, Lcom/mediatek/gemini/SimManagement;->access$2000(Lcom/mediatek/gemini/SimManagement;Z)V

    goto/16 :goto_0

    .line 274
    :cond_9
    const-string v9, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 278
    const-string v9, "SimManagementSettings"

    const-string v10, "MMS stopped dismiss GPRS selection dialog"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v10, 0x0

    # invokes: Lcom/mediatek/gemini/SimManagement;->handleTransaction(Z)V
    invoke-static {v9, v10}, Lcom/mediatek/gemini/SimManagement;->access$2000(Lcom/mediatek/gemini/SimManagement;Z)V

    goto/16 :goto_0

    .line 280
    :cond_a
    sget-object v9, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 281
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$2100(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 282
    sget-object v9, Lcom/android/internal/telephony/TelephonyIntents;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 284
    .local v3, "lockState":Z
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$2400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    move-result-object v10

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$2200(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-nez v9, :cond_b

    if-nez v3, :cond_b

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSimNum:I
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$800(Lcom/mediatek/gemini/SimManagement;)I

    move-result v9

    const/4 v11, 0x1

    if-eq v9, v11, :cond_b

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$2300(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    :goto_5
    invoke-virtual {v10, v9}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 286
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIs3gOff="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z
    invoke-static {v11}, Lcom/mediatek/gemini/SimManagement;->access$2200(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " lockState="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 284
    :cond_b
    const/4 v9, 0x0

    goto :goto_5

    .line 289
    .end local v3    # "lockState":Z
    :cond_c
    sget-object v9, Lcom/android/internal/telephony/TelephonyIntents;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 291
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$2500(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x7d2

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$300(Lcom/mediatek/gemini/SimManagement;)V

    .line 293
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v10, 0x1

    # invokes: Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V
    invoke-static {v9, v10}, Lcom/mediatek/gemini/SimManagement;->access$600(Lcom/mediatek/gemini/SimManagement;Z)V

    .line 294
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$700(Lcom/mediatek/gemini/SimManagement;)V

    goto/16 :goto_0

    .line 295
    :cond_d
    const-string v9, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 296
    const-string v9, "simId"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 297
    .restart local v7    # "slotId":I
    const-string v9, "apnType"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "apnTypeList":Ljava/lang/String;
    # invokes: Lcom/mediatek/gemini/SimManagement;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    invoke-static {p2}, Lcom/mediatek/gemini/SimManagement;->access$2600(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v8

    .line 300
    .local v8, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$2700(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v9

    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-virtual {v10}, Landroid/app/Fragment;->isResumed()Z

    move-result v10

    invoke-interface {v9, p2, v10}, Lcom/mediatek/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 302
    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v8, v9, :cond_e

    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v8, v9, :cond_1

    .line 304
    :cond_e
    const-string v9, "default"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 305
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "****the slot "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mIsDataConnectActing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v11}, Lcom/mediatek/gemini/SimManagement;->access$400(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$400(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 308
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$2500(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x7d0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 309
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$300(Lcom/mediatek/gemini/SimManagement;)V

    .line 310
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v10, 0x0

    # setter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v9, v10}, Lcom/mediatek/gemini/SimManagement;->access$402(Lcom/mediatek/gemini/SimManagement;Z)Z

    goto/16 :goto_0

    .line 315
    .end local v1    # "apnTypeList":Ljava/lang/String;
    .end local v7    # "slotId":I
    .end local v8    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_f
    const-string v9, "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 316
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$400(Lcom/mediatek/gemini/SimManagement;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 317
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    const/4 v10, 0x0

    # setter for: Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z
    invoke-static {v9, v10}, Lcom/mediatek/gemini/SimManagement;->access$402(Lcom/mediatek/gemini/SimManagement;Z)Z

    .line 318
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement$5;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V
    invoke-static {v9}, Lcom/mediatek/gemini/SimManagement;->access$300(Lcom/mediatek/gemini/SimManagement;)V

    goto/16 :goto_0
.end method
