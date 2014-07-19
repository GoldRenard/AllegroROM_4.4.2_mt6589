.class public final enum Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

.field public static final enum LV0:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

.field public static final enum LV1:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    const-string v1, "LV0"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV0:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    const-string v1, "LV1"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV1:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV0:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV1:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    return-object v0
.end method
