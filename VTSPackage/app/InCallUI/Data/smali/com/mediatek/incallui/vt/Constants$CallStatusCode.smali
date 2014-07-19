.class public final enum Lcom/mediatek/incallui/vt/Constants$CallStatusCode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mediatek/incallui/vt/Constants$CallStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum CALL_FAILED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum CDMA_CALL_LOST:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum DIALED_MMI:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum DROP_VOICECALL:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum EMERGENCY_ONLY:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum EXITED_ECM:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum FDN_BLOCKED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum OUT_OF_3G_FAILED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum OUT_OF_SERVICE:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum POWER_OFF:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum SUCCESS:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->SUCCESS:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 58
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v4}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->POWER_OFF:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 64
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 69
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "OUT_OF_SERVICE"

    invoke-direct {v0, v1, v6}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 74
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "NO_PHONE_NUMBER_SUPPLIED"

    invoke-direct {v0, v1, v7}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 79
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "DIALED_MMI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->DIALED_MMI:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 85
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "CALL_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->CALL_FAILED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 96
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "VOICEMAIL_NUMBER_MISSING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 109
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "CDMA_CALL_LOST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 124
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "EXITED_ECM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->EXITED_ECM:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 129
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "OUT_OF_3G_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->OUT_OF_3G_FAILED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 135
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "FDN_BLOCKED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->FDN_BLOCKED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 140
    new-instance v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    const-string v1, "DROP_VOICECALL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->DROP_VOICECALL:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    .line 47
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->SUCCESS:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->POWER_OFF:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->DIALED_MMI:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->CALL_FAILED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->EXITED_ECM:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->OUT_OF_3G_FAILED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->FDN_BLOCKED:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->DROP_VOICECALL:Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->$VALUES:[Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mediatek/incallui/vt/Constants$CallStatusCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/mediatek/incallui/vt/Constants$CallStatusCode;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$CallStatusCode;->$VALUES:[Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/incallui/vt/Constants$CallStatusCode;

    return-object v0
.end method
