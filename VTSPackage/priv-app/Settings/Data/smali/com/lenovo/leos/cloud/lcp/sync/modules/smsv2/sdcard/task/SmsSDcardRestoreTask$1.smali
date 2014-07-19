.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$1;
.super Ljava/lang/Object;
.source "SmsSDcardRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->startSDcardRestoreSms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "entryContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->importSMSFromJson(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    const-string v1, "SmsSDcardRestoreTask"

    const-string v2, "User Cancelled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;I)V

    .line 115
    throw v0
.end method
