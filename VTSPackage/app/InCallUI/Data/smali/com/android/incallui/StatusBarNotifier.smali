.class public Lcom/android/incallui/StatusBarNotifier;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/StatusBarNotifier$NotificationTimer;
    }
.end annotation


# static fields
.field private static final CT_INCALL_RES_IDS:[[I

.field private static final IN_CALL_NOTIFICATION:I = 0x1

.field private static final IN_CALL_TIMEOUT:J = 0x3e8L


# instance fields
.field private mCallState:I

.field private final mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private final mContext:Landroid/content/Context;

.field private mIsShowingNotification:Z

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

.field private mSavedContent:I

.field private mSavedContentTitle:Ljava/lang/String;

.field private mSavedIcon:I

.field private mSavedLargeIcon:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 703
    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/StatusBarNotifier;->CT_INCALL_RES_IDS:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200d3
        0x7f0200d7
        0x7f0200cf
        0x7f0200db
        0x7f0200df
    .end array-data

    :array_1
    .array-data 4
        0x7f0200d1
        0x7f0200d5
        0x7f0200cd
        0x7f0200d9
        0x7f0200dd
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/incallui/StatusBarNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/StatusBarNotifier$1;-><init>(Lcom/android/incallui/StatusBarNotifier;)V

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    .line 96
    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 97
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 98
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 99
    iput v1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 108
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/StatusBarNotifier;
    .param p1, "x1"    # Lcom/android/services/telephony/common/Call;
    .param p2, "x2"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "x3"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method private addHangupAction(Landroid/app/Notification$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 543
    const-string v0, "Will show \"hang-up\" action in the ongoing active call Notification"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    const v0, 0x7f020059

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0295

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/incallui/StatusBarNotifier;->createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 552
    return-void
.end method

.method private buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 15
    .param p1, "originalCall"    # Lcom/android/services/telephony/common/Call;
    .param p2, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "allowFullScreenIntent"    # Z

    .prologue
    .line 317
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v9

    .line 318
    .local v9, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v7

    if-eq v1, v7, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->canShowNotification()Z

    move-result v1

    if-nez v1, :cond_2

    .line 327
    const-string v1, "[buildAndSendNotification]abort build Notification, can not show it, now"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_2
    invoke-virtual {v9}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v6

    .line 333
    .local v6, "state":I
    invoke-virtual {v9}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v11

    .line 334
    .local v11, "isConference":Z
    invoke-direct {p0, v9}, Lcom/android/incallui/StatusBarNotifier;->getIconToDisplay(Lcom/android/services/telephony/common/Call;)I

    move-result v2

    .line 335
    .local v2, "iconResId":I
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11}, Lcom/android/incallui/StatusBarNotifier;->getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 336
    .local v4, "largeIcon":Landroid/graphics/Bitmap;
    invoke-direct {p0, v9}, Lcom/android/incallui/StatusBarNotifier;->getContentString(Lcom/android/services/telephony/common/Call;)I

    move-result v3

    .line 337
    .local v3, "contentResId":I
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11}, Lcom/android/incallui/StatusBarNotifier;->getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;

    move-result-object v5

    .local v5, "contentTitle":Ljava/lang/String;
    move-object v1, p0

    move/from16 v7, p3

    .line 340
    invoke-direct/range {v1 .. v7}, Lcom/android/incallui/StatusBarNotifier;->checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->getNotificationBuilder()Landroid/app/Notification$Builder;

    move-result-object v8

    .line 351
    .local v8, "builder":Landroid/app/Notification$Builder;
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->createLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v10

    .line 352
    .local v10, "inCallPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 355
    if-eqz p3, :cond_3

    .line 356
    invoke-direct {p0, v8, v10, v9}, Lcom/android/incallui/StatusBarNotifier;->configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/services/telephony/common/Call;)V

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 361
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 362
    invoke-virtual {v8, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 363
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 365
    const/4 v1, 0x2

    if-ne v6, v1, :cond_6

    .line 366
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 367
    invoke-virtual {v9}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 373
    :goto_1
    const/4 v1, 0x2

    if-eq v6, v1, :cond_4

    const/4 v1, 0x7

    if-eq v6, v1, :cond_4

    invoke-static {v6}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    :cond_4
    invoke-direct {p0, v8}, Lcom/android/incallui/StatusBarNotifier;->addHangupAction(Landroid/app/Notification$Builder;)V

    .line 382
    :cond_5
    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 383
    .local v12, "notification":Landroid/app/Notification;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying IN_CALL_NOTIFICATION: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v7, 0x1

    invoke-virtual {v1, v7, v12}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 385
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    goto/16 :goto_0

    .line 369
    .end local v12    # "notification":Landroid/app/Notification;
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private canShowNotification()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 727
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isUiShowing()Z

    move-result v4

    if-nez v4, :cond_2

    move v1, v2

    .line 728
    .local v1, "isUiShowing":Z
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 729
    .local v0, "existIncomingCall":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[canShowNotification]ui showing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", incoming call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0    # "existIncomingCall":Z
    .end local v1    # "isUiShowing":Z
    :cond_2
    move v1, v3

    .line 727
    goto :goto_0

    .restart local v1    # "isUiShowing":Z
    :cond_3
    move v0, v3

    .line 728
    goto :goto_1
.end method

.method private cancelInCall()V
    .locals 2

    .prologue
    .line 179
    const-string v0, "cancelInCall()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    .line 182
    return-void
.end method

.method private checkForChangeAndSaveData(IILandroid/graphics/Bitmap;Ljava/lang/String;IZ)Z
    .locals 5
    .param p1, "icon"    # I
    .param p2, "content"    # I
    .param p3, "largeIcon"    # Landroid/graphics/Bitmap;
    .param p4, "contentTitle"    # Ljava/lang/String;
    .param p5, "state"    # I
    .param p6, "showFullScreenIntent"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 399
    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez p4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    if-eqz v4, :cond_6

    :cond_1
    move v0, v2

    .line 404
    .local v0, "contentTitleChanged":Z
    :goto_0
    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    if-ne v4, p2, :cond_2

    iget v4, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    if-ne v4, p5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    if-ne v4, p3, :cond_2

    if-eqz v0, :cond_7

    :cond_2
    move v1, v2

    .line 410
    .local v1, "retval":Z
    :goto_1
    if-eqz p6, :cond_3

    .line 411
    const-string v2, "Forcing full screen intent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x1

    .line 416
    :cond_3
    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier;->mIsShowingNotification:Z

    if-nez v2, :cond_4

    .line 417
    const-string v2, "Showing notification for first time."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    const/4 v1, 0x1

    .line 421
    :cond_4
    iput p1, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedIcon:I

    .line 422
    iput p2, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContent:I

    .line 423
    iput p5, p0, Lcom/android/incallui/StatusBarNotifier;->mCallState:I

    .line 424
    iput-object p3, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedLargeIcon:Landroid/graphics/Bitmap;

    .line 425
    iput-object p4, p0, Lcom/android/incallui/StatusBarNotifier;->mSavedContentTitle:Ljava/lang/String;

    .line 427
    if-eqz v1, :cond_5

    .line 428
    const-string v2, "Data changed.  Showing notification"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    :cond_5
    return v1

    .end local v0    # "contentTitleChanged":Z
    .end local v1    # "retval":Z
    :cond_6
    move v0, v3

    .line 399
    goto :goto_0

    .restart local v0    # "contentTitleChanged":Z
    :cond_7
    move v1, v3

    .line 404
    goto :goto_1
.end method

.method static clearInCallNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "backupContext"    # Landroid/content/Context;

    .prologue
    .line 185
    const-class v1, Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Something terrible happened. Clear all InCall notifications"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 190
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 191
    return-void
.end method

.method private configureFullScreenIntent(Landroid/app/Notification$Builder;Landroid/app/PendingIntent;Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v1, 0x1

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- Setting fullScreenIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 601
    .local v0, "isCallWaiting":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 602
    const-string v2, "updateInCallNotification: call-waiting! force relaunch..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 608
    :cond_1
    return-void

    .line 596
    .end local v0    # "isCallWaiting":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 694
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 696
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private createLaunchPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 677
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 684
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 686
    .local v0, "inCallPendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 529
    if-nez p1, :cond_1

    .line 530
    const/4 v0, 0x0

    .line 539
    :cond_0
    :goto_0
    return-object v0

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 533
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_2

    .line 534
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 536
    :cond_2
    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    goto :goto_0
.end method

.method private getContentString(Lcom/android/services/telephony/common/Call;)I
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 510
    const v0, 0x7f0a028c

    .line 512
    .local v0, "resId":I
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 513
    :cond_0
    const v0, 0x7f0a028e

    .line 522
    :cond_1
    :goto_0
    return v0

    .line 515
    :cond_2
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 516
    const v0, 0x7f0a028d

    goto :goto_0

    .line 518
    :cond_3
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 519
    const v0, 0x7f0a0287

    goto :goto_0
.end method

.method private getContentTitle(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Ljava/lang/String;
    .locals 2
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 438
    if-eqz p2, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0280

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    :goto_0
    return-object v0

    .line 441
    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 445
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getIconToDisplay(Lcom/android/services/telephony/common/Call;)I
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 493
    const/4 v0, 0x0

    .line 494
    .local v0, "enhancedVoicePrivacy":Z
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 495
    const v1, 0x7f02011d

    .line 500
    .local v1, "resId":I
    :goto_0
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/ext/ExtensionManager;->getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/StatusBarNotifier;->CT_INCALL_RES_IDS:[[I

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/mediatek/incallui/ext/NotificationExtension;->getInCallResId(Lcom/android/services/telephony/common/Call;ZI[[I)I

    move-result v1

    .line 502
    return v1

    .line 497
    .end local v1    # "resId":I
    :cond_0
    const v1, 0x7f02011b

    .restart local v1    # "resId":I
    goto :goto_0
.end method

.method private getLargeIconToDisplay(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "contactInfo"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2, "isConference"    # Z

    .prologue
    .line 452
    const/4 v1, 0x0

    .line 453
    .local v1, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 454
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02010a

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 457
    :cond_0
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 458
    iget-object v3, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 461
    :cond_1
    if-eqz v1, :cond_2

    .line 462
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 464
    .local v0, "height":I
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 466
    .local v2, "width":I
    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 469
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    return-object v1
.end method

.method private getNotificationBuilder()Landroid/app/Notification$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 611
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 612
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 615
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 617
    return-object v0
.end method

.method private shouldSuppressNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)Z
    .locals 2
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 627
    if-nez p2, :cond_0

    .line 628
    const-string v1, "suppressing: no call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x1

    .line 672
    :goto_0
    return v0

    .line 636
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    .line 639
    .local v0, "shouldSuppress":Z
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 640
    const-string v1, "suppressing: not connecting or connected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x1

    .line 650
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 651
    const-string v1, "unsuppressing: incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    const/4 v0, 0x0

    .line 662
    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 664
    const-string v1, "suppressing: activity not started."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x1

    .line 669
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/incallui/ext/NotificationExtension;->shouldSuppressNotification(Z)Z

    move-result v0

    .line 672
    goto :goto_0
.end method

.method private showNotification(Lcom/android/services/telephony/common/Call;Z)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "allowFullScreenIntent"    # Z

    .prologue
    .line 275
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 283
    .local v0, "isIncoming":Z
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/StatusBarNotifier$2;

    invoke-direct {v3, p0, p2}, Lcom/android/incallui/StatusBarNotifier$2;-><init>(Lcom/android/incallui/StatusBarNotifier;Z)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    .line 306
    return-void

    .line 275
    .end local v0    # "isIncoming":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 7
    .param p1, "allowFullScreenIntent"    # Z
    .param p2, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateInCallNotification(allowFullScreenIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, p3}, Lcom/android/incallui/StatusBarNotifier;->getCallToShow(Lcom/android/incallui/CallList;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 218
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v5

    if-nez v5, :cond_7

    move v1, v4

    .line 223
    .local v1, "isOutgoingWithoutIncallUi":Z
    :goto_0
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_0
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v5}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v5

    sget-object v6, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->FIRED:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v5, v6, :cond_8

    :cond_1
    move v2, v4

    .line 245
    .local v2, "showNotificationNow":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 246
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v5, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isActivityPreviouslyStarted()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_2
    move v2, v4

    .line 249
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateInCallNotification, showNotificationNow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    if-eqz v2, :cond_a

    .line 253
    invoke-direct {p0, v0, p1}, Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/services/telephony/common/Call;Z)V

    .line 256
    if-eqz p1, :cond_4

    .line 257
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/incallui/InCallPresenter;->showInCallMTK(Z)V

    .line 269
    :cond_4
    :goto_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_6

    .line 270
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->clear()V

    .line 272
    :cond_6
    return-void

    .end local v1    # "isOutgoingWithoutIncallUi":Z
    .end local v2    # "showNotificationNow":Z
    :cond_7
    move v1, v3

    .line 218
    goto :goto_0

    .restart local v1    # "isOutgoingWithoutIncallUi":Z
    :cond_8
    move v2, v3

    .line 223
    goto :goto_1

    .restart local v2    # "showNotificationNow":Z
    :cond_9
    move v2, v3

    .line 246
    goto :goto_2

    .line 261
    :cond_a
    invoke-direct {p0}, Lcom/android/incallui/StatusBarNotifier;->cancelInCall()V

    .line 262
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->getState()Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    move-result-object v3

    sget-object v4, Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;->CLEAR:Lcom/android/incallui/StatusBarNotifier$NotificationTimer$State;

    if-ne v3, v4, :cond_4

    .line 264
    iget-object v3, p0, Lcom/android/incallui/StatusBarNotifier;->mNotificationTimer:Lcom/android/incallui/StatusBarNotifier$NotificationTimer;

    invoke-interface {v3}, Lcom/android/incallui/StatusBarNotifier$NotificationTimer;->schedule()V

    goto :goto_3
.end method


# virtual methods
.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 117
    const-string v0, "onStateChange"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 120
    return-void
.end method

.method public updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 131
    const-string v0, "updateNotification"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 135
    return-void
.end method

.method public updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/incallui/StatusBarNotifier;->updateInCallNotification(ZLcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 172
    return-void
.end method
