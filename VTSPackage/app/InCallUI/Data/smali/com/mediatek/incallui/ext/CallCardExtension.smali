.class public Lcom/mediatek/incallui/ext/CallCardExtension;
.super Ljava/lang/Object;
.source "CallCardExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 19
    const-string v0, "CallCardExtension onStateChange DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 15
    const-string v0, "CallCardExtension onViewCreated DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public updatePrimaryDisplayInfo(Lcom/android/services/telephony/common/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 0
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 27
    return-void
.end method
