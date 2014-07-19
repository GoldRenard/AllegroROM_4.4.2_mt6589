.class Lcom/android/settings/dataconnection/DataEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "DataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dataconnection/DataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dataconnection/DataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/dataconnection/DataEnabler;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    const-string v2, "state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    # setter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$002(Z)Z

    .line 88
    const-string v0, "DataEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "airplane mode changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->timerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$200(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 92
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.mms.transaction.START"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    const-string v2, "DataEnabler"

    const-string v3, "receiver: TRANSACTION_START"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    # setter for: Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$302(Z)Z

    .line 95
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v3

    if-nez v3, :cond_4

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$300()Z

    move-result v3

    if-eqz v3, :cond_4

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$400()Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 113
    :goto_2
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    :cond_4
    move v1, v0

    .line 95
    goto :goto_1

    .line 109
    :cond_5
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # invokes: Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z
    invoke-static {v2, v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$600(Lcom/android/settings/dataconnection/DataEnabler;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    .line 114
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.mms.transaction.STOP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 115
    # setter for: Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$302(Z)Z

    .line 116
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v3

    if-nez v3, :cond_7

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$300()Z

    move-result v3

    if-eqz v3, :cond_7

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$400()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 128
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 134
    :goto_4
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_7
    move v1, v0

    .line 116
    goto :goto_3

    .line 130
    :cond_8
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # invokes: Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z
    invoke-static {v2, v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$600(Lcom/android/settings/dataconnection/DataEnabler;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_4

    .line 135
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 137
    const-string v2, "DataEnabler"

    const-string v3, "ACTION_SIM_STATE_CHANGED received "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    iget-object v3, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 148
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # invokes: Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z
    invoke-static {v3, v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$600(Lcom/android/settings/dataconnection/DataEnabler;I)Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 155
    :goto_5
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    .line 152
    :cond_a
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_5

    .line 156
    :cond_b
    const-string v2, "intent.Open_Mobile_Data_Confirm_Dialog_Closed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    const-string v2, "DataEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "INTENT_OPEN_MOBILE_DATA_CONFIRM_DIALOG_CLOSED received, mIsSwitching:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mIsSwitching:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$700()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    # setter for: Lcom/android/settings/dataconnection/DataEnabler;->mIsSwitching:Z
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$702(Z)Z

    .line 159
    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v2

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    iget-object v4, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    :goto_6
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 170
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 175
    :goto_7
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_c
    move v1, v0

    .line 159
    goto :goto_6

    .line 172
    :cond_d
    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$1;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # invokes: Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z
    invoke-static {v2, v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$600(Lcom/android/settings/dataconnection/DataEnabler;I)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_7
.end method
