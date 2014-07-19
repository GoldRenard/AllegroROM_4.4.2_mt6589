.class Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;
.super Ljava/util/TimerTask;
.source "RandomGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->startGenerate(Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 112
    # getter for: Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I
    invoke-static {}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->access$000()[I

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 113
    .local v3, "last_index":I
    # getter for: Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I
    invoke-static {}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->access$000()[I

    move-result-object v4

    aget v0, v4, v1

    .line 114
    .local v0, "firstValue":I
    # getter for: Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I
    invoke-static {}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->access$000()[I

    move-result-object v4

    aget v2, v4, v3

    .line 115
    .local v2, "lastValue":I
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    iget v4, v4, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->result1:I

    if-ne v4, v2, :cond_0

    const/4 v1, 0x1

    .line 116
    .local v1, "flag":Z
    :cond_0
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    if-eqz v1, :cond_2

    .end local v0    # "firstValue":I
    :goto_0
    iput v0, v4, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->result1:I

    .line 125
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    iget v6, v6, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->result1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    # getter for: Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    invoke-static {v4}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->access$100(Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    # getter for: Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    invoke-static {v4}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->access$100(Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    iget v5, v5, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;->result1:I

    invoke-interface {v4, v5}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;->UpdateData(I)V

    .line 130
    :cond_1
    return-void

    .restart local v0    # "firstValue":I
    :cond_2
    move v0, v2

    .line 116
    goto :goto_0
.end method
