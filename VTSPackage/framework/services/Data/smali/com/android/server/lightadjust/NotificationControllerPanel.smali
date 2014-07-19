.class public Lcom/android/server/lightadjust/NotificationControllerPanel;
.super Ljava/lang/Object;
.source "NotificationControllerPanel.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "zhangxj"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationView:Landroid/widget/RemoteViews;

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    .line 30
    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->prepareNotification()V

    .line 31
    return-void
.end method

.method private cancelNotification()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->nm:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->nm:Landroid/app/NotificationManager;

    const v1, 0x10405f1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 151
    :cond_0
    return-void
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 160
    move v0, p1

    .line 162
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 166
    :goto_0
    return v0

    .line 164
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentProfileResId()I
    .locals 4

    .prologue
    .line 86
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/lightadjust/AppConfig;->getCurrentProfileIndex(Landroid/content/Context;)I

    move-result v0

    .line 87
    .local v0, "mode":I
    const/4 v3, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 93
    .local v2, "resIds":[I
    array-length v3, v2

    if-ge v0, v3, :cond_0

    if-ltz v0, :cond_0

    .line 94
    aget v1, v2, v0

    .line 97
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 87
    :array_0
    .array-data 4
        0x108068a
        0x108068c
        0x108068b
        0x1080689
    .end array-data
.end method

.method private getIsBrightnessAutoMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 156
    .local v0, "checked":Z
    :goto_0
    return v0

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 154
    goto :goto_0
.end method

.method private getNewPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 118
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 119
    .local v1, "switchIntent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    const-string v2, "msg"

    const-string v3, "this is from notification Bar"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    iget-object v2, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 122
    .local v0, "pendingSwitchIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private prepareNotification()V
    .locals 10

    .prologue
    const v9, 0x102038d

    const v8, 0x102038c

    const v7, 0x102038b

    const v6, 0x1020388

    const/4 v5, 0x0

    .line 36
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x1080684

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->notification:Landroid/app/Notification;

    .line 41
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->notification:Landroid/app/Notification;

    const/16 v4, 0x20

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "mainIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 48
    .local v1, "pendingMainIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->notification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 51
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x10900cc

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    .line 53
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x1080682

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 55
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x102038e

    const v5, 0x1080686

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 57
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x108068d

    invoke-virtual {v3, v7, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getCurrentProfileResId()I

    move-result v2

    .line 60
    .local v2, "profile_resid":I
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    invoke-virtual {v3, v8, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 62
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x108068f

    invoke-virtual {v3, v9, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 68
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const-string v4, "com.lenovo.lightadjuest.DECREASE_BRIGHTNESS"

    invoke-direct {p0, v4}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getNewPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 70
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v4, 0x102038e

    const-string v5, "com.lenovo.lightadjuest.INCREASE_BRIGHTNESS"

    invoke-direct {p0, v5}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getNewPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 72
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const-string v4, "com.lenovo.lightadjuest.REFRESH_NOW"

    invoke-direct {p0, v4}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getNewPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const-string v4, "com.lenovo.lightadjuest.CHANGE_PROFILE"

    invoke-direct {p0, v4}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getNewPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 76
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const-string v4, "com.lenovo.lightadjuest.LOCK_BRIGHTNESS"

    invoke-direct {p0, v4}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getNewPendingIntent(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 80
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->notification:Landroid/app/Notification;

    iget-object v4, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 82
    iget-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->nm:Landroid/app/NotificationManager;

    .line 83
    return-void
.end method

.method private showNotification()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->nm:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/lightadjust/AppConfig;->getIfShowNotificationControlPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->getIsBrightnessAutoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->nm:Landroid/app/NotificationManager;

    const v1, 0x10405f1

    iget-object v2, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 143
    const-string v0, "zhangxj"

    const-string v1, "--Brightness Enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    return-void
.end method

.method private updateNotificationView(I)V
    .locals 4
    .param p1, "percent"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "backlight":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "zhangxj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v2, 0x102038a

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 107
    :cond_0
    return-void
.end method

.method private updateNotificationView(II)V
    .locals 4
    .param p1, "enviromentalLightValue"    # I
    .param p2, "backlightBrightness"    # I

    .prologue
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LUX -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BRIGHT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "backlight":Ljava/lang/String;
    const-string v1, "zhangxj"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update string="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v2, 0x102038a

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public notificationEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->showNotification()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->cancelNotification()V

    goto :goto_0
.end method

.method public updateNotificationLockIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v1, 0x102038d

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 179
    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->showNotification()V

    .line 181
    :cond_0
    return-void
.end method

.method public updateNotificationProfileIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/server/lightadjust/NotificationControllerPanel;->mNotificationView:Landroid/widget/RemoteViews;

    const v1, 0x102038c

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 172
    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->showNotification()V

    .line 174
    :cond_0
    return-void
.end method

.method public updateNotificationViewDisplay(II)V
    .locals 0
    .param p1, "enviromentalLightValue"    # I
    .param p2, "backlightBrightness"    # I

    .prologue
    .line 128
    invoke-direct {p0, p1, p2}, Lcom/android/server/lightadjust/NotificationControllerPanel;->updateNotificationView(II)V

    .line 129
    invoke-direct {p0}, Lcom/android/server/lightadjust/NotificationControllerPanel;->showNotification()V

    .line 130
    return-void
.end method
