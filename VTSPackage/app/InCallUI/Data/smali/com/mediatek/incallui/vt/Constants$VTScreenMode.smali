.class public final enum Lcom/mediatek/incallui/vt/Constants$VTScreenMode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VTScreenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/incallui/vt/Constants$VTScreenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

.field public static final enum VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

.field public static final enum VT_SCREEN_OPEN:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

.field public static final enum VT_SCREEN_WAITING:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 210
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    const-string v1, "VT_SCREEN_CLOSE"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .line 211
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    const-string v1, "VT_SCREEN_OPEN"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .line 217
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    const-string v1, "VT_SCREEN_WAITING"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_WAITING:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .line 209
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_WAITING:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->$VALUES:[Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

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
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/incallui/vt/Constants$VTScreenMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    const-class v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/incallui/vt/Constants$VTScreenMode;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->$VALUES:[Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    return-object v0
.end method
