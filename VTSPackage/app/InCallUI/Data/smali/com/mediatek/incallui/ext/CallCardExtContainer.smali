.class Lcom/mediatek/incallui/ext/CallCardExtContainer;
.super Lcom/mediatek/incallui/ext/CallCardExtension;
.source "CallCardExtContainer.java"


# instance fields
.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/incallui/ext/CallCardExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mediatek/incallui/ext/CallCardExtension;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/incallui/ext/CallCardExtension;)V
    .locals 1
    .param p1, "item"    # Lcom/mediatek/incallui/ext/CallCardExtension;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public onStateChange(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 46
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 47
    :cond_0
    const-string v2, "setCallState, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    :cond_1
    return-void

    .line 51
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

    .line 52
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/CallCardExtension;

    .line 53
    .local v1, "item":Lcom/mediatek/incallui/ext/CallCardExtension;
    invoke-virtual {v1, p1}, Lcom/mediatek/incallui/ext/CallCardExtension;->onStateChange(Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 34
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 35
    :cond_0
    const-string v2, "onViewCreated, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    :cond_1
    return-void

    .line 39
    :cond_2
    const-string v2, "onViewCreated."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v2, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/CallCardExtension;

    .line 41
    .local v1, "item":Lcom/mediatek/incallui/ext/CallCardExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/incallui/ext/CallCardExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 5
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v3, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 59
    const-string v3, "updateCallInfoLayout(), sub extension list is null, just return"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    :cond_0
    :goto_0
    return v2

    .line 62
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallInfoLayout(), phone state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/incallui/ext/CallCardExtension;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 65
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/ext/CallCardExtension;

    .line 66
    .local v0, "extension":Lcom/mediatek/incallui/ext/CallCardExtension;
    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/ext/CallCardExtension;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updatePrimaryDisplayInfo(Lcom/android/services/telephony/common/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 75
    const-string v1, "displayMainCallStatus(), sub extension list is null, just return"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayMainCallStatus(), call ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/mediatek/incallui/ext/CallCardExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 80
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/incallui/ext/CallCardExtension;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/CallCardExtension;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/incallui/ext/CallCardExtension;->updatePrimaryDisplayInfo(Lcom/android/services/telephony/common/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_0
.end method
