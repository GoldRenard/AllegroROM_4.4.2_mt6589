.class public abstract Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;
.super Ljava/lang/Object;
.source "EnvlightLcdbrightnessState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;
    }
.end annotation


# static fields
.field protected static BRIGHT_STATE_LCD_BRIGHTNESS_MAX_VALUE:I

.field protected static BRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

.field protected static DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_IN:I

.field protected static DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_OUT:I


# instance fields
.field protected current_value:I

.field protected mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

.field protected mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x32

    .line 8
    const/16 v0, 0x28

    sput v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    .line 10
    sput v1, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MAX_VALUE:I

    .line 21
    const/16 v0, 0xf

    sput v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_IN:I

    .line 23
    sput v1, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_OUT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method protected bright_state_lcd_brightness_max_value()I
    .locals 2

    .prologue
    .line 63
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    if-nez v1, :cond_0

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MAX_VALUE:I

    .line 65
    .local v0, "value":I
    :goto_0
    return v0

    .line 63
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    invoke-interface {v1}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;->getLcdbrightnessMaxValue()I

    move-result v0

    goto :goto_0
.end method

.method protected bright_state_lcd_brightness_min_value()I
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    if-nez v1, :cond_0

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->BRIGHT_STATE_LCD_BRIGHTNESS_MIN_VALUE:I

    .line 55
    .local v0, "value":I
    :goto_0
    return v0

    .line 53
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    invoke-interface {v1}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;->getLcdbrightnessMinValue()I

    move-result v0

    goto :goto_0
.end method

.method protected deepdark_state_lcd_brightness_max_value()I
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    if-nez v1, :cond_0

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_OUT:I

    .line 85
    .local v0, "value":I
    :goto_0
    return v0

    .line 83
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    invoke-interface {v1}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;->getLcdbrightnessMaxValue()I

    move-result v0

    goto :goto_0
.end method

.method protected deepdark_state_lcd_brightness_min_value()I
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    if-nez v1, :cond_0

    sget v0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->DEEPDARK_STATE_LCD_BRIGHTNESS_MAX_VALUE_IN:I

    .line 75
    .local v0, "value":I
    :goto_0
    return v0

    .line 73
    .end local v0    # "value":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    invoke-interface {v1}, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;->getLcdbrightnessMinValue()I

    move-result v0

    goto :goto_0
.end method

.method public getProcessValue()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->current_value:I

    return v0
.end method

.method public abstract preProcess(Lcom/android/server/lightadjust/StateContext;II)Z
.end method

.method public setBrightStateBoundary(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;)V
    .locals 1
    .param p1, "boundary"    # Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mBrightStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    .line 39
    return-void
.end method

.method public setDeepDarkStateBoundary(Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;)V
    .locals 1
    .param p1, "boundary"    # Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    if-eqz v0, :cond_0

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/android/server/lightadjust/EnvlightLcdbrightnessState;->mDeepDarkStateBoundary:Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;

    .line 46
    return-void
.end method

.method public abstract setInitValue(I)V
.end method
