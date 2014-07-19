.class Lcom/android/server/lightadjust/LightAdjustService$1;
.super Ljava/lang/Object;
.source "LightAdjustService.java"

# interfaces
.implements Lcom/android/server/lightadjust/LightAdjuestCore$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lightadjust/LightAdjustService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/LightAdjustService;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateDisplay()V
    .locals 4

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$100(Lcom/android/server/lightadjust/LightAdjustService;)Lcom/android/server/lightadjust/LightAdjuestCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->isLockedBrightness()Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$100(Lcom/android/server/lightadjust/LightAdjustService;)Lcom/android/server/lightadjust/LightAdjuestCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v0

    .line 115
    .local v0, "enviromentalLightLevel":I
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$100(Lcom/android/server/lightadjust/LightAdjustService;)Lcom/android/server/lightadjust/LightAdjuestCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessValue()I

    move-result v1

    .line 117
    .local v1, "screenBrightnessValue":I
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->mProcessCore:Lcom/android/server/lightadjust/LightAdjuestCore;
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjustService;->access$100(Lcom/android/server/lightadjust/LightAdjustService;)Lcom/android/server/lightadjust/LightAdjuestCore;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->getScreenBrightnessValue()I

    move-result v3

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->setBacklightValue(I)V
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/LightAdjustService;->access$200(Lcom/android/server/lightadjust/LightAdjustService;I)V

    .line 119
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->mNotificationControllerPanel:Lcom/android/server/lightadjust/NotificationControllerPanel;
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjustService;->access$300(Lcom/android/server/lightadjust/LightAdjustService;)Lcom/android/server/lightadjust/NotificationControllerPanel;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/lightadjust/NotificationControllerPanel;->updateNotificationViewDisplay(II)V

    .line 120
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientDataFromService(II)V
    invoke-static {v2, v0, v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$400(Lcom/android/server/lightadjust/LightAdjustService;II)V

    .line 122
    .end local v0    # "enviromentalLightLevel":I
    .end local v1    # "screenBrightnessValue":I
    :cond_0
    return-void
.end method

.method public sendLogInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->callBackToUpdateClientLogInfor(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/lightadjust/LightAdjustService;->access$600(Lcom/android/server/lightadjust/LightAdjustService;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public updateBrightnessTheFirstData()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "AUTOADJUST"

    const-string v1, "--update Brightness First Data!--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService$1;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->updateBrightnessUser()V
    invoke-static {v0}, Lcom/android/server/lightadjust/LightAdjustService;->access$500(Lcom/android/server/lightadjust/LightAdjustService;)V

    .line 128
    return-void
.end method
