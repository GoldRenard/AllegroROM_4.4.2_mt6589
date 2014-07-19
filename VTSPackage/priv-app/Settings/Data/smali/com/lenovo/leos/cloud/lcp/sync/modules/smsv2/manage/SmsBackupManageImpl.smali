.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;
.super Ljava/lang/Object;
.source "SmsBackupManageImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsManage;


# instance fields
.field private smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    .line 21
    return-void
.end method

.method private getWhereArgs(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "whereArgs":[Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 26
    const-string v1, "%"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 27
    const-string v1, "%"

    const-string v2, "/%"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_0
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_1

    .line 30
    const-string v1, "_"

    const-string v2, "/_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 32
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_2

    .line 33
    const-string v1, "/"

    const-string v2, "\\/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    :cond_2
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .end local v0    # "whereArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/"

    aput-object v2, v0, v1

    .line 37
    .restart local v0    # "whereArgs":[Ljava/lang/String;
    :cond_3
    return-object v0
.end method


# virtual methods
.method public queryConversation(II)Ljava/util/List;
    .locals 1
    .param p1, "limit"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->queryConversation(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public querySms(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;II)Ljava/util/List;
    .locals 8
    .param p1, "startTime"    # Ljava/lang/Long;
    .param p2, "endTime"    # Ljava/lang/Long;
    .param p3, "keyword"    # Ljava/lang/String;
    .param p4, "limit"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildTimeAndKeywordWhere(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "where":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;->getWhereArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "whereArgs":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v7, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl$1;

    invoke-direct {v1, p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;Ljava/util/List;)V

    .line 54
    .local v1, "visitor":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;
    const-string v4, " date DESC,body "

    .line 55
    .local v4, "orderBy":Ljava/lang/String;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-string v4, " locked desc,date DESC,body "

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 60
    return-object v7
.end method

.method public querySmsSize(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)I
    .locals 3
    .param p1, "startTime"    # Ljava/lang/Long;
    .param p2, "endTime"    # Ljava/lang/Long;
    .param p3, "keyword"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-static {p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildTimeAndKeywordWhere(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "where":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;->getWhereArgs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    invoke-interface {v2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method
