.class final enum Lcom/mediatek/gemini/SimManagement$GenSimSettingType;
.super Ljava/lang/Enum;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GenSimSettingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/gemini/SimManagement$GenSimSettingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

.field public static final enum DATA:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

.field public static final enum SMS:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

.field public static final enum VIDEO:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

.field public static final enum VOICE:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1838
    new-instance v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VOICE:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    new-instance v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->SMS:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    new-instance v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VIDEO:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    new-instance v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->DATA:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    .line 1837
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    sget-object v1, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VOICE:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->SMS:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VIDEO:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->DATA:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->$VALUES:[Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

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
    .line 1837
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/gemini/SimManagement$GenSimSettingType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1837
    const-class v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/gemini/SimManagement$GenSimSettingType;
    .locals 1

    .prologue
    .line 1837
    sget-object v0, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->$VALUES:[Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    return-object v0
.end method
