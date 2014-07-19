.class public Lcom/android/server/lightadjust/StateContext;
.super Ljava/lang/Object;
.source "StateContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/StateContext$1;,
        Lcom/android/server/lightadjust/StateContext$StateBoundary;,
        Lcom/android/server/lightadjust/StateContext$DelayHandler;
    }
.end annotation


# static fields
.field private static final MSG_TIMER_ENTER_OTHER_STATE_TIMEOUT:I = 0x11

.field public static final STATELOG:Ljava/lang/String; = "ZZZstate"


# instance fields
.field private isTimerRunning:Z

.field private mBrightStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

.field private mBrightStateBoundaryLcdbrightnessMaxValue:I

.field private mBrightStateBoundaryLcdbrightnessMinValue:I

.field private mContext:Landroid/content/Context;

.field private mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

.field private mDeepDarkStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

.field private mDeepDarkStateBoundaryLcdbrightnessMaxValue:I

.field private mDeepDarkStateBoundaryLcdbrightnessMinValue:I

.field private mDelayHandler:Landroid/os/Handler;

.field private mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

.field private mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

.field private mTempState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;


# direct methods
.method public constructor <init>(Lcom/android/server/lightadjust/ScreenBrightnessManager;Lcom/android/server/lightadjust/LightAdjuestCore;Landroid/content/Context;)V
    .locals 2
    .param p1, "screenBrightnessManager"    # Lcom/android/server/lightadjust/ScreenBrightnessManager;
    .param p2, "core"    # Lcom/android/server/lightadjust/LightAdjuestCore;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lightadjust/StateContext;->isTimerRunning:Z

    .line 57
    new-instance v0, Lcom/android/server/lightadjust/StateContext$DelayHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/lightadjust/StateContext$DelayHandler;-><init>(Lcom/android/server/lightadjust/StateContext;Lcom/android/server/lightadjust/StateContext$1;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mDelayHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/server/lightadjust/StateContext;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    .line 59
    iput-object p2, p0, Lcom/android/server/lightadjust/StateContext;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    .line 60
    iput-object p3, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/android/server/lightadjust/StateContext;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lightadjust/StateContext;)Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/StateContext;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mTempState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/lightadjust/StateContext;Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/StateContext;
    .param p1, "x1"    # Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/StateContext;->setDelayedState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V

    return-void
.end method

.method public static getState(II)Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .locals 4
    .param p0, "envLight"    # I
    .param p1, "lcdBrightness"    # I

    .prologue
    .line 38
    sget v2, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    if-lt p1, v2, :cond_0

    .line 39
    const-string v2, "ZZZstate"

    const-string v3, "init state--Bright--1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Lcom/android/server/lightadjust/BrightState;

    invoke-direct {v0}, Lcom/android/server/lightadjust/BrightState;-><init>()V

    .line 41
    .local v0, "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/BrightState;->setInitValue(I)V

    move-object v1, v0

    .line 52
    .end local v0    # "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .local v1, "state":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 43
    .end local v1    # "state":Ljava/lang/Object;
    :cond_0
    sget v2, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_IN:I

    if-ge p1, v2, :cond_1

    .line 44
    const-string v2, "ZZZstate"

    const-string v3, "init state--Dark--3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Lcom/android/server/lightadjust/DeepDarkState;

    invoke-direct {v0}, Lcom/android/server/lightadjust/DeepDarkState;-><init>()V

    .line 46
    .restart local v0    # "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/DeepDarkState;->setInitValue(I)V

    move-object v1, v0

    .line 47
    .restart local v1    # "state":Ljava/lang/Object;
    goto :goto_0

    .line 49
    .end local v0    # "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .end local v1    # "state":Ljava/lang/Object;
    :cond_1
    const-string v2, "ZZZstate"

    const-string v3, "init state--Dim--2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/android/server/lightadjust/DimlightState;

    invoke-direct {v0}, Lcom/android/server/lightadjust/DimlightState;-><init>()V

    .line 51
    .restart local v0    # "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/DimlightState;->setInitValue(I)V

    move-object v1, v0

    .line 52
    .restart local v1    # "state":Ljava/lang/Object;
    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    :goto_0
    iput v0, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundaryLcdbrightnessMinValue:I

    .line 67
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MAX_VALUE:I

    :goto_1
    iput v0, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundaryLcdbrightnessMaxValue:I

    .line 69
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_IN:I

    :goto_2
    iput v0, p0, Lcom/android/server/lightadjust/StateContext;->mDeepDarkStateBoundaryLcdbrightnessMinValue:I

    .line 71
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    if-nez v0, :cond_3

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_OUT:I

    :goto_3
    iput v0, p0, Lcom/android/server/lightadjust/StateContext;->mDeepDarkStateBoundaryLcdbrightnessMaxValue:I

    .line 74
    new-instance v0, Lcom/android/server/lightadjust/StateContext$StateBoundary;

    iget v1, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundaryLcdbrightnessMinValue:I

    iget v2, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundaryLcdbrightnessMaxValue:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/lightadjust/StateContext$StateBoundary;-><init>(Lcom/android/server/lightadjust/StateContext;II)V

    iput-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

    .line 76
    new-instance v0, Lcom/android/server/lightadjust/StateContext$StateBoundary;

    iget v1, p0, Lcom/android/server/lightadjust/StateContext;->mDeepDarkStateBoundaryLcdbrightnessMinValue:I

    iget v2, p0, Lcom/android/server/lightadjust/StateContext;->mDeepDarkStateBoundaryLcdbrightnessMaxValue:I

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/lightadjust/StateContext$StateBoundary;-><init>(Lcom/android/server/lightadjust/StateContext;II)V

    iput-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

    .line 78
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_3
.end method

.method private setDelayedState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    .prologue
    .line 109
    if-nez p1, :cond_1

    .line 110
    const-string v1, "ZZZstate"

    const-string v2, "state==null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/lightadjust/StateContext;->setState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V

    .line 114
    iget-object v1, p0, Lcom/android/server/lightadjust/StateContext;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v0

    .line 116
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/server/lightadjust/StateContext;->mManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v1, v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->stateChangeCallback(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mTempState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    .line 122
    iget-boolean v0, p0, Lcom/android/server/lightadjust/StateContext;->isTimerRunning:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mDelayHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    const-string v0, "ZZZstate"

    const-string v1, "--Timer stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    return-void
.end method

.method public getBrightStateBoundaryMinValue()I
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

    if-nez v1, :cond_0

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    .line 105
    .local v0, "value":I
    :goto_0
    return v0

    .line 102
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/StateContext$StateBoundary;->getLcdbrightnessMinValue()I

    move-result v0

    goto :goto_0
.end method

.method public getState()Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    return-object v0
.end method

.method public preProcess(II)Z
    .locals 5
    .param p1, "envlight"    # I
    .param p2, "lcdBrightness"    # I

    .prologue
    .line 161
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    if-nez v3, :cond_0

    .line 162
    invoke-static {p1, p2}, Lcom/android/server/lightadjust/StateContext;->getState(II)Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    .line 163
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v3, p2}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->setInitValue(I)V

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    instance-of v0, v3, Lcom/android/server/lightadjust/BrightState;

    .line 167
    .local v0, "isbright":Z
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    instance-of v2, v3, Lcom/android/server/lightadjust/DimlightState;

    .line 168
    .local v2, "isdimlight":Z
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    instance-of v1, v3, Lcom/android/server/lightadjust/DeepDarkState;

    .line 169
    .local v1, "isdeepdark":Z
    if-eqz v0, :cond_2

    .line 170
    const-string v3, "in Bright--1"

    invoke-virtual {p0, v3}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    .line 176
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preprocess--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    .line 178
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v3, p0, p1, p2}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->preProcess(Lcom/android/server/lightadjust/StateContext;II)Z

    move-result v3

    return v3

    .line 171
    :cond_2
    if-eqz v2, :cond_3

    .line 172
    const-string v3, "in Dim--2"

    invoke-virtual {p0, v3}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_3
    if-eqz v1, :cond_1

    .line 174
    const-string v3, "in DeepDark--3"

    invoke-virtual {p0, v3}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendLogInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mCore:Lcom/android/server/lightadjust/LightAdjuestCore;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/LightAdjuestCore;->sendLogInfo(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method public setState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V
    .locals 6
    .param p1, "state"    # Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    .line 83
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    iget-object v4, p0, Lcom/android/server/lightadjust/StateContext;->mBrightStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

    invoke-virtual {v3, v4}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->setBrightStateBoundary(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;)V

    .line 84
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    iget-object v4, p0, Lcom/android/server/lightadjust/StateContext;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/StateContext$StateBoundary;

    invoke-virtual {v3, v4}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->setDeepDarkStateBoundary(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;)V

    .line 85
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    instance-of v0, v3, Lcom/android/server/lightadjust/BrightState;

    .line 86
    .local v0, "isbright":Z
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    instance-of v2, v3, Lcom/android/server/lightadjust/DimlightState;

    .line 87
    .local v2, "isdimlight":Z
    iget-object v3, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    instance-of v1, v3, Lcom/android/server/lightadjust/DeepDarkState;

    .line 88
    .local v1, "isdeepdark":Z
    if-eqz v0, :cond_1

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change to bright, init_value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v4}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    .line 90
    const-string v3, "ZZZstate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change state to bright,init_value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v5}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .end local v0    # "isbright":Z
    .end local v1    # "isdeepdark":Z
    .end local v2    # "isdimlight":Z
    :cond_0
    :goto_0
    return-void

    .line 91
    .restart local v0    # "isbright":Z
    .restart local v1    # "isdeepdark":Z
    .restart local v2    # "isdimlight":Z
    :cond_1
    if-eqz v2, :cond_2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change to dimlight, init_value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v4}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    .line 93
    const-string v3, "ZZZstate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change state to dimlight,init_value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v5}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    :cond_2
    if-eqz v1, :cond_0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change to deepdark, init_value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v4}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    .line 96
    const-string v3, "ZZZstate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "change state to deepdark,init_value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/lightadjust/StateContext;->mState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    invoke-virtual {v5}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStateDelayed(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;J)V
    .locals 7
    .param p1, "state"    # Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .param p2, "delayMillis"    # J

    .prologue
    const-wide/16 v5, 0x3e8

    const-wide/16 v1, 0x0

    const/16 v4, 0x11

    .line 129
    cmp-long v0, p2, v1

    if-gez v0, :cond_0

    .line 130
    const-wide/16 p2, 0x0

    .line 133
    :cond_0
    cmp-long v0, p2, v1

    if-nez v0, :cond_2

    .line 134
    iget-boolean v0, p0, Lcom/android/server/lightadjust/StateContext;->isTimerRunning:Z

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    const-string v0, "ZZZstate"

    const-string v1, "--Timer stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/lightadjust/StateContext;->setState(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 143
    const-string v0, "ZZZstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--Timer start--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long v2, p2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--Timer start--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long v1, p2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/StateContext;->sendLogInfo(Ljava/lang/String;)V

    .line 145
    iput-object p1, p0, Lcom/android/server/lightadjust/StateContext;->mTempState:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lightadjust/StateContext;->isTimerRunning:Z

    .line 147
    iget-object v0, p0, Lcom/android/server/lightadjust/StateContext;->mDelayHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
