.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl$1;
.super Ljava/lang/Object;
.source "SmsBackupManageImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;->querySms(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;II)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;

.field private final synthetic val$resultList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl$1;->val$resultList:Ljava/util/List;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;III)Z
    .locals 1
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    .param p2, "cur"    # I
    .param p3, "total"    # I
    .param p4, "offset"    # I

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsBackupManageImpl$1;->val$resultList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
