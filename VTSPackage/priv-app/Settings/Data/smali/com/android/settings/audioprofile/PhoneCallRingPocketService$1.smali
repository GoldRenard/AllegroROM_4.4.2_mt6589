.class Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;
.super Ljava/lang/Thread;
.source "PhoneCallRingPocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->onCreate()V
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
    .line 105
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 108
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 109
    const-string v1, "PhoneCallRingPocketService"

    const-string v2, "run"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mRun:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$000(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;->sleep(J)V

    .line 113
    const-string v1, "PhoneCallRingPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mStatus:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$100(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v1, "PhoneCallRingPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInitValue :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mInitValue:I
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mIsLight:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsEnveloped:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 119
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
