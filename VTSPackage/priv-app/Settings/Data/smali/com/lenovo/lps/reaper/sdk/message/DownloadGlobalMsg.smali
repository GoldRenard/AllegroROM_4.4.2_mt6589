.class Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;
.super Ljava/lang/Object;
.source "DownloadGlobalMsg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg$1;
    }
.end annotation


# instance fields
.field private clickAction:Ljava/lang/String;

.field private clickContent:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private msgBody:Ljava/lang/String;

.field private msgHead:Ljava/lang/String;

.field private msgId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msgId"    # I
    .param p3, "msgHead"    # Ljava/lang/String;
    .param p4, "msgBody"    # Ljava/lang/String;
    .param p5, "clickAction"    # Ljava/lang/String;
    .param p6, "clickContent"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->context:Landroid/content/Context;

    .line 24
    iput p2, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->msgId:I

    .line 25
    iput-object p3, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->msgHead:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->msgBody:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->clickAction:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->clickContent:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private getClickIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p1, "clickAction"    # Ljava/lang/String;
    .param p2, "clickContent"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 47
    .local v1, "clickType":Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;->values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;

    move-result-object v0

    .local v0, "arr$":[Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 48
    .local v4, "type":Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    move-object v1, v4

    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v4    # "type":Lcom/lenovo/lps/reaper/sdk/util/Constants$MsgConst$ClickType;
    :cond_1
    if-eqz v1, :cond_2

    .line 53
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg$1;->$SwitchMap$com$lenovo$lps$reaper$sdk$util$Constants$MsgConst$ClickType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 58
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v7, ""

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    return-object v5

    .line 55
    :pswitch_0
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_1

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public show()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 32
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->context:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 34
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v1, v5, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 35
    .local v1, "icon":I
    new-instance v4, Landroid/app/Notification;

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->msgBody:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v1, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 36
    .local v4, "notification":Landroid/app/Notification;
    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 37
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->clickAction:Ljava/lang/String;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->clickContent:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->getClickIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 38
    .local v2, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->context:Landroid/content/Context;

    invoke-static {v5, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 40
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->msgHead:Ljava/lang/String;

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->msgBody:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 41
    iget v5, p0, Lcom/lenovo/lps/reaper/sdk/message/DownloadGlobalMsg;->msgId:I

    invoke-virtual {v3, v5, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 42
    return-void
.end method
