.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;
.super Ljava/lang/Object;
.source "CalllogSDcardBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->buildSDCardBackupCalllog()Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;II)Z
    .locals 4
    .param p1, "calllog"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 159
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    const/high16 v2, 0x3f800000

    add-int/lit8 v3, p2, 0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->notifyStepProgress(F)V

    .line 160
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->addCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)V

    .line 161
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;I)V

    .line 162
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->localTotalNumber:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;)I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    invoke-static {v1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;I)V

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->localTotalNumber:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->putLocalTotalNumber(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "CalllogSDcardBackupTask"

    const-string v2, "buildSDCardBackupCalllog JSONException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;I)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
