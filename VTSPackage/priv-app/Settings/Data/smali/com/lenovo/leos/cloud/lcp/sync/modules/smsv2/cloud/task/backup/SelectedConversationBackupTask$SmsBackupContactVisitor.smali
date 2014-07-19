.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;
.super Ljava/lang/Object;
.source "SelectedConversationBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmsBackupContactVisitor"
.end annotation


# instance fields
.field private allTotal:I

.field private df:Ljava/text/SimpleDateFormat;

.field private lastQueryTotal:I

.field private requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

.field private visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 143
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->df:Ljava/text/SimpleDateFormat;

    .line 140
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->allTotal:I

    .line 141
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->lastQueryTotal:I

    .line 150
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;

    .line 144
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->lastQueryTotal:I

    return v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->allTotal:I

    return v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    return-object v0
.end method

.method private buildMonthDateWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 250
    .local v1, "cal":Ljava/util/Calendar;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "beginTime":Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 256
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "endTime":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " and date>="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and date<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 251
    .end local v0    # "beginTime":Ljava/lang/String;
    .end local v3    # "endTime":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Ljava/text/ParseException;
    const-string v4, "SmsTaskAdapter"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildSmsPhoneWhereByConvers(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p2, "phoneList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 191
    const-string v2, " 1=1 "

    .line 202
    :goto_0
    return-object v2

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " thread_id in ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    array-length v3, p2

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_2

    .line 198
    const-string v2, ","

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    :cond_1
    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 195
    :cond_2
    aget-object v0, p2, v2

    .line 196
    .local v0, "phone":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->findThreadId(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findThreadId(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    if-nez p1, :cond_0

    .line 208
    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->getThreadIdByPhone(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->getThreadIdByConversation(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getThreadIdByConversation(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    const/4 v3, 0x0

    .line 218
    .local v3, "isFindThreadId":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 233
    if-nez v3, :cond_0

    .line 234
    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->getThreadIdByPhone(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 236
    :cond_0
    return-void

    .line 219
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    .line 220
    .local v0, "convers":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->formatPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "conversPhone":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    const-string v4, "\'"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getThreadId()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v4, "\',"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/4 v3, 0x1

    .line 218
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getThreadIdByPhone(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "phone"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->queryThreadIdByPhoneNumber(Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "threadId":I
    const-string v1, "\'"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, "\',"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .end local v0    # "threadId":I
    :cond_0
    return-void
.end method


# virtual methods
.method public varargs onVisit(FLjava/lang/String;[Ljava/lang/String;)V
    .locals 10
    .param p1, "progress"    # F
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "phoneList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 179
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->buildMonthDateWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 180
    .local v8, "monthDateWhere":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->buildSmsPhoneWhereByConvers(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 182
    .local v7, "cWhere":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 184
    .local v9, "ontimeTotal":I
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 185
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->lastQueryTotal:I

    add-int/2addr v0, v9

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->lastQueryTotal:I

    goto :goto_0
.end method

.method public setAllTotal(I)V
    .locals 0
    .param p1, "allTotal"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->allTotal:I

    .line 266
    return-void
.end method

.method public setLastQueryTotal(I)V
    .locals 0
    .param p1, "lastQueryTotal"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->lastQueryTotal:I

    .line 148
    return-void
.end method

.method public setRequestBody(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)V
    .locals 0
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    .line 262
    return-void
.end method
