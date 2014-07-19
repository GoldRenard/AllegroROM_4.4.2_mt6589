.class Lcom/android/incallui/CallHandlerService$1;
.super Lcom/android/services/telephony/common/ICallHandlerService$Stub;
.source "CallHandlerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallHandlerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallHandlerService;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallHandlerService;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    invoke-direct {p0}, Lcom/android/services/telephony/common/ICallHandlerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptIncomingCallByVoiceCommand()V
    .locals 4

    .prologue
    .line 315
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "acceptIncomingCallByVoiceCommand()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing acceptIncomingCallByVoiceCommand()"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public answerVTCallPre()V
    .locals 4

    .prologue
    .line 294
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "answerVTCallPre()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->updateVTHideMeForMT()V

    .line 296
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing answerVTCallPre()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public applyPhoneTheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 363
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[applyPhoneTheme], pkgname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x17

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    return-void
.end method

.method public bringToForeground(Z)V
    .locals 5
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void

    :cond_0
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method public dialVTCallSuccess()V
    .locals 4

    .prologue
    .line 284
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dialVTCallSuccess()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->updateVTHideMeForMO()V

    .line 286
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x16

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing dialVTCallSuccess()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onAudioModeChange(IZ)V
    .locals 6
    .param p1, "mode"    # I
    .param p2, "muted"    # Z

    .prologue
    .line 184
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioModeChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v3, v4, p1, v1, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_1
    return-void

    .line 186
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onAudioModeChange() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 151
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onDisconnect() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onIncoming(Lcom/android/services/telephony/common/Call;Ljava/util/List;)V
    .locals 5
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "textResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onIncomingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v1, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    .local v1, "incomingCall":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/services/telephony/common/Call;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "incomingCall":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/services/telephony/common/Call;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error processing onIncoming() call."

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPhoneRaised()V
    .locals 4

    .prologue
    .line 346
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onPhoneRaised()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onPhoneRaised()"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPostDialWait(ILjava/lang/String;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method public onStorageFull()V
    .locals 4

    .prologue
    .line 242
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStorageFull"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onStorageFull()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onSuppServiceFailed"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onSuppServiceFailed()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSupportedAudioModeChange(I)V
    .locals 6
    .param p1, "modeMask"    # I

    .prologue
    .line 196
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSupportedAudioModeChange : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onSupportedAudioModeChange() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUpdate(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/services/telephony/common/Call;>;"
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onUpdate() call."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onUpdateRecordState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 232
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "customValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onUpdateRecordState()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onVTConnected()V
    .locals 0

    .prologue
    .line 228
    return-void
.end method

.method public onVTOpen()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onVTReady()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 5
    .param p1, "msgVT"    # I

    .prologue
    .line 261
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVTStateChanged()... state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing onVTStateChanged()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pushVTManagerParams(Lcom/android/services/telephony/common/VTManagerParams;)V
    .locals 4
    .param p1, "params"    # Lcom/android/services/telephony/common/VTManagerParams;

    .prologue
    .line 305
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pushVTManagerParams()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing pushVTManagerParams()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public pushVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "params"    # Lcom/android/services/telephony/common/VTSettingParams;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 270
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pushVTSettingParams()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getVTSettingParams(Lcom/android/services/telephony/common/VTSettingParams;)V

    .line 272
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iput-object p2, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-void

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing pushVTSettingParams()."

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 335
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveVoiceCommandNotificationMessage()... message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing receiveVoiceCommandNotificationMessage()"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public rejectIncomingCallByVoiceCommand()V
    .locals 4

    .prologue
    .line 325
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rejectIncomingCallByVoiceCommand()..."

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing rejectIncomingCallByVoiceCommand()"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startCallService(Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/services/telephony/common/ICallCommandService;

    .prologue
    .line 140
    :try_start_0
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCallService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error processing setCallCommandservice() call"

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public updateDualtalkCallStatus(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/services/telephony/common/DualtalkCallInfo;

    .prologue
    .line 356
    # getter for: Lcom/android/incallui/CallHandlerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallHandlerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateDualtalkCallStatus], info:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallHandlerService$1;->this$0:Lcom/android/incallui/CallHandlerService;

    # getter for: Lcom/android/incallui/CallHandlerService;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/incallui/CallHandlerService;->access$100(Lcom/android/incallui/CallHandlerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 358
    return-void
.end method
