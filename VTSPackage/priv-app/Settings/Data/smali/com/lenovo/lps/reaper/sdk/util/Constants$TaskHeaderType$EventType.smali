.class public final enum Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

.field public static final enum BLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

.field public static final enum HLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

.field public static final enum KLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    const-string v1, "KLog"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->KLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    .line 307
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    const-string v1, "HLog"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->HLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    .line 308
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    const-string v1, "BLog"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->BLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    .line 305
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->KLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->HLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->BLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

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
    .line 305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 305
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;
    .locals 1

    .prologue
    .line 305
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    return-object v0
.end method
