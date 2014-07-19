.class public Lcom/mediatek/incallui/VoiceCommandUIUtils;
.super Ljava/lang/Object;
.source "VoiceCommandUIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;,
        Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceCommandUIUtils"

.field private static sVoiceCommandUIUtils:Lcom/mediatek/incallui/VoiceCommandUIUtils;


# instance fields
.field private mDetectListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;

.field private mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/incallui/VoiceCommandUIUtils;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/mediatek/incallui/VoiceCommandUIUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->sVoiceCommandUIUtils:Lcom/mediatek/incallui/VoiceCommandUIUtils;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/mediatek/incallui/VoiceCommandUIUtils;

    invoke-direct {v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->sVoiceCommandUIUtils:Lcom/mediatek/incallui/VoiceCommandUIUtils;

    .line 39
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->sVoiceCommandUIUtils:Lcom/mediatek/incallui/VoiceCommandUIUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "VoiceCommandUIUtils"

    invoke-static {v0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public acceptIncomingCallByVoiceCommand()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "acceptIncomingCallByVoiceCommand()..mListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->log(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    invoke-interface {v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;->acceptIncomingCallByVoiceCommand()V

    .line 47
    :cond_0
    return-void
.end method

.method public onPhoneRaised()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneRaised()... mDetectListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mDetectListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->log(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mDetectListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mDetectListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;

    invoke-interface {v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;->onPhoneRaised()V

    .line 66
    :cond_0
    return-void
.end method

.method public receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiveVoiceCommandNotificationMessage()... message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->log(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    invoke-interface {v0, p1}, Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;->receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public rejectIncomingCallByVoiceCommand()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rejectIncomingCallByVoiceCommand()... mListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->log(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    invoke-interface {v0}, Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;->rejectIncomingCallByVoiceCommand()V

    .line 53
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;

    .line 24
    return-void
.end method

.method public setPhoneDetectListener(Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/mediatek/incallui/VoiceCommandUIUtils;->mDetectListener:Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;

    .line 28
    return-void
.end method
