.class public interface abstract Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DispatchConst"
.end annotation


# static fields
.field public static final CATEGORY_DISPATCH_2G:Ljava/lang/String; = "Dispatch2G"

.field public static final CATEGORY_DISPATCH_3G4G:Ljava/lang/String; = "Dispatch3G4G"

.field public static final CATEGORY_DISPATCH_Wifi:Ljava/lang/String; = "DispatchWifi"

.field public static final REPORT_2G:[Z

.field public static final REPORT_3G4G:[Z

.field public static final REPORT_Wifi:[Z

.field public static final STATUS_2G:[I

.field public static final STATUS_3G4G:[I

.field public static final STATUS_WIFI:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 195
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->STATUS_3G4G:[I

    .line 197
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->STATUS_2G:[I

    .line 199
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->STATUS_WIFI:[I

    .line 201
    new-array v0, v2, [Z

    fill-array-data v0, :array_3

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->REPORT_Wifi:[Z

    .line 203
    new-array v0, v2, [Z

    fill-array-data v0, :array_4

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->REPORT_3G4G:[Z

    .line 205
    new-array v0, v2, [Z

    fill-array-data v0, :array_5

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$ServerConfig$DispatchConst;->REPORT_2G:[Z

    return-void

    .line 195
    nop

    :array_0
    .array-data 4
        0x1
        0x14
    .end array-data

    .line 197
    :array_1
    .array-data 4
        0x1
        0x14
    .end array-data

    .line 199
    :array_2
    .array-data 4
        0x1
        0x1
    .end array-data

    .line 201
    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 203
    :array_4
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 205
    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method
