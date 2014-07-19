.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;
.super Landroid/os/Handler;
.source "PhoneCallRingWeakenAndPocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    .line 215
    iget v2, p1, Landroid/os/Message;->what:I

    const v3, 0x1010111

    if-ne v2, v3, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->resetProfileVolume()V
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V

    .line 217
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v2, v5}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)I

    .line 218
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mRun:Z
    invoke-static {v2, v5}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 220
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Service;->stopSelf()V

    .line 221
    const-string v2, "PhoneCallRingWeakenAndPocketService"

    const-string v3, "the service is closed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 224
    .local v1, "volume":I
    const-string v2, "PhoneCallRingWeakenAndPocketService"

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

    .line 225
    add-int/lit8 v1, v1, -0x1

    .line 226
    if-lez v1, :cond_2

    .line 227
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 228
    const-string v2, "PhoneCallRingWeakenAndPocketService"

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

    .line 229
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/media/AudioManager;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 231
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    const v3, 0x1010112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 232
    .local v0, "msgs":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 234
    .end local v0    # "msgs":Landroid/os/Message;
    :cond_1
    const-string v2, "PhoneCallRingWeakenAndPocketService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone state is ----->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v4}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/telephony/TelephonyManager;

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

    .line 238
    :cond_2
    const-string v2, "PhoneCallRingWeakenAndPocketService"

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
