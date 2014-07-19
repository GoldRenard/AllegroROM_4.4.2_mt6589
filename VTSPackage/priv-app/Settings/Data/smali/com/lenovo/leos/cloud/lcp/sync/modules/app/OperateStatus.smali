.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;
.super Ljava/lang/Enum;
.source "OperateStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCELED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field public static final enum DOING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field public static final enum DONE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field public static final enum ERROR:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field public static final enum INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field public static final enum INSTALLING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field public static final enum UPDATE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

.field public static final enum WATTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "WATTING"

    invoke-direct {v0, v1, v4, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->WATTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "DOING"

    invoke-direct {v0, v1, v5, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->DOING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->DONE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->ERROR:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v8, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->UPDATE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "INSTALLED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "CANCELED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->CANCELED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    const-string v1, "INSTALLING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->INSTALLING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->WATTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->DOING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->DONE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->ERROR:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->UPDATE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->CANCELED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->INSTALLING:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->value:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/OperateStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
