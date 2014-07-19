.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;
.super Landroid/app/Service;
.source "SmsUpdateConversations.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsUpdateConversations"


# instance fields
.field private isRunning:Z

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->isRunning:Z

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->updateConversations(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->isRunning:Z

    return-void
.end method

.method private doWork()V
    .locals 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->isRunning:Z

    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->isRunning:Z

    .line 63
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->doWork()V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 82
    .local v2, "isRunning":Z
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 83
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v5, 0x1e

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 84
    .local v4, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_0

    .line 85
    const/4 v5, 0x0

    .line 94
    :goto_0
    return v5

    .line 87
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_1

    :goto_2
    move v5, v2

    .line 94
    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 89
    .local v3, "serviceClassName":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 90
    const/4 v2, 0x1

    .line 91
    goto :goto_2

    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateConversations(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    const-string v2, "content://mms-sms/conversations"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 72
    .local v0, "conversationUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 73
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "thread_id<1"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "conversationUri":Landroid/net/Uri;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->queue:Ljava/util/Queue;

    .line 35
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->queue:Ljava/util/Queue;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;->doWork()V

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
