.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;
.super Ljava/lang/Object;
.source "CalllogBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->buildAddCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field df:Ljava/text/SimpleDateFormat;

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V
    .locals 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->df:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    return-object v0
.end method

.method private computeStartAndEnd(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p1, "month"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 162
    new-array v1, v6, [Ljava/lang/String;

    .line 163
    .local v1, "startAndEnd":[Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 165
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    invoke-virtual {v0, v6, v5}, Ljava/util/Calendar;->add(II)V

    .line 167
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 168
    return-object v1
.end method


# virtual methods
.method public varargs onVisit(FLjava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "progress"    # F
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "phoneList"    # [Ljava/lang/String;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    const/high16 v2, 0x3f000000

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 145
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->calllogDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    invoke-direct {v3, p0, p3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;[Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V

    .line 155
    const-string v4, "date>=? and date<?"

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;->computeStartAndEnd(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;->traverseCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao$Visitor;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CalllogBackupTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
