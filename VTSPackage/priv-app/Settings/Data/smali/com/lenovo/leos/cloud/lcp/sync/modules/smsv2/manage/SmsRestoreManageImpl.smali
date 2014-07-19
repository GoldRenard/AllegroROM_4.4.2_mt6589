.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;
.super Ljava/lang/Object;
.source "SmsRestoreManageImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsManage;


# instance fields
.field private context:Landroid/content/Context;

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpMachine"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 24
    return-void
.end method

.method private getSmsRestoreResp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 4
    .param p1, "req"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->context:Landroid/content/Context;

    const-string v3, "pcs/v3/nearsmslist"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    .line 38
    .local v1, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getBytes(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "respStr":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;-><init>(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public queryConversation(II)Ljava/util/List;
    .locals 5
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->context:Landroid/content/Context;

    const-string v4, "pcs/v3/phonelist"

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    .line 55
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v3, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "respStr":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "phoneListResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestorePhoneListResponse;->getAllSms()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public querySms(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;II)Ljava/util/List;
    .locals 3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildNearSmsListReq(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "req":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->getSmsRestoreResp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v1

    .line 33
    .local v1, "restoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getAllSms()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public querySmsSize(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)I
    .locals 3
    .param p1, "startTime"    # Ljava/lang/Long;
    .param p2, "endTime"    # Ljava/lang/Long;
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-static {p1, p2, p3, v2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildNearSmsListReq(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "req":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;->getSmsRestoreResp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v1

    .line 48
    .local v1, "restoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getAllCount()I

    move-result v2

    return v2
.end method
