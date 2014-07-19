.class Lcom/android/server/lightadjust/StateContext$StateBoundary;
.super Ljava/lang/Object;
.source "StateContext.java"

# interfaces
.implements Lcom/android/server/lightadjust/EnvlightLcdbrightnessState$Boundary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/StateContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateBoundary"
.end annotation


# instance fields
.field private mLcdBrightnessMaxValue:I

.field private mLcdBrightnessMinValue:I

.field final synthetic this$0:Lcom/android/server/lightadjust/StateContext;


# direct methods
.method public constructor <init>(Lcom/android/server/lightadjust/StateContext;II)V
    .locals 0
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/server/lightadjust/StateContext$StateBoundary;->this$0:Lcom/android/server/lightadjust/StateContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput p2, p0, Lcom/android/server/lightadjust/StateContext$StateBoundary;->mLcdBrightnessMinValue:I

    .line 202
    iput p3, p0, Lcom/android/server/lightadjust/StateContext$StateBoundary;->mLcdBrightnessMaxValue:I

    .line 203
    return-void
.end method


# virtual methods
.method public getLcdbrightnessMaxValue()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/android/server/lightadjust/StateContext$StateBoundary;->mLcdBrightnessMaxValue:I

    return v0
.end method

.method public getLcdbrightnessMinValue()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/server/lightadjust/StateContext$StateBoundary;->mLcdBrightnessMinValue:I

    return v0
.end method
