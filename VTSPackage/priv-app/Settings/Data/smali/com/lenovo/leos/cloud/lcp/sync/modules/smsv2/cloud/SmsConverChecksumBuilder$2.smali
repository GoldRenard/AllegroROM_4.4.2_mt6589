.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;
.super Ljava/lang/Object;
.source "SmsConverChecksumBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->deleteSmsList2Asyn(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

.field private final synthetic val$delSmsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;->val$delSmsList:Ljava/util/List;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;->val$delSmsList:Ljava/util/List;

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->asycDeleteSms(Ljava/util/List;)I

    move-result v0

    .line 111
    .local v0, "deleteCount":I
    const-string v1, "SmsDaoImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5e94\u8be5\u5220\u9664\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder$2;->val$delSmsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",-----\u5b9e\u9645\u5220\u9664\u91cd\u590d\u77ed\u4fe1\u4e2a\u6570\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method
