.class Lcom/android/server/AkgService$1;
.super Landroid/telephony/PhoneStateListener;
.source "AkgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method constructor <init>(Lcom/android/server/AkgService;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 154
    if-ne p1, v0, :cond_0

    .line 155
    const-string v0, "AkgService"

    const-string v1, " CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    # getter for: Lcom/android/server/AkgService;->mPhoneIsInUseLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/AkgService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/AkgService;->mPhoneIsInUse:Z
    invoke-static {v0, v2}, Lcom/android/server/AkgService;->access$202(Lcom/android/server/AkgService;Z)Z

    .line 159
    monitor-exit v1

    .line 179
    :goto_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 160
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 161
    const-string v0, "AkgService"

    const-string v1, " CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    # getter for: Lcom/android/server/AkgService;->mPhoneIsInUseLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/AkgService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/AkgService;->mPhoneIsInUse:Z
    invoke-static {v0, v2}, Lcom/android/server/AkgService;->access$202(Lcom/android/server/AkgService;Z)Z

    .line 165
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 166
    :cond_1
    if-nez p1, :cond_2

    .line 167
    const-string v0, "AkgService"

    const-string v1, " CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    # getter for: Lcom/android/server/AkgService;->mPhoneIsInUseLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/AkgService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 170
    :try_start_2
    iget-object v0, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/AkgService;->mPhoneIsInUse:Z
    invoke-static {v0, v2}, Lcom/android/server/AkgService;->access$202(Lcom/android/server/AkgService;Z)Z

    .line 171
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 173
    :cond_2
    const-string v0, "AkgService"

    const-string v1, "Should not enter this, CALL_STATE_ ? "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    # getter for: Lcom/android/server/AkgService;->mPhoneIsInUseLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/AkgService;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 176
    :try_start_3
    iget-object v0, p0, Lcom/android/server/AkgService$1;->this$0:Lcom/android/server/AkgService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/AkgService;->mPhoneIsInUse:Z
    invoke-static {v0, v2}, Lcom/android/server/AkgService;->access$202(Lcom/android/server/AkgService;Z)Z

    .line 177
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0
.end method
