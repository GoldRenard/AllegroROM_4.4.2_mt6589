.class Lcom/android/server/lightadjust/LightAdjuestCore$1;
.super Ljava/lang/Object;
.source "LightAdjuestCore.java"

# interfaces
.implements Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lightadjust/LightAdjuestCore;->Start(Lcom/android/server/lightadjust/LightAdjuestCore$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/LightAdjuestCore;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/LightAdjuestCore;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public UpdateData(I)V
    .locals 4
    .param p1, "sampleData"    # I

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # setter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v1, p1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$002(Lcom/android/server/lightadjust/LightAdjuestCore;I)I

    .line 197
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$200(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$000(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getBrightnessPercent(I)I

    move-result v2

    # setter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I
    invoke-static {v1, v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$102(Lcom/android/server/lightadjust/LightAdjuestCore;I)I

    .line 198
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$200(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$000(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getBrightnessValue(I)I

    move-result v0

    .line 199
    .local v0, "backlightvalue":I
    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1-Env--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$000(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LUX,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Value--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BGL, percent--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$100(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$400(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$400(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/lightadjust/LightAdjuestCore$Callback;->UpdateDisplay()V

    .line 203
    :cond_0
    return-void
.end method

.method public UpdateFirstData(I)V
    .locals 4
    .param p1, "sampleData"    # I

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # setter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v1, p1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$002(Lcom/android/server/lightadjust/LightAdjuestCore;I)I

    .line 209
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$200(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$000(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getBrightnessPercent(I)I

    move-result v2

    # setter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I
    invoke-static {v1, v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$102(Lcom/android/server/lightadjust/LightAdjuestCore;I)I

    .line 210
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$200(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v2}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$000(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getBrightnessValue(I)I

    move-result v0

    .line 211
    .local v0, "backlightvalue":I
    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2-Env--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$000(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LUX,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Value--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " BGL, percent--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I
    invoke-static {v3}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$100(Lcom/android/server/lightadjust/LightAdjuestCore;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$400(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore$1;->this$0:Lcom/android/server/lightadjust/LightAdjuestCore;

    # getter for: Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->access$400(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/lightadjust/LightAdjuestCore$Callback;->updateBrightnessTheFirstData()V

    .line 215
    :cond_0
    return-void
.end method
