.class public Lcom/lenovo/lps/reaper/sdk/message/MsgManager;
.super Ljava/lang/Object;
.source "MsgManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MsgManager"

.field private static messageManager:Lcom/lenovo/lps/reaper/sdk/message/MsgManager;


# instance fields
.field private appMsgListener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

.field private context:Landroid/content/Context;

.field private internalIndex:I

.field private readMsgId:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private timestamp:J

.field private uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;",
            ">;"
        }
    .end annotation
.end field

.field private uploadMsgFile:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->messageManager:Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->readMsgId:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    return-void
.end method

.method private checkMessage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 160
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v0

    .line 163
    :cond_1
    const-string v1, "PushGlobalMessage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PushAppMessage"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->messageManager:Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    return-object v0
.end method

.method private isEnable()Z
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isEnableMsg()Z

    move-result v0

    return v0
.end method

.method private isOverElapsedTime()Z
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getMsgTaskNeedElapsedTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOverTaskInternal()Z
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->timestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst;->INTERVAL_SECOND_DEFAULT:[J

    iget v3, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    aget-wide v2, v2, v3

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReceived(I)Z
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->readMsgId:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadUploadMsgFromFile()V
    .locals 10

    .prologue
    .line 179
    :try_start_0
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v8}, Ljava/util/AbstractQueue;->clear()V

    .line 180
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsgFile:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    .line 184
    .local v6, "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 185
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 186
    .local v5, "msgId":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\u0001"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, "value":[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v4, v7, v8

    .line 188
    .local v4, "msgHead":Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v3, v7, v8

    .line 189
    .local v3, "msgBody":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 190
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v9, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;

    invoke-direct {v9, v5, v4, v3}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "msgBody":Ljava/lang/String;
    .end local v4    # "msgHead":Ljava/lang/String;
    .end local v5    # "msgId":I
    .end local v6    # "msgMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v7    # "value":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private needShow(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "PushGlobalMessage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyAppMsg(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "\u0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 153
    .local v2, "msgId":I
    const/4 v0, 0x1

    aget-object v3, v6, v0

    .line 154
    .local v3, "msgHead":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v4, v6, v0

    .line 155
    .local v4, "msgBody":Ljava/lang/String;
    const/4 v0, 0x3

    aget-object v5, v6, v0

    .line 156
    .local v5, "msgType":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->appMsgListener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;-><init>(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/DownloadAppMsg;->notifyApp()V

    .line 157
    return-void
.end method

.method private resetTimeInternal()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    .line 118
    return-void
.end method

.method private saveUploadMsgToFile(Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;)V
    .locals 5
    .param p1, "msg"    # Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsgFile:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;->getHead()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0001"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private showGlobalMsg(Ljava/lang/String;)V
    .locals 9
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x3

    .line 141
    const-string v0, "\u0001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 142
    .local v7, "values":[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v7, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 143
    .local v2, "msgId":I
    const/4 v0, 0x1

    aget-object v3, v7, v0

    .line 144
    .local v3, "msgHead":Ljava/lang/String;
    const/4 v0, 0x2

    aget-object v4, v7, v0

    .line 145
    .local v4, "msgBody":Ljava/lang/String;
    array-length v0, v7

    if-le v0, v1, :cond_0

    aget-object v5, v7, v1

    .line 146
    .local v5, "clickAction":Ljava/lang/String;
    :goto_0
    array-length v0, v7

    if-le v0, v8, :cond_1

    aget-object v6, v7, v8

    .line 147
    .local v6, "clickContent":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->context:Landroid/content/Context;

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->show()V

    .line 148
    return-void

    .line 145
    .end local v5    # "clickAction":Ljava/lang/String;
    .end local v6    # "clickContent":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    goto :goto_0

    .line 146
    .restart local v5    # "clickAction":Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_1
.end method


# virtual methods
.method public addMsgTask(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 4
    .param p1, "config"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 79
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->appMsgListener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 86
    .local v0, "downloadMessage":Z
    :goto_1
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->hasUploadMsg()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->isOverElapsedTime()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->isOverTaskInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 87
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v1

    const/4 v2, 0x2

    new-instance v3, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;

    invoke-direct {v3, p1, v0}, Lcom/lenovo/lps/reaper/sdk/task/MessageUploadTask;-><init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;Z)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    goto :goto_0

    .line 85
    .end local v0    # "downloadMessage":Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public addTimeInternal()V
    .locals 2

    .prologue
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->timestamp:J

    .line 109
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    .line 110
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst;->INTERVAL_SECOND_DEFAULT:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 111
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst;->INTERVAL_SECOND_DEFAULT:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    .line 113
    :cond_0
    return-void
.end method

.method public addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "msgHead"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .local v0, "newMsg":Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->saveUploadMsgToFile(Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;)V

    .line 96
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->resetTimeInternal()V

    .line 97
    return-void
.end method

.method public clearUploadedMsg(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "uploadedMessages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 47
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 48
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsgFile:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MsgManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getUploadMsgList()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/lenovo/lps/reaper/sdk/message/UploadAppMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public hasUploadMsg()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsg:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initial(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->timestamp:J

    .line 38
    iput v2, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->internalIndex:I

    .line 39
    const-string v0, "Msg"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->uploadMsgFile:Landroid/content/SharedPreferences;

    .line 40
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->loadUploadMsgFromFile()V

    .line 41
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public parseDownloadMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->checkMessage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->resetTimeInternal()V

    .line 61
    :try_start_0
    const-string v2, "\u0001"

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "msgId":I
    invoke-direct {p0, v1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->isReceived(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->readMsgId:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->needShow(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->showGlobalMsg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v1    # "msgId":I
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MsgManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "message parse error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "msgId":I
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->notifyAppMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setOnAppMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->appMsgListener:Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    .line 105
    return-void
.end method
