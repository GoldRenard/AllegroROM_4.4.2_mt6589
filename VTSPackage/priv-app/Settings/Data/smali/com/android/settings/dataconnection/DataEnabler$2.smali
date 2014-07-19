.class Lcom/android/settings/dataconnection/DataEnabler$2;
.super Landroid/os/Handler;
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
    .line 180
    iput-object p1, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 186
    :pswitch_0
    const-string v0, "DataEnabler"

    const-string v3, "timer expired update switch enabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    iget-object v3, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->isConflict:Z
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$800(Lcom/android/settings/dataconnection/DataEnabler;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    :cond_0
    # setter for: Lcom/android/settings/dataconnection/DataEnabler;->mIsSwitching:Z
    invoke-static {v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$702(Z)Z

    goto :goto_0

    .line 194
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "airplane_mode_on"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    iget-object v3, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/dataconnection/DataEnabler;->access$100(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    # setter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$002(Z)Z

    .line 197
    const-string v0, "DataEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_SIM_STATUS_TIME_OUT mAllSimRadioOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v3

    if-nez v3, :cond_3

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mScreenEnable:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$300()Z

    move-result v3

    if-eqz v3, :cond_3

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mHasSim:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$400()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->isConflict:Z
    invoke-static {v3}, Lcom/android/settings/dataconnection/DataEnabler;->access$800(Lcom/android/settings/dataconnection/DataEnabler;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 207
    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mAllSimRadioOff:Z
    invoke-static {}, Lcom/android/settings/dataconnection/DataEnabler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 213
    :goto_3
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 195
    goto :goto_1

    :cond_3
    move v2, v1

    .line 198
    goto :goto_2

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # getter for: Lcom/android/settings/dataconnection/DataEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/dataconnection/DataEnabler;->access$500(Lcom/android/settings/dataconnection/DataEnabler;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/dataconnection/DataEnabler$2;->this$0:Lcom/android/settings/dataconnection/DataEnabler;

    # invokes: Lcom/android/settings/dataconnection/DataEnabler;->isMobileDataEnabled(I)Z
    invoke-static {v2, v1}, Lcom/android/settings/dataconnection/DataEnabler;->access$600(Lcom/android/settings/dataconnection/DataEnabler;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
