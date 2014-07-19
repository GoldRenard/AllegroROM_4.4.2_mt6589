.class Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;
.super Landroid/os/Handler;
.source "PhoneCallRingPocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 178
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->resetProfileVolume()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mInitValue:I
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$202(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)I

    .line 180
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mRun:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$002(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 182
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 183
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "the service is closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method
