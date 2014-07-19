.class public final enum Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
.super Ljava/lang/Enum;
.source "SimInfoViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/simui/SimInfoViewUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

.field public static final enum CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

.field public static final enum Dialog:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

.field public static final enum None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

.field public static final enum RadioButton:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

.field public static final enum Switch:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    new-instance v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 281
    new-instance v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    const-string v1, "Dialog"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Dialog:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 282
    new-instance v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    const-string v1, "RadioButton"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->RadioButton:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 283
    new-instance v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    const-string v1, "Switch"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Switch:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 284
    new-instance v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    const-string v1, "CheckBox"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 279
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v1, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Dialog:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->RadioButton:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Switch:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->CheckBox:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->$VALUES:[Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

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
    .line 279
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 279
    const-class v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->$VALUES:[Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    return-object v0
.end method
