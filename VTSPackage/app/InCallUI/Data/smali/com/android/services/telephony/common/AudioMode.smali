.class public Lcom/android/services/telephony/common/AudioMode;
.super Ljava/lang/Object;
.source "AudioMode.java"


# static fields
.field public static ALL_MODES:I

.field public static BLUETOOTH:I

.field public static EARPIECE:I

.field public static SPEAKER:I

.field public static WIRED_HEADSET:I

.field public static WIRED_OR_EARPIECE:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    .line 25
    const/4 v0, 0x2

    sput v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    .line 26
    const/4 v0, 0x4

    sput v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    .line 27
    const/16 v0, 0x8

    sput v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 29
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 30
    sget v0, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    or-int/2addr v0, v1

    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    or-int/2addr v0, v1

    sput v0, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 56
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 33
    sget v1, Lcom/android/services/telephony/common/AudioMode;->ALL_MODES:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 34
    const-string v1, "UNKNOWN"

    .line 51
    :goto_0
    return-object v1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 38
    .local v0, "buffer":Ljava/lang/StringBuffer;
    sget v1, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->EARPIECE:I

    if-ne v1, v2, :cond_1

    .line 39
    const-string v1, "EARPIECE"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 41
    :cond_1
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v1, v2, :cond_2

    .line 42
    const-string v1, "BLUETOOTH"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 44
    :cond_2
    sget v1, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-ne v1, v2, :cond_3

    .line 45
    const-string v1, "WIRED_HEADSET"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 47
    :cond_3
    sget v1, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    and-int/2addr v1, p0

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v2, :cond_4

    .line 48
    const-string v1, "SPEAKER"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/AudioMode;->listAppend(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 51
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
