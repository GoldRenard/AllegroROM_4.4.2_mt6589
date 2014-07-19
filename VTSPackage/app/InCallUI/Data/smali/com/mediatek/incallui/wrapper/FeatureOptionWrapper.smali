.class public Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;
.super Ljava/lang/Object;
.source "FeatureOptionWrapper.java"


# static fields
.field public static final MTK_HDMI_SUPPORT:Z = false

.field public static final MTK_PHONE_VT_VOICE_ANSWER:Z = false

.field public static final MTK_SMARTBOOK_SUPPORT:Z = false

.field public static final MTK_VT3G324M_SUPPORT:Z = true

.field private static final TAG:Ljava/lang/String; = "FeatureOptionWrapper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static isSupportDualTalk()Z
    .locals 4

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "isSupportDualTalk":Z
    const-string v1, "FeatureOptionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportDualTalk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return v0
.end method

.method public static isSupportGemini()Z
    .locals 2

    .prologue
    .line 20
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPhoneVoiceRecording()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportPrivacyProtect()Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "isSupportPrivacyProtect":Z
    return v0
.end method

.method public static isSupportVT()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, "isSupport":Z
    return v0
.end method

.method public static isSupportVTVoiceAnswer()Z
    .locals 4

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "isSupport":Z
    const-string v1, "FeatureOptionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportVTVoiceAnswer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v0
.end method

.method public static isSupportVoiceUI()Z
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "isSupport":Z
    const-string v1, "FeatureOptionWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportVoiceUI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return v0
.end method
