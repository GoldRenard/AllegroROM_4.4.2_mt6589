.class public Lcom/android/server/lightadjust/DeepDarkState;
.super Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
.source "DeepDarkState.java"


# static fields
.field private static final DEEPDARK_STATE_LCD_BRIGHTNESS_CENTER_VALUE:I = 0xf


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
    .locals 6
    .param p1, "context"    # Lcom/android/server/lightadjust/StateContext;
    .param p2, "envLight"    # I
    .param p3, "lcdBrightness"    # I

    .prologue
    const/4 v2, 0x1

    .line 11
    const-string v3, "ZZZstate"

    const-string v4, "in DeepDarkState--3"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    const-string v3, "ZZZstate"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preprocess--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",lock="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->getProcessValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->deepdark_state_lcd_brightness_min_value()I

    move-result v3

    if-ge p3, v3, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/android/server/lightadjust/StateContext;->cancelTimer()V

    .line 43
    :goto_0
    return v2

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->deepdark_state_lcd_brightness_max_value()I

    move-result v3

    if-lt p3, v3, :cond_2

    .line 24
    invoke-virtual {p0}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->bright_state_lcd_brightness_min_value()I

    move-result v2

    if-lt p3, v2, :cond_1

    .line 25
    new-instance v0, Lcom/android/server/lightadjust/BrightState;

    invoke-direct {v0}, Lcom/android/server/lightadjust/BrightState;-><init>()V

    .line 26
    .local v0, "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-virtual {v0, p3}, Lcom/android/server/lightadjust/BrightState;->setInitValue(I)V

    .line 27
    const-string v2, "ZZZstate"

    const-string v3, "delay to set state Bright--2s"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :goto_1
    const/16 v1, 0x7d0

    .line 35
    .local v1, "timer_2s":I
    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/server/lightadjust/StateContext;->setStateDelayed(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;J)V

    .line 37
    const/4 v2, 0x0

    goto :goto_0

    .line 30
    .end local v0    # "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    .end local v1    # "timer_2s":I
    :cond_1
    new-instance v0, Lcom/android/server/lightadjust/DimlightState;

    invoke-direct {v0}, Lcom/android/server/lightadjust/DimlightState;-><init>()V

    .line 31
    .restart local v0    # "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    invoke-virtual {v0, p3}, Lcom/android/server/lightadjust/DimlightState;->setInitValue(I)V

    .line 32
    const-string v2, "ZZZstate"

    const-string v3, "delay to set state Dimlight--2s"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 41
    .end local v0    # "state":Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/lightadjust/StateContext;->cancelTimer()V

    goto :goto_0
.end method

.method public setInitValue(I)V
    .locals 1
    .param p1, "initvalue"    # I

    .prologue
    .line 49
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->current_value:I

    .line 50
    return-void
.end method
