.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
.super Ljava/lang/Object;
.source "LocalTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;


# static fields
.field protected static final DEFAULT_PROGRESS_TOTAL:I = 0x64


# instance fields
.field private cancelled:Z

.field protected mContext:Landroid/content/Context;

.field private mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field protected problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

.field protected progressStep:I

.field protected result:I

.field protected taskId:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 26
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->cancelled:Z

    .line 33
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->taskId:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .line 34
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method protected abstract beforeTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->cancelled:Z

    .line 151
    return-void
.end method

.method protected checkCancelOperation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 168
    :cond_0
    return-void
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "progressstate"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getProgressStep()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 107
    const-string v1, "result"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 109
    return-object v0
.end method

.method protected getProgressStep()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    return v0
.end method

.method public getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->taskId:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->cancelled:Z

    return v0
.end method

.method protected isProgressStepPassed(I)Z
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getProgressStep()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyFinish()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    .line 132
    :cond_0
    return-void
.end method

.method protected notifyProgress(F)V
    .locals 3
    .param p1, "current"    # F

    .prologue
    const/16 v2, 0x64

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getProgressStep()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 99
    float-to-int v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(IILandroid/os/Bundle;)V

    .line 101
    :goto_0
    return-void

    .line 93
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(IILandroid/os/Bundle;)V

    goto :goto_0

    .line 96
    :sswitch_1
    invoke-virtual {p0, v2, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(IILandroid/os/Bundle;)V

    goto :goto_0

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7fffffff -> :sswitch_1
    .end sparse-switch
.end method

.method protected notifyProgress(IILandroid/os/Bundle;)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "total"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    int-to-long v1, p1

    int-to-long v3, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    .line 86
    :cond_0
    return-void
.end method

.method protected notifySubProgress(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 116
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v5, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    int-to-long v1, p1

    int-to-long v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    .line 121
    :cond_0
    return-void
.end method

.method protected abstract reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
.end method

.method public setProblemResolver(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 0
    .param p1, "problemResolver"    # Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    .line 173
    return-void
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 136
    return-void
.end method

.method protected setProgressStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    .line 66
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 146
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/high16 v4, 0x42c80000

    .line 39
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mProgressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 44
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->startTask()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 59
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 47
    const/4 v1, 0x7

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 49
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :try_start_2
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    .line 50
    const/4 v1, 0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catch_2
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 53
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 55
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 58
    throw v1
.end method

.method protected abstract startTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
