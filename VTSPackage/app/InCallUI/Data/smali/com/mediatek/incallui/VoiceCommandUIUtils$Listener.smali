.class public interface abstract Lcom/mediatek/incallui/VoiceCommandUIUtils$Listener;
.super Ljava/lang/Object;
.source "VoiceCommandUIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/VoiceCommandUIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract acceptIncomingCallByVoiceCommand()V
.end method

.method public abstract receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V
.end method

.method public abstract rejectIncomingCallByVoiceCommand()V
.end method
