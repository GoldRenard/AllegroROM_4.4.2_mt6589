.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;
.super Ljava/lang/Thread;
.source "PhoneCallRingWeakenAndPocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->onCreate()V
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
    .line 141
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 145
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mRun:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->sleep(J)V

    .line 149
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mStatus:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInitValue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsLight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsEnveloped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSendMsgByGetLight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsSendMsgByGetLight:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
