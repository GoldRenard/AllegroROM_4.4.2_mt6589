.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/ResultCode;


# static fields
.field public static final KEY_PROGRESS_MESSAGE:Ljava/lang/String; = "progressmessage"

.field public static final KEY_PROGRESS_STATE:Ljava/lang/String; = "progressstate"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_RESULT_ADD:Ljava/lang/String; = "countOfAdd"

.field public static final KEY_RESULT_DELETE:Ljava/lang/String; = "countOfDel"

.field public static final KEY_RESULT_GZIP_FLOW:Ljava/lang/String; = "gzip_flow"

.field public static final KEY_RESULT_REAL_FLOW:Ljava/lang/String; = "real_flow"

.field public static final KEY_RESULT_UPDATE:Ljava/lang/String; = "countOfUpdate"

.field public static final KEY_SYNC_CLOUD_NUMBER:Ljava/lang/String; = "cloud_number"

.field public static final KEY_SYNC_LOCAL_NUMBER:Ljava/lang/String; = "local_number"

.field public static final PROGRESS_STATUS_END:I = 0x7fffffff

.field public static final PROGRESS_STATUS_START:I = 0x1

.field public static final RESULT_CONTACT_SYNC_EXT:I = 0xa

.field public static final RESULT_TASK_OK_NO_DATA:I = 0x6e

.field public static final RESULT_TASK_OK_NO_OPERATE:I = 0x64


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract getParams()Landroid/os/Bundle;
.end method

.method public abstract getResult()I
.end method

.method public abstract getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract setProblemResolver(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
.end method

.method public abstract setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
.end method

.method public abstract setResult(I)V
.end method

.method public abstract start()V
.end method
