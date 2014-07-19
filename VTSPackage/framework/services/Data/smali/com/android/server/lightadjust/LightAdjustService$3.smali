.class Lcom/android/server/lightadjust/LightAdjustService$3;
.super Landroid/database/ContentObserver;
.source "LightAdjustService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/LightAdjustService;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/LightAdjustService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x0

    .line 188
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->getScreenBrightness()I
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$800(Lcom/android/server/lightadjust/LightAdjustService;)I

    move-result v1

    .line 189
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->isAutoAdjustEnable()Z
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjustService;->access$1000(Lcom/android/server/lightadjust/LightAdjustService;)Z

    move-result v3

    # setter for: Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/LightAdjustService;->access$902(Lcom/android/server/lightadjust/LightAdjustService;Z)Z

    .line 192
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$900(Lcom/android/server/lightadjust/LightAdjustService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string v0, "Enter AutoMode"

    .line 197
    .local v0, "logString":Ljava/lang/String;
    :goto_0
    const-string v2, "AUTOADJUST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "###Brightness Value Changed--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->clearAllMessages()V
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$1100(Lcom/android/server/lightadjust/LightAdjustService;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$900(Lcom/android/server/lightadjust/LightAdjustService;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 201
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # setter for: Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z
    invoke-static {v2, v5}, Lcom/android/server/lightadjust/LightAdjustService;->access$902(Lcom/android/server/lightadjust/LightAdjustService;Z)Z

    .line 202
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->sendExitAutoModeMessage(I)V
    invoke-static {v2, v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$1200(Lcom/android/server/lightadjust/LightAdjustService;I)V

    .line 206
    :goto_1
    return-void

    .line 195
    .end local v0    # "logString":Ljava/lang/String;
    :cond_0
    const-string v0, "Exit AutoMode"

    .restart local v0    # "logString":Ljava/lang/String;
    goto :goto_0

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$3;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->sendEnterAutoModeMessage(I)V
    invoke-static {v2, v5}, Lcom/android/server/lightadjust/LightAdjustService;->access$1300(Lcom/android/server/lightadjust/LightAdjustService;I)V

    goto :goto_1
.end method
