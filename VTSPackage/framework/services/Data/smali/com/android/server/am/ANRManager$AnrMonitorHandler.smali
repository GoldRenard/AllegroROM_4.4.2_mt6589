.class public Lcom/android/server/am/ANRManager$AnrMonitorHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnrMonitorHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ANRManager;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    .line 180
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 238
    :goto_0
    :pswitch_0
    return-void

    .line 190
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/BroadcastQueue;

    .line 192
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 193
    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mOrderedBroadcasts:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    .line 194
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 195
    iget-object v0, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 197
    :goto_1
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitor Broadcast ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    invoke-static {v1, v0}, Lcom/android/server/am/ANRManager;->a(Lcom/android/server/am/ANRManager;I)V

    goto :goto_0

    .line 201
    :cond_0
    const-string v0, "ANRManager"

    const-string v1, "monitor Broadcast ANR process failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 209
    if-eqz v0, :cond_1

    .line 210
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 212
    :cond_1
    const-string v0, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitor Service ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    invoke-static {v0, v1}, Lcom/android/server/am/ANRManager;->a(Lcom/android/server/am/ANRManager;I)V

    goto :goto_0

    .line 218
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ANRManager$AnrDumpRecord;

    .line 219
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_ANR_DUMP_MSG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    iget-object v1, v1, Lcom/android/server/am/ANRManager;->mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ANRManager$AnrDumpMgr;->dumpAnrDebugInfo(Lcom/android/server/am/ANRManager$AnrDumpRecord;)V

    goto/16 :goto_0

    .line 226
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 227
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Monitor KeyDispatching ANR process ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    invoke-static {v1, v0}, Lcom/android/server/am/ANRManager;->a(Lcom/android/server/am/ANRManager;I)V

    goto/16 :goto_0

    .line 234
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->a:Lcom/android/server/am/ANRManager;

    invoke-virtual {v0}, Lcom/android/server/am/ANRManager;->updateProcessStats()V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_1

    .line 186
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
