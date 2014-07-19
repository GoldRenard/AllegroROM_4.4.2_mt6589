.class public Lcom/android/server/lightadjust/utils/ConvertUtils;
.super Ljava/lang/Object;
.source "ConvertUtils.java"


# static fields
.field private static final PERCENT_0:I = 0x0

.field private static final PERCENT_100:I = 0x64

.field private static final PERCENT_INCREASE_DECREASE_DETAL_10:I = 0xa

.field private static final VALUE_0:I = 0x0

.field private static final VALUE_255:I = 0xff


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPercent(I)I
    .locals 7
    .param p0, "value"    # I

    .prologue
    .line 16
    mul-int/lit8 v3, p0, 0x64

    div-int/lit16 v3, v3, 0xff

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L

    add-double v0, v3, v5

    .line 17
    .local v0, "percent":D
    double-to-int v2, v0

    .line 18
    .local v2, "percent1":I
    return v2
.end method

.method public static getValue(I)I
    .locals 7
    .param p0, "percent"    # I

    .prologue
    .line 22
    mul-int/lit16 v3, p0, 0xff

    div-int/lit8 v3, v3, 0x64

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L

    add-double v0, v3, v5

    .line 23
    .local v0, "value":D
    double-to-int v2, v0

    .line 24
    .local v2, "value1":I
    return v2
.end method
