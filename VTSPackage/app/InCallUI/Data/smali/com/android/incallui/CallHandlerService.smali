.class public Lcom/android/incallui/CallHandlerService;
.super Landroid/app/Service;
.source "CallHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallHandlerService$MainHandler;
    }
.end annotation


# static fields
.field private static final LARGEST_MSG_ID:I = 0x17

.field private static final ON_AUDIO_MODE:I = 0x4

.field private static final ON_BRING_TO_FOREGROUND:I = 0x7

.field private static final ON_DESTROY:I = 0xa

.field private static final ON_DISCONNECT_CALL:I = 0x6

.field private static final ON_DUALTALK_INFO_UPDATE:I = 0x14

.field private static final ON_POST_CHAR_WAIT:I = 0x8

.field private static final ON_START:I = 0x9

.field private static final ON_STORAGE_FULL:I = 0xc

.field private static final ON_SUPPORTED_AUDIO_MODE:I = 0x5

.field private static final ON_SUPP_SERVICE_FAILED:I = 0xd

.field private static final ON_UPDATE_CALL:I = 0x1

.field private static final ON_UPDATE_CALL_THEME_CENTER:I = 0x17

.field private static final ON_UPDATE_CALL_WITH_TEXT_RESPONSES:I = 0x3

.field private static final ON_UPDATE_MULTI_CALL:I = 0x2

.field private static final ON_UPDATE_RECORD_STATE:I = 0xb

.field private static final ON_VOICE_UI_COMMAND_ACCEPT_INCOMING_CALL:I = 0x10

.field private static final ON_VOICE_UI_COMMAND_PHONE_DETECT_RAISED:I = 0x13

.field private static final ON_VOICE_UI_COMMAND_RECEIVE_NOTIFICATION_MESSAGE:I = 0x12

.field private static final ON_VOICE_UI_COMMAND_REJECT_INCOMING_CALL:I = 0x11

.field private static final ON_VT_STATE_CHANGE:I = 0xe

.field private static final PUSH_VT_MANAGER_PARAMS:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field private static final VT_ANSWER_CALL_PRE:I = 0x15

.field private static final VT_DIAL_CALL_SUCCESS:I = 0x16


# instance fields
.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private final mBinder:Lcom/android/services/telephony/common/ICallHandlerService$Stub;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mHandlerInitLock:Ljava/lang/Object;

.field private mInCallPresenter:Lcom/android/incallui/InCallPresenter;

.field private mMainHandler:Landroid/os/Handler;

.field private mServiceStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/incallui/CallHandlerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mHandlerInitLock:Ljava/lang/Object;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    .line 135
    new-instance v0, Lcom/android/incallui/CallHandlerService$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallHandlerService$1;-><init>(Lcom/android/incallui/CallHandlerService;)V

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mBinder:Lcom/android/services/telephony/common/ICallHandlerService$Stub;

    .line 420
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallHandlerService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CallHandlerService;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallHandlerService;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/incallui/CallHandlerService;->executeMessage(Landroid/os/Message;)V

    return-void
.end method

.method private applyPhoneTheme(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->applyPhoneTheme(Ljava/lang/String;)V

    .line 586
    return-void

    .line 584
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CallHandlerService is not dostart"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doStart(Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 5
    .param p1, "service"    # Lcom/android/services/telephony/common/ICallCommandService;

    .prologue
    const/16 v4, 0xa

    .line 370
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "doStart"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->setService(Lcom/android/services/telephony/common/ICallCommandService;)V

    .line 377
    iget-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    if-eqz v0, :cond_0

    .line 378
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "Starting a service before another one is completed"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/android/incallui/CallHandlerService;->doStop()V

    .line 382
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    .line 383
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 384
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 386
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallPresenter;->setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;)V

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    .line 391
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    :cond_1
    return-void
.end method

.method private executeMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 432
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x17

    if-le v1, v4, :cond_0

    .line 435
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot handle message larger than LARGEST_MSG_ID."

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    :cond_0
    iget-boolean v1, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    if-nez v1, :cond_2

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x9

    if-eq v1, v4, :cond_2

    .line 439
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System not initialized.  Ignoring message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_1
    :goto_0
    return-void

    .line 443
    :cond_2
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executeMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-direct {p0, p1}, Lcom/android/incallui/CallHandlerService;->handleMTKMessage(Landroid/os/Message;)Z

    .line 447
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 449
    :pswitch_0
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON_UPDATE_CALL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 453
    :pswitch_1
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON_UPDATE_MULTI_CALL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallList;->onUpdate(Ljava/util/List;)V

    goto :goto_0

    .line 457
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 459
    .local v0, "entry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Lcom/android/services/telephony/common/Call;Ljava/util/List<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON_INCOMING_CALL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v3, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {v3, v1, v2}, Lcom/android/incallui/CallList;->onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V

    goto/16 :goto_0

    .line 463
    .end local v0    # "entry":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Lcom/android/services/telephony/common/Call;Ljava/util/List<Ljava/lang/String;>;>;"
    :pswitch_3
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON_DISCONNECT_CALL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/common/Call;

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/CallList;->onDisconnect(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    goto/16 :goto_0

    .line 471
    :pswitch_4
    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/incallui/InCallPresenter;->onPostDialCharWait(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 474
    :pswitch_5
    sget-object v4, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_AUDIO_MODE: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v5}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", muted ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v2, :cond_4

    :goto_2
    invoke-virtual {v1, v4, v2}, Lcom/android/incallui/AudioModeProvider;->onAudioModeChange(IZ)V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 474
    goto :goto_1

    :cond_4
    move v2, v3

    .line 476
    goto :goto_2

    .line 479
    :pswitch_6
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ON_SUPPORTED_AUDIO_MODE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/AudioModeProvider;->onSupportedAudioModeChange(I)V

    goto/16 :goto_0

    .line 485
    :pswitch_7
    sget-object v1, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ON_BRING_TO_FOREGROUND"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-eqz v1, :cond_1

    .line 487
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_3

    .line 491
    :pswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/services/telephony/common/ICallCommandService;

    invoke-direct {p0, v1}, Lcom/android/incallui/CallHandlerService;->doStart(Lcom/android/services/telephony/common/ICallCommandService;)V

    goto/16 :goto_0

    .line 494
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/CallHandlerService;->doStop()V

    goto/16 :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private handleMTKMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 519
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 576
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 521
    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->onStorageFull()V

    move v0, v1

    .line 522
    goto :goto_0

    .line 524
    :pswitch_1
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.arg1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msg.arg2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2, v3}, Lcom/android/incallui/CallList;->onUpdateRecordState(II)V

    move v0, v1

    .line 526
    goto :goto_0

    .line 528
    :pswitch_2
    sget-object v2, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.obj = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->onSuppServiceFailed(Ljava/lang/String;)V

    move v0, v1

    .line 530
    goto :goto_0

    .line 532
    :pswitch_3
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->onVTStateChanged(I)V

    move v0, v1

    .line 534
    goto/16 :goto_0

    .line 536
    :pswitch_4
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "ON_VT_DATA_UPDATE"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/services/telephony/common/VTManagerParams;

    invoke-virtual {v2, v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V

    move v0, v1

    .line 538
    goto/16 :goto_0

    .line 540
    :pswitch_5
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "- handle - VT_ANSWER_CALL_PRE."

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->answerVTCallPre()V

    move v0, v1

    .line 542
    goto/16 :goto_0

    .line 544
    :pswitch_6
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "- handle - VT_DIAL_CALL_SUCCESS."

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->dialVTCallSuccess()V

    move v0, v1

    .line 546
    goto/16 :goto_0

    .line 548
    :pswitch_7
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "ON_VOICE_UI_COMMAND_ACCEPT_INCOMING_CALL"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->getInstance()Lcom/mediatek/incallui/VoiceCommandUIUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->acceptIncomingCallByVoiceCommand()V

    move v0, v1

    .line 550
    goto/16 :goto_0

    .line 552
    :pswitch_8
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "ON_VOICE_UI_COMMAND_REJECT_INCOMING_CALL"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->getInstance()Lcom/mediatek/incallui/VoiceCommandUIUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->rejectIncomingCallByVoiceCommand()V

    move v0, v1

    .line 554
    goto/16 :goto_0

    .line 556
    :pswitch_9
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "ON_VOICE_UI_COMMAND_RECEIVE_NOTIFICATION_MESSAGE"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->getInstance()Lcom/mediatek/incallui/VoiceCommandUIUtils;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V

    move v0, v1

    .line 558
    goto/16 :goto_0

    .line 560
    :pswitch_a
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "ON_VOICE_UI_COMMAND_PHONE_DETECT_RAISED"

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-static {}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->getInstance()Lcom/mediatek/incallui/VoiceCommandUIUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->onPhoneRaised()V

    move v0, v1

    .line 562
    goto/16 :goto_0

    .line 564
    :pswitch_b
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.obj = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/services/telephony/common/DualtalkCallInfo;

    invoke-virtual {v2, v0}, Lcom/android/incallui/InCallPresenter;->updateDualtalkCallInfo(Lcom/android/services/telephony/common/DualtalkCallInfo;)V

    move v0, v1

    .line 566
    goto/16 :goto_0

    .line 569
    :pswitch_c
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v2, "- handle - ON_UPDATE_CALL_THEME_CENTER."

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallHandlerService;->applyPhoneTheme(Ljava/lang/String;)V

    move v0, v1

    .line 571
    goto/16 :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_5
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public doStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 398
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "doStop"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    if-nez v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 404
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallHandlerService;->mServiceStarted:Z

    .line 408
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    .line 409
    iput-object v2, p0, Lcom/android/incallui/CallHandlerService;->mCallList:Lcom/android/incallui/CallList;

    .line 411
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->tearDown()V

    .line 412
    iput-object v2, p0, Lcom/android/incallui/CallHandlerService;->mInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 413
    iput-object v2, p0, Lcom/android/incallui/CallHandlerService;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mBinder:Lcom/android/services/telephony/common/ICallHandlerService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 84
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mHandlerInitLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/incallui/CallHandlerService$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallHandlerService$MainHandler;-><init>(Lcom/android/incallui/CallHandlerService;)V

    iput-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    .line 88
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->initPlugin(Landroid/content/Context;)V

    .line 92
    return-void

    .line 88
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 96
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 117
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 128
    sget-object v0, Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    return v0
.end method
