.class public Lcom/mediatek/incallui/ext/CallButtonExtension;
.super Ljava/lang/Object;
.source "CallButtonExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChange(Lcom/android/services/telephony/common/Call;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/services/telephony/common/Call;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/services/telephony/common/Call;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p2, "callMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/services/telephony/common/Call;>;"
    const-string v0, "CallButtonExtension onStateChange DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 13
    const-string v0, "CallButtonExtension onViewCreated DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 14
    return-void
.end method
