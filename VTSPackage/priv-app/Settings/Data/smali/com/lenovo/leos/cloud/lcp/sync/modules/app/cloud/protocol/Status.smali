.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

.field private static final synthetic ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

.field public static final enum EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

.field public static final enum INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

.field public static final enum NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

.field public static final enum NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

.field public static final enum NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

.field public static final enum NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;


# instance fields
.field private value:I


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
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    const-string v1, "NOT_EXISTS"

    .line 5
    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 6
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    const-string v1, "EXISTS"

    .line 7
    invoke-direct {v0, v1, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 8
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    const-string v1, "BACKUPED"

    .line 9
    invoke-direct {v0, v1, v6, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 10
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    const-string v1, "NEW_VERSION"

    .line 11
    invoke-direct {v0, v1, v7, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 12
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    const-string v1, "NOT_INSTALL"

    .line 13
    invoke-direct {v0, v1, v8, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 14
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    const-string v1, "INSTALLED"

    const/4 v2, 0x5

    .line 15
    invoke-direct {v0, v1, v2, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 16
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    const-string v1, "NOT_COMPATIBLE"

    const/4 v2, 0x6

    .line 17
    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->BACKUPED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NOT_INSTALL:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->INSTALLED:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->NOT_COMPATIBLE:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->value:I

    .line 23
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->ENUM$VALUES:[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->value:I

    return v0
.end method
