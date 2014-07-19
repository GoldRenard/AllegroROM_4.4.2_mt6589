.class Lcom/android/server/NotificationManagerService$6;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$id:I

.field final synthetic val$isSystemNotification:Z

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/String;IIZLjava/lang/String;ILandroid/os/UserHandle;I)V
    .locals 0

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    iput p5, p0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    iput-boolean p6, p0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    iput-object p7, p0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    iput-object p9, p0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 41

    .prologue
    .line 1768
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    const/4 v7, 0x2

    # invokes: Lcom/android/server/NotificationManagerService;->clamp(III)I
    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$2500(III)I

    move-result v5

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 1771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_0

    .line 1772
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    const/4 v5, 0x2

    iput v5, v4, Landroid/app/Notification;->priority:I

    .line 1783
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->priority:I

    mul-int/lit8 v9, v4, 0xa

    .line 1789
    .local v9, "score":I
    move/from16 v26, v9

    .line 1790
    .local v26, "initialScore":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1791
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initial score is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mScorers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2600(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/internal/notification/NotificationScorer;

    .line 1794
    .local v32, "scorer":Lcom/android/internal/notification/NotificationScorer;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, v32

    invoke-interface {v0, v4, v9}, Lcom/android/internal/notification/NotificationScorer;->getScore(Landroid/app/Notification;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_0

    .line 1795
    :catch_0
    move-exception v34

    .line 1796
    .local v34, "t":Ljava/lang/Throwable;
    const-string v4, "NotificationService"

    const-string v5, "Scorer threw on .getScore."

    move-object/from16 v0, v34

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1799
    .end local v32    # "scorer":Lcom/android/internal/notification/NotificationScorer;
    .end local v34    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Final score is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    .end local v22    # "i$":Ljava/util/Iterator;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.scoreModified"

    move/from16 v0, v26

    if-eq v9, v0, :cond_5

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1807
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    # invokes: Lcom/android/server/NotificationManagerService;->blockApps(Ljava/lang/String;ILandroid/app/Notification;)Z
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/NotificationManagerService;->access$2700(Lcom/android/server/NotificationManagerService;Ljava/lang/String;ILandroid/app/Notification;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1808
    const/16 v9, -0x3e8

    .line 1812
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    # invokes: Lcom/android/server/NotificationManagerService;->noteNotificationOp(Ljava/lang/String;I)Z
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$2800(Lcom/android/server/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1813
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/NotificationManagerService$6;->val$isSystemNotification:Z

    if-nez v4, :cond_4

    .line 1814
    const/16 v9, -0x3e8

    .line 1815
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suppressing notification from package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by user request."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_4
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Assigned score="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/16 v4, -0x14

    if-ge v9, v4, :cond_6

    .line 2104
    :goto_2
    return-void

    .line 1803
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1830
    :cond_6
    const/16 v4, -0xa

    if-lt v9, v4, :cond_17

    const/4 v15, 0x1

    .line 1832
    .local v15, "canInterrupt":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v40

    monitor-enter v40

    .line 1833
    :try_start_1
    new-instance v3, Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$6;->val$callingUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$callingPid:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    invoke-direct/range {v3 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1835
    .local v3, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v30, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 1836
    .local v30, "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v28, 0x0

    .line 1838
    .local v28, "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$tag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/NotificationManagerService$6;->val$id:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    # invokes: Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)I
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/NotificationManagerService;->access$2900(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v25

    .line 1839
    .local v25, "index":I
    if-gez v25, :cond_18

    .line 1840
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1856
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_8

    .line 1857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x22

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1862
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v35

    .line 1864
    .local v35, "token":J
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    .line 1866
    .local v17, "currentUser":I
    :try_start_3
    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    const/high16 v5, 0x10000000

    and-int/2addr v4, v5

    if-nez v4, :cond_1b

    .line 1872
    if-eqz v28, :cond_19

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_19

    .line 1873
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v23

    .line 1876
    .local v23, "identity":J
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1879
    :try_start_5
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1895
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    move/from16 v0, v17

    if-ne v0, v4, :cond_9

    .line 1896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    # invokes: Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NotificationManagerService;->access$3200(Lcom/android/server/NotificationManagerService;Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 1899
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v30

    # invokes: Lcom/android/server/NotificationManagerService;->notifyPostedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$3300(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1921
    .end local v23    # "identity":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$500(Lcom/android/server/NotificationManagerService;)I

    move-result v4

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$pkg:Ljava/lang/String;

    const-string v5, "com.android.mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDmLock:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2000(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-nez v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mPplLock:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$2100(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-nez v4, :cond_1d

    const/16 v19, 0x1

    .line 1924
    .local v19, "enableAlerts":Z
    :goto_7
    if-eqz v19, :cond_14

    if-eqz v28, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_14

    :cond_b
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService$6;->val$userId:I

    if-ne v4, v5, :cond_14

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getUserId()I

    move-result v4

    move/from16 v0, v17

    if-ne v4, v0, :cond_14

    :cond_c
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mSystemReady:Z
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3500(Lcom/android/server/NotificationManagerService;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/AudioManager;

    .line 1940
    .local v13, "audioManager":Landroid/media/AudioManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_d

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_d
    const/16 v38, 0x1

    .line 1947
    .local v38, "useDefaultSound":Z
    :goto_8
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "useDefaultSound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification.sound="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->sound:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    const/16 v33, 0x0

    .line 1952
    .local v33, "soundUri":Landroid/net/Uri;
    const/16 v21, 0x0

    .line 1954
    .local v21, "hasValidSound":Z
    if-eqz v38, :cond_20

    .line 1955
    sget-object v33, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 1958
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 1959
    .local v31, "resolver":Landroid/content/ContentResolver;
    const-string v4, "notification_sound"

    move-object/from16 v0, v31

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    const/16 v21, 0x1

    .line 1966
    .end local v31    # "resolver":Landroid/content/ContentResolver;
    :cond_e
    :goto_9
    if-eqz v21, :cond_11

    .line 1967
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_22

    const/16 v27, 0x1

    .line 1969
    .local v27, "looping":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->audioStreamType:I

    if-ltz v4, :cond_23

    .line 1970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v14, v4, Landroid/app/Notification;->audioStreamType:I

    .line 1974
    .local v14, "audioStreamType":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v30

    # setter for: Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1978
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "looping="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audioStreamType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StreamVolume="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v13}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1987
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v23

    .line 1989
    .restart local v23    # "identity":J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$600(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v29

    .line 1990
    .local v29, "player":Landroid/media/IRingtonePlayer;
    if-eqz v29, :cond_f

    .line 1992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 1993
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-interface {v0, v1, v4, v2, v14}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2000
    :cond_f
    :goto_c
    :try_start_7
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2004
    .end local v23    # "identity":J
    .end local v29    # "player":Landroid/media/IRingtonePlayer;
    :cond_10
    :goto_d
    invoke-virtual {v13, v14}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    if-nez v4, :cond_11

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_SMS_NOTIFI_URI:Landroid/net/Uri;

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v13}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v4

    if-eqz v4, :cond_11

    .line 2011
    const/16 v12, 0x50

    .line 2013
    .local v12, "TONE_RELATIVE_VOLUME":I
    :try_start_8
    const-string v4, "NotificationService"

    const-string v5, "ringing tone under silent mode while has head set"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    new-instance v37, Landroid/media/ToneGenerator;

    const/4 v4, 0x0

    const/16 v5, 0x50

    move-object/from16 v0, v37

    invoke-direct {v0, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 2020
    .local v37, "toneGenerator":Landroid/media/ToneGenerator;
    const/16 v4, 0x1b

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 2021
    invoke-virtual/range {v37 .. v37}, Landroid/media/ToneGenerator;->release()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2031
    .end local v12    # "TONE_RELATIVE_VOLUME":I
    .end local v14    # "audioStreamType":I
    .end local v27    # "looping":Z
    .end local v37    # "toneGenerator":Landroid/media/ToneGenerator;
    :cond_11
    :goto_e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_25

    const/16 v20, 0x1

    .line 2035
    .local v20, "hasCustomVibrate":Z
    :goto_f
    if-nez v20, :cond_26

    if-eqz v21, :cond_26

    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_26

    const/16 v16, 0x1

    .line 2042
    .local v16, "convertSoundToVibration":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_27

    const/16 v39, 0x1

    .line 2045
    .local v39, "useDefaultVibrate":Z
    :goto_11
    if-nez v39, :cond_12

    if-nez v16, :cond_12

    if-eqz v20, :cond_14

    :cond_12
    invoke-virtual {v13}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    if-eqz v4, :cond_14

    .line 2048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v30

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2050
    if-nez v39, :cond_13

    if-eqz v16, :cond_2a

    .line 2053
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-wide v23

    .line 2055
    .restart local v23    # "identity":J
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v6

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v8

    if-eqz v39, :cond_28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mDefaultVibrationPattern:[J
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3600(Lcom/android/server/NotificationManagerService;)[J

    move-result-object v4

    move-object v5, v4

    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_29

    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v6, v7, v8, v5, v4}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2061
    :try_start_b
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    .end local v13    # "audioManager":Landroid/media/AudioManager;
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v21    # "hasValidSound":Z
    .end local v23    # "identity":J
    .end local v33    # "soundUri":Landroid/net/Uri;
    .end local v38    # "useDefaultSound":Z
    .end local v39    # "useDefaultVibrate":Z
    :cond_14
    :goto_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1200(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-result-object v4

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_15

    .line 2088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v5}, Lcom/android/server/NotificationManagerService;->access$1202(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2093
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_30

    if-eqz v15, :cond_30

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2096
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V

    .line 2103
    :cond_16
    :goto_15
    monitor-exit v40

    goto/16 :goto_2

    .end local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v17    # "currentUser":I
    .end local v19    # "enableAlerts":Z
    .end local v25    # "index":I
    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v30    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v35    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit v40
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v4

    .line 1830
    .end local v15    # "canInterrupt":Z
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 1842
    .restart local v3    # "n":Landroid/service/notification/StatusBarNotification;
    .restart local v15    # "canInterrupt":Z
    .restart local v25    # "index":I
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v30    # "r":Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_18
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v28, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 1843
    .restart local v28    # "old":Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$100(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1845
    if-eqz v28, :cond_7

    .line 1846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->flags:I

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    or-int/2addr v5, v6

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 1850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v5, v5, Landroid/app/Notification;->when:J

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    goto/16 :goto_4

    .line 1866
    .restart local v35    # "token":J
    :catchall_1
    move-exception v4

    invoke-static/range {v35 .. v36}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1879
    .restart local v17    # "currentUser":I
    .restart local v23    # "identity":J
    :catchall_2
    move-exception v4

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1882
    .end local v23    # "identity":J
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-wide v23

    .line 1884
    .restart local v23    # "identity":J
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/StatusBarManagerService;->addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .line 1885
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1a

    if-eqz v15, :cond_1a

    .line 1887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mAttentionLight:Lcom/android/server/LightsService$Light;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3100(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/LightsService$Light;->pulse()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1891
    :cond_1a
    :try_start_e
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_5

    :catchall_3
    move-exception v4

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1901
    .end local v23    # "identity":J
    :cond_1b
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not posting notification with icon==0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1902
    if-eqz v28, :cond_1c

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v4, :cond_1c

    .line 1903
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-wide v23

    .line 1905
    .restart local v23    # "identity":J
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/StatusBarManagerService;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1908
    :try_start_10
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v30

    # invokes: Lcom/android/server/NotificationManagerService;->notifyRemovedLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$3400(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)V

    .line 1915
    .end local v23    # "identity":J
    :cond_1c
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: In a future release this will crash the app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1908
    .restart local v23    # "identity":J
    :catchall_4
    move-exception v4

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1921
    .end local v23    # "identity":J
    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 1940
    .restart local v13    # "audioManager":Landroid/media/AudioManager;
    .restart local v19    # "enableAlerts":Z
    :cond_1e
    const/16 v38, 0x0

    goto/16 :goto_8

    .line 1959
    .restart local v21    # "hasValidSound":Z
    .restart local v31    # "resolver":Landroid/content/ContentResolver;
    .restart local v33    # "soundUri":Landroid/net/Uri;
    .restart local v38    # "useDefaultSound":Z
    :cond_1f
    const/16 v21, 0x0

    goto/16 :goto_9

    .line 1961
    .end local v31    # "resolver":Landroid/content/ContentResolver;
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_e

    .line 1962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v33, v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 1963
    if-eqz v33, :cond_21

    const/16 v21, 0x1

    :goto_16
    goto/16 :goto_9

    :cond_21
    const/16 v21, 0x0

    goto :goto_16

    .line 1967
    :cond_22
    const/16 v27, 0x0

    goto/16 :goto_a

    .line 1972
    .restart local v27    # "looping":Z
    :cond_23
    const/4 v14, 0x5

    .restart local v14    # "audioStreamType":I
    goto/16 :goto_b

    .line 1995
    .restart local v23    # "identity":J
    .restart local v29    # "player":Landroid/media/IRingtonePlayer;
    :cond_24
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$user:Landroid/os/UserHandle;

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    move/from16 v2, v27

    invoke-interface {v0, v1, v4, v2, v14}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZI)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/16 :goto_c

    .line 1998
    .end local v29    # "player":Landroid/media/IRingtonePlayer;
    :catch_1
    move-exception v4

    .line 2000
    :try_start_12
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_d

    :catchall_5
    move-exception v4

    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2022
    .end local v23    # "identity":J
    .restart local v12    # "TONE_RELATIVE_VOLUME":I
    :catch_2
    move-exception v18

    .line 2023
    .local v18, "e":Ljava/lang/RuntimeException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enqueueNotificationInternal exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_e

    .line 2031
    .end local v12    # "TONE_RELATIVE_VOLUME":I
    .end local v14    # "audioStreamType":I
    .end local v18    # "e":Ljava/lang/RuntimeException;
    .end local v27    # "looping":Z
    :cond_25
    const/16 v20, 0x0

    goto/16 :goto_f

    .line 2035
    .restart local v20    # "hasCustomVibrate":Z
    :cond_26
    const/16 v16, 0x0

    goto/16 :goto_10

    .line 2042
    .restart local v16    # "convertSoundToVibration":Z
    :cond_27
    const/16 v39, 0x0

    goto/16 :goto_11

    .line 2055
    .restart local v23    # "identity":J
    .restart local v39    # "useDefaultVibrate":Z
    :cond_28
    :try_start_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mFallbackVibrationPattern:[J
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$3700(Lcom/android/server/NotificationManagerService;)[J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_12

    :cond_29
    const/4 v4, -0x1

    goto/16 :goto_13

    .line 2061
    :catchall_6
    move-exception v4

    :try_start_14
    invoke-static/range {v23 .. v24}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2063
    .end local v23    # "identity":J
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->vibrate:[J

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2c

    .line 2066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v5

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getBasePkg()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v8, v4, Landroid/app/Notification;->vibrate:[J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v5, v6, v7, v8, v4}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JI)V

    goto/16 :goto_14

    :cond_2b
    const/4 v4, -0x1

    goto :goto_17

    .line 2072
    :cond_2c
    if-nez v39, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->vibrate:[J

    if-eqz v4, :cond_14

    :cond_2d
    sget-boolean v4, Lcom/android/server/NotificationManagerService;->LENOVO_CU_FEATURE_VIBRATION:Z

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Landroid/media/AudioManager;->shouldVibrateEx(I)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2075
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v30

    # setter for: Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;
    invoke-static {v4, v0}, Lcom/android/server/NotificationManagerService;->access$1002(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;

    .line 2077
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # getter for: Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$700(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v6

    if-eqz v39, :cond_2e

    # getter for: Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J
    invoke-static {}, Lcom/android/server/NotificationManagerService;->access$3800()[J

    move-result-object v4

    move-object v5, v4

    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2f

    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v6, v5, v4}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_14

    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->val$notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->vibrate:[J

    move-object v5, v4

    goto :goto_18

    :cond_2f
    const/4 v4, -0x1

    goto :goto_19

    .line 2098
    .end local v13    # "audioManager":Landroid/media/AudioManager;
    .end local v16    # "convertSoundToVibration":Z
    .end local v20    # "hasCustomVibrate":Z
    .end local v21    # "hasValidSound":Z
    .end local v33    # "soundUri":Landroid/net/Uri;
    .end local v38    # "useDefaultSound":Z
    .end local v39    # "useDefaultVibrate":Z
    :cond_30
    if-eqz v28, :cond_16

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/NotificationManagerService$NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_16

    .line 2100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NotificationManagerService$6;->this$0:Lcom/android/server/NotificationManagerService;

    # invokes: Lcom/android/server/NotificationManagerService;->updateLightsLocked()V
    invoke-static {v4}, Lcom/android/server/NotificationManagerService;->access$1300(Lcom/android/server/NotificationManagerService;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_15
.end method
