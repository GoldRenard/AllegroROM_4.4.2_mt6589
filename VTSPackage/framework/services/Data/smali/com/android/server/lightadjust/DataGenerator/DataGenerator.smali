.class public abstract Lcom/android/server/lightadjust/DataGenerator/DataGenerator;
.super Ljava/lang/Object;
.source "DataGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    }
.end annotation


# static fields
.field private static ourInstance:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/android/server/lightadjust/DataGenerator/DataGenerator;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "option"    # I

    .prologue
    .line 12
    sget-object v0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->ourInstance:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    if-nez v0, :cond_0

    .line 13
    if-nez p1, :cond_1

    .line 14
    new-instance v0, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/DataGenerator/RandomGenerator;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->ourInstance:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    .line 22
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->ourInstance:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    return-object v0

    .line 15
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 16
    new-instance v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->ourInstance:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    goto :goto_0

    .line 18
    :cond_2
    new-instance v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->ourInstance:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    goto :goto_0
.end method


# virtual methods
.method public abstract NoReportDataRightNow()V
.end method

.method public abstract ReportFirstDataRightNow()V
.end method

.method public abstract TerminateAll()V
.end method

.method public abstract setAntishake_interval_down(I)V
.end method

.method public abstract setAntishake_interval_up(I)V
.end method

.method public abstract setSampleRate(I)V
.end method

.method public abstract setSampleStepSize(I)V
.end method

.method public abstract startGenerate(Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;)V
.end method
