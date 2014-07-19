.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;
.super Landroid/os/Handler;
.source "PhoneCallRingWeakenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v6, 0x1010112

    const/4 v5, 0x0

    .line 179
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x1010111

    if-ne v2, v3, :cond_1

    .line 180
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->resetProfileVolume()V
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V

    .line 181
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v2, v5}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;I)I

    .line 182
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mRun:Z
    invoke-static {v2, v5}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 184
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    .line 185
    const-string v2, "PhoneCallRingWeakenService"

    const-string v3, "the service is closed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v6, :cond_0

    .line 187
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 188
    .local v1, "volume":I
    const-string v2, "PhoneCallRingWeakenService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handler volume----->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    add-int/lit8 v1, v1, -0x1

    .line 190
    if-lez v1, :cond_3

    .line 191
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 192
    const-string v2, "PhoneCallRingWeakenService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set volume is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 195
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "msgs":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 198
    .end local v0    # "msgs":Landroid/os/Message;
    :cond_2
    const-string v2, "PhoneCallRingWeakenService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone state is ----->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "stop send msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    :cond_3
    const-string v2, "PhoneCallRingWeakenService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "volume is --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "stop send msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
