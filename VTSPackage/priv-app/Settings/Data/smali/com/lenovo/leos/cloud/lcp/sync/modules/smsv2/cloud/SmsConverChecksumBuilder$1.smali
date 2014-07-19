.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;
.super Ljava/lang/Object;
.source "SmsConverChecksumBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->batchQuerySms2Request(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field lastSmsUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

.field private final synthetic val$allTotal:I

.field private final synthetic val$checksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

.field private final synthetic val$delSmsList:Ljava/util/List;

.field private final synthetic val$phoneList:Ljava/util/Set;

.field private final synthetic val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;Ljava/util/Set;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;I)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$delSmsList:Ljava/util/List;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$checksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$phoneList:Ljava/util/Set;

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    iput p6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$allTotal:I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->lastSmsUid:Ljava/lang/String;

    return-void
.end method

.method private putCacheSmsKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V
    .locals 3
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .param p2, "curSmsUid"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildAdlerCrcKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "smsKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->cacheSmsKey2Locks:Ljava/util/Map;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;III)Z
    .locals 5
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .param p2, "cur"    # I
    .param p3, "total"    # I
    .param p4, "offset"    # I

    .prologue
    .line 76
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsUid(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "curSmsUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->lastSmsUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$delSmsList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$checksum:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->addSms2Request(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 84
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->lastSmsUid:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$phoneList:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->formatPhone(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->putCacheSmsKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    add-int v2, p2, p4

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$1;->val$allTotal:I

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method
