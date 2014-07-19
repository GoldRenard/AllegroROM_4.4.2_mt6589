.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask$1;
.super Ljava/lang/Object;
.source "SelectedSmsRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->doRestoreCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;III)Z
    .locals 3
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .param p2, "cur"    # I
    .param p3, "total"    # I
    .param p4, "offset"    # I

    .prologue
    .line 148
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsUid(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildAdlerCrcKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "smsKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->cacheSmsKey2Locks:Ljava/util/Map;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
