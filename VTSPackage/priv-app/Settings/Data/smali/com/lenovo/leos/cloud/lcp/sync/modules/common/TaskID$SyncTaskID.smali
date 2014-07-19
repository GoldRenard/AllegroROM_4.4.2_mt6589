.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
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
    name = "SyncTaskID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;",
        ">;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;"
    }
.end annotation


# static fields
.field public static final enum CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

.field private static final synthetic ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    const-string v1, "CONTACT"

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    .line 30
    new-array v0, v3, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->value:I

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->value:I

    return v0
.end method
