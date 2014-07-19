.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations$1;
.super Ljava/lang/Object;
.source "SmsUpdateConversations.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->doWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->updateConversations(Landroid/content/Context;)V
    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;Z)V

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "SmsUpdateConversations"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
