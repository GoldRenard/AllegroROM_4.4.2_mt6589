.class public Lcom/mediatek/incallui/ext/CallButtonExtContainer;
.super Lcom/mediatek/incallui/ext/CallButtonExtension;
.source "CallButtonExtContainer.java"


# instance fields
.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/incallui/ext/CallButtonExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mediatek/incallui/ext/CallButtonExtension;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/incallui/ext/CallButtonExtension;)V
    .locals 1
    .param p1, "item"    # Lcom/mediatek/incallui/ext/CallButtonExtension;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public onStateChange(Lcom/android/services/telephony/common/Call;Ljava/util/HashMap;)V
    .locals 4
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
    .line 44
    .local p2, "callMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/services/telephony/common/Call;>;"
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 45
    :cond_0
    const-string v2, "setCallState, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    :cond_1
    return-void

    .line 49
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallState, call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/CallButtonExtension;

    .line 51
    .local v1, "item":Lcom/mediatek/incallui/ext/CallButtonExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/incallui/ext/CallButtonExtension;->onStateChange(Lcom/android/services/telephony/common/Call;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 33
    :cond_0
    const-string v2, "onViewCreated, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_1
    return-void

    .line 37
    :cond_2
    const-string v2, "onViewCreated."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/CallButtonExtension;

    .line 39
    .local v1, "item":Lcom/mediatek/incallui/ext/CallButtonExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/incallui/ext/CallButtonExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
