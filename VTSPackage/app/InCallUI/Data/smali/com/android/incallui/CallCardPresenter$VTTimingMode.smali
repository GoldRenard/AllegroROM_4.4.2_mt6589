.class public final enum Lcom/android/incallui/CallCardPresenter$VTTimingMode;
.super Ljava/lang/Enum;
.source "CallCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VTTimingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/CallCardPresenter$VTTimingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/CallCardPresenter$VTTimingMode;

.field public static final enum VT_TIMING_DEFAULT:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

.field public static final enum VT_TIMING_NONE:Lcom/android/incallui/CallCardPresenter$VTTimingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1104
    new-instance v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    const-string v1, "VT_TIMING_NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/CallCardPresenter$VTTimingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_NONE:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    new-instance v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    const-string v1, "VT_TIMING_DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/CallCardPresenter$VTTimingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    .line 1103
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    sget-object v1, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_NONE:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->VT_TIMING_DEFAULT:Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->$VALUES:[Lcom/android/incallui/CallCardPresenter$VTTimingMode;

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
    .line 1103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/CallCardPresenter$VTTimingMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1103
    const-class v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/CallCardPresenter$VTTimingMode;
    .locals 1

    .prologue
    .line 1103
    sget-object v0, Lcom/android/incallui/CallCardPresenter$VTTimingMode;->$VALUES:[Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/CallCardPresenter$VTTimingMode;

    return-object v0
.end method
