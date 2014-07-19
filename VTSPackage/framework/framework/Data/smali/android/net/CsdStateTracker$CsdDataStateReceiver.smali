.class Landroid/net/CsdStateTracker$CsdDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CsdStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CsdStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CsdDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CsdStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/CsdStateTracker;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CsdStateTracker;Landroid/net/CsdStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/CsdStateTracker;
    .param p2, "x1"    # Landroid/net/CsdStateTracker$1;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/net/CsdStateTracker$CsdDataStateReceiver;-><init>(Landroid/net/CsdStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v6, 0x70000

    const/4 v5, 0x0

    .line 150
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    const-string v3, "CsdDataStateReceiver onReceive"

    # invokes: Landroid/net/CsdStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/CsdStateTracker;->access$100(Landroid/net/CsdStateTracker;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.ANY_DATA_STATE_CSD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 153
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 154
    .local v1, "state":Z
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_ANY_DATA_CONNECTION_STATE_CHANGED_CSD connect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/CsdStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/CsdStateTracker;->access$100(Landroid/net/CsdStateTracker;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    # setter for: Landroid/net/CsdStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/CsdStateTracker;->access$202(Landroid/net/CsdStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 156
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/CsdStateTracker;->access$200(Landroid/net/CsdStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_0

    .line 157
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    # setter for: Landroid/net/CsdStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/CsdStateTracker;->access$202(Landroid/net/CsdStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 159
    :cond_0
    iget-object v3, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    const-string v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    # setter for: Landroid/net/CsdStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v2}, Landroid/net/CsdStateTracker;->access$302(Landroid/net/CsdStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 160
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/CsdStateTracker;->access$300(Landroid/net/CsdStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_1

    .line 161
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    # setter for: Landroid/net/CsdStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v3}, Landroid/net/CsdStateTracker;->access$302(Landroid/net/CsdStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 164
    :cond_1
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/CsdStateTracker;->access$400(Landroid/net/CsdStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v1, :cond_3

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    :goto_0
    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v3, v2, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/CsdStateTracker;->access$500(Landroid/net/CsdStateTracker;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/CsdStateTracker;->access$400(Landroid/net/CsdStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 186
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "state":Z
    :cond_2
    :goto_1
    return-void

    .line 164
    .restart local v1    # "state":Z
    :cond_3
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0

    .line 167
    .end local v1    # "state":Z
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "state":Ljava/lang/String;
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/CsdStateTracker;->access$400(Landroid/net/CsdStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    invoke-virtual {v2, v5}, Landroid/net/CsdStateTracker;->setTeardownRequested(Z)V

    .line 171
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/CsdStateTracker;->access$400(Landroid/net/CsdStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v4, ""

    const-string v5, ""

    invoke-virtual {v2, v3, v4, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mTarget:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/CsdStateTracker;->access$500(Landroid/net/CsdStateTracker;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3}, Landroid/net/CsdStateTracker;->access$400(Landroid/net/CsdStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 173
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 175
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "state":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.CSD_DIAL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 177
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CsdDataStateReceiver get intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Landroid/net/CsdStateTracker;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/CsdStateTracker;->access$100(Landroid/net/CsdStateTracker;Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    invoke-static {p2, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    # setter for: Landroid/net/CsdStateTracker;->mCsdNumber:Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/net/CsdStateTracker;->access$602(Landroid/net/CsdStateTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    const-string v3, "com.android.phone.extra.slot"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Landroid/net/CsdStateTracker;->mSimId:I
    invoke-static {v2, v3}, Landroid/net/CsdStateTracker;->access$702(Landroid/net/CsdStateTracker;I)I

    .line 181
    const-string v2, "CsdStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.intent.action.CSD_DIAL: slotid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mSimId:I
    invoke-static {v4}, Landroid/net/CsdStateTracker;->access$700(Landroid/net/CsdStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", csdnum="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    # getter for: Landroid/net/CsdStateTracker;->mCsdNumber:Ljava/lang/String;
    invoke-static {v4}, Landroid/net/CsdStateTracker;->access$600(Landroid/net/CsdStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p0, Landroid/net/CsdStateTracker$CsdDataStateReceiver;->this$0:Landroid/net/CsdStateTracker;

    invoke-virtual {v2}, Landroid/net/CsdStateTracker;->reconnect()Z

    goto/16 :goto_1

    .line 184
    :cond_6
    const-string v2, "CsdStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MobileDataStateReceiver received: ignore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
