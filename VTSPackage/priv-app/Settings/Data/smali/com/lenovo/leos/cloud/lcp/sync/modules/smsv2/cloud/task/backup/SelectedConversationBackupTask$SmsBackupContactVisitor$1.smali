.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;
.super Ljava/lang/Object;
.source "SelectedConversationBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;III)Z
    .locals 8
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .param p2, "cur"    # I
    .param p3, "total"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    move-result-object v5

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->excludeIds:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    move-result-object v5

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->excludeIds:Ljava/util/List;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 168
    :cond_0
    :goto_0
    return v3

    .line 158
    :cond_1
    add-int v5, p2, p4

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->lastQueryTotal:I
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)I

    move-result v6

    add-int v2, v5, v6

    .line 159
    .local v2, "realCur":I
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    move-result-object v5

    int-to-float v6, v2

    const/high16 v7, 0x3f800000

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->allTotal:I
    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->notifyStepProgress(F)V

    .line 160
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getAddress()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v0, ""

    .line 161
    .local v0, "addr":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->formatPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "phoneNum":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 163
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->addSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 165
    :cond_2
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->batchUploadSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 160
    .end local v0    # "addr":Ljava/lang/String;
    .end local v1    # "phoneNum":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
