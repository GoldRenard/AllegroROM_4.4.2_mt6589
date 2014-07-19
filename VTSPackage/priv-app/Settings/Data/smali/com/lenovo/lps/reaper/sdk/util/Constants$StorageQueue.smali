.class public interface abstract Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    }
.end annotation


# static fields
.field public static final PRIORITY_DEFAULT:I

.field public static final PRIO_EVENT_NUM:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIO_EVENT_NUM:[I

    .line 61
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV0:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;->PRIORITY_DEFAULT:I

    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        0x258
        0x258
    .end array-data
.end method
