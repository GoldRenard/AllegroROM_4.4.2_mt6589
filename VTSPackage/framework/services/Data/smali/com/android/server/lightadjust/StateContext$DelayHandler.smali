.class final Lcom/android/server/lightadjust/StateContext$DelayHandler;
.super Landroid/os/Handler;
.source "StateContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/StateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/StateContext;


# direct methods
.method private constructor <init>(Lcom/android/server/lightadjust/StateContext;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/lightadjust/StateContext$DelayHandler;->this$0:Lcom/android/server/lightadjust/StateContext;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lightadjust/StateContext;Lcom/android/server/lightadjust/StateContext$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/lightadjust/StateContext;
    .param p2, "x1"    # Lcom/android/server/lightadjust/StateContext$1;

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/StateContext$DelayHandler;-><init>(Lcom/android/server/lightadjust/StateContext;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 184
    const-string v0, "ZZZstate"

    const-string v1, "--Timer out--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext$DelayHandler;->this$0:Lcom/android/server/lightadjust/StateContext;

    const-string v1, "--Timer out--"

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext$DelayHandler;->this$0:Lcom/android/server/lightadjust/StateContext;

    iget-object v1, p0, Lcom/android/server/lightadjust/StateContext$DelayHandler;->this$0:Lcom/android/server/lightadjust/StateContext;

    # getter for: Lcom/android/server/lightadjust/StateContext;->mTempState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-static {v1}, Lcom/android/server/lightadjust/StateContext;->access$100(Lcom/android/server/lightadjust/StateContext;)Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v1

    # invokes: Lcom/android/server/lightadjust/StateContext;->setDelayedState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/StateContext;->access$200(Lcom/android/server/lightadjust/StateContext;Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V

    .line 187
    return-void
.end method
