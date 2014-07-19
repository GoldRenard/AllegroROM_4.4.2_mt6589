.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;
.super Ljava/lang/Object;
.source "SmsBackupContactVisitor.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse$Visitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsBackupContactVisitor"


# instance fields
.field private dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

.field private df:Ljava/text/SimpleDateFormat;

.field private smsConversation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end field

.field private visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;)V
    .locals 2
    .param p1, "dao"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    .param p3, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->df:Ljava/text/SimpleDateFormat;

    .line 25
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    .line 26
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->smsConversation:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;

    .line 28
    return-void
.end method

.method private buildMonthDateWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 87
    .local v1, "cal":Ljava/util/Calendar;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->df:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "beginTime":Ljava/lang/String;
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 93
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 94
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

    .line 88
    .end local v0    # "beginTime":Ljava/lang/String;
    .end local v3    # "endTime":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 89
    .local v2, "e":Ljava/text/ParseException;
    const-string v4, "SmsBackupContactVisitor"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private buildSmsPhoneWhereByConvers(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
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
    .line 44
    .local p1, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    if-nez p1, :cond_0

    .line 45
    const-string v2, " 1=1 "

    .line 53
    :goto_0
    return-object v2

    .line 47
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " thread_id in ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    array-length v3, p2

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    .line 52
    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 49
    :cond_1
    aget-object v0, p2, v2

    .line 50
    .local v0, "phone":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->findThreadId(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private findThreadId(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 6
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
    .line 57
    .local p1, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    const/4 v3, 0x0

    .line 58
    .local v3, "isFindThreadId":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 76
    if-nez v3, :cond_0

    .line 77
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    invoke-interface {v5, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->queryThreadIdByPhoneNumber(Ljava/lang/String;)I

    move-result v4

    .line 78
    .local v4, "threadId":I
    const-string v5, "\'"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v5, "\',"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .end local v4    # "threadId":I
    :cond_0
    return-void

    .line 59
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;

    .line 60
    .local v0, "convers":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->formatPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "conversPhone":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    const-string v5, "\'"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;->getThreadId()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v5, "\',"

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v3, 0x1

    .line 58
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public varargs onVisit(FLjava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "progress"    # F
    .param p2, "month"    # Ljava/lang/String;
    .param p3, "phoneList"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 33
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 34
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->buildMonthDateWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 35
    .local v8, "monthDateWhere":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->smsConversation:Ljava/util/List;

    invoke-direct {p0, v0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->buildSmsPhoneWhereByConvers(Ljava/util/List;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    .local v7, "cWhere":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsBackupContactVisitor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 40
    return-void
.end method
