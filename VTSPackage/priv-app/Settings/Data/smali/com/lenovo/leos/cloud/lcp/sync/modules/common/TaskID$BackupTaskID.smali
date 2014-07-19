.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;
.super Ljava/lang/Enum;
.source "TaskID.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackupTaskID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;",
        ">;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;"
    }
.end annotation


# static fields
.field public static final enum APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field public static final enum APP_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field public static final enum CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field public static final enum CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field public static final enum CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field private static final synthetic ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field public static final enum MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field public static final enum SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field public static final enum SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 7
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "CONTACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "CALLLOG"

    invoke-direct {v0, v1, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "MMS"

    invoke-direct {v0, v1, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "APP"

    invoke-direct {v0, v1, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "SETTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "APP_DATA"

    const/4 v2, 0x6

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const-string v1, "CALENDAR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    const/4 v1, 0x0

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v2, v0, v1

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->value:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->value:I

    return v0
.end method
