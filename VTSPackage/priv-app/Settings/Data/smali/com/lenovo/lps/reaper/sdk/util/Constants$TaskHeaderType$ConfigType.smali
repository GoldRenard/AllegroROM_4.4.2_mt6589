.class public final enum Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfigType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

.field public static final enum Config:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    const-string v1, "Config"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;->Config:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    .line 297
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;->Config:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

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
    .line 297
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    return-object v0
.end method
