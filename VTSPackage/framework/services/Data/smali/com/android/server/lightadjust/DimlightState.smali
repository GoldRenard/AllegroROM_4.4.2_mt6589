.class public Lcom/android/server/lightadjust/DimlightState;
.super Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
.source "DimlightState.java"


# static fields
.field private static final DIM_STATE_LCD_BRIGHTNESS_CENTER_VALUE:I = 0x19


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;-><init>()V

    return-void
.end method


# virtual methods
.method public preProcess(Lcom/android/server/lightadjust/StateContext;II)Z
    .locals 7
    .param p1, "context"    # Lcom/android/server/lightadjust/StateContext;
    .param p2, "envLight"    # I
    .param p3, "lcdBrightness"    # I

    .prologue
    const/4 v3, 0x1

    .line 11
    const-string v4, "ZZZstate"

    const-string v5, "in DimlightState--2"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string v4, "ZZZstate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preprocess--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->bright_state_lcd_brightness_min_value()I

    move-result v4

    if-ge p3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->deepdark_state_lcd_brightness_min_value()I

    move-result v4

    if-lt p3, v4, :cond_0

    .line 17
    invoke-virtual {p1}, Lcom/android/server/lightadjust/StateContext;->cancelTimer()V

    .line 47
    :goto_0
    return v3

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->bright_state_lcd_brightness_max_value()I

    move-result v4

    if-lt p3, v4, :cond_1

    .line 23
    new-instance v0, Lcom/android/server/lightadjust/BrightState;

    invoke-direct {v0}, Lcom/android/server/lightadjust/BrightState;-><init>()V

    .line 24
    .local v0, "brightState":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-virtual {v0, p3}, Lcom/android/server/lightadjust/BrightState;->setInitValue(I)V

    .line 25
    const-string v4, "ZZZstate"

    const-string v5, "change to bright state"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Lcom/android/server/lightadjust/StateContext;->setStateDelayed(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;J)V

    .line 27
    invoke-virtual {p1}, Lcom/android/server/lightadjust/StateContext;->getState()Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->preProcess(Lcom/android/server/lightadjust/StateContext;II)Z

    goto :goto_0

    .line 31
    .end local v0    # "brightState":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->deepdark_state_lcd_brightness_min_value()I

    move-result v4

    if-ge p3, v4, :cond_2

    .line 33
    const/16 v2, 0x2710

    .line 34
    .local v2, "timer_10s":I
    new-instance v1, Lcom/android/server/lightadjust/DeepDarkState;

    invoke-direct {v1}, Lcom/android/server/lightadjust/DeepDarkState;-><init>()V

    .line 35
    .local v1, "deepDarkState":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-virtual {v1, p3}, Lcom/android/server/lightadjust/DeepDarkState;->setInitValue(I)V

    .line 36
    const-string v3, "ZZZstate"

    const-string v4, "timer_10s change to deepDark state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    int-to-long v3, v2

    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/lightadjust/StateContext;->setStateDelayed(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;J)V

    .line 39
    const/4 v3, 0x0

    goto :goto_0

    .line 45
    .end local v1    # "deepDarkState":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .end local v2    # "timer_10s":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/lightadjust/StateContext;->cancelTimer()V

    .line 46
    const-string v4, "ZZZstate"

    const-string v5, "Please check, ERROR May Happen!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setInitValue(I)V
    .locals 1
    .param p1, "initvalue"    # I

    .prologue
    .line 52
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->current_value:I

    .line 53
    return-void
.end method
