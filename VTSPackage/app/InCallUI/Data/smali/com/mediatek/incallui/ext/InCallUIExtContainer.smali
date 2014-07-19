.class public Lcom/mediatek/incallui/ext/InCallUIExtContainer;
.super Lcom/mediatek/incallui/ext/InCallUIExtension;
.source "InCallUIExtContainer.java"


# instance fields
.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/incallui/ext/InCallUIExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/mediatek/incallui/ext/InCallUIExtension;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/incallui/ext/InCallUIExtension;)V
    .locals 1
    .param p1, "item"    # Lcom/mediatek/incallui/ext/InCallUIExtension;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public handleMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v3, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 66
    :cond_0
    const-string v3, "handleMenuItemClick, but no plug-ins."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    return v2

    .line 69
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMenuItemClick. menuId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    iget-object v3, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/InCallUIExtension;

    .line 71
    .local v1, "item":Lcom/mediatek/incallui/ext/InCallUIExtension;
    invoke-virtual {v1, p1}, Lcom/mediatek/incallui/ext/InCallUIExtension;->handleMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    const-string v2, "handleMenuItemClick, plug-in return true."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/mediatek/incallui/ext/IInCallScreen;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;
    .param p2, "inCallActivity"    # Landroid/app/Activity;
    .param p3, "iInCallScreen"    # Lcom/mediatek/incallui/ext/IInCallScreen;

    .prologue
    .line 31
    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    :cond_0
    const-string v2, "onCreate, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    :cond_1
    return-void

    .line 36
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate. icicle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/InCallUIExtension;

    .line 38
    .local v1, "item":Lcom/mediatek/incallui/ext/InCallUIExtension;
    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/incallui/ext/InCallUIExtension;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/mediatek/incallui/ext/IInCallScreen;)V

    goto :goto_0
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 3
    .param p1, "inCallActivity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    :cond_0
    const-string v2, "onDestroy, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :cond_1
    return-void

    .line 47
    :cond_2
    const-string v2, "onDestroy."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/InCallUIExtension;

    .line 49
    .local v1, "item":Lcom/mediatek/incallui/ext/InCallUIExtension;
    invoke-virtual {v1, p1}, Lcom/mediatek/incallui/ext/InCallUIExtension;->onDestroy(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public setupMenuItems(Landroid/view/Menu;Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    :cond_0
    const-string v2, "setupMenuItems, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    :cond_1
    return-void

    .line 58
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupMenuItems. menu = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/InCallUIExtension;

    .line 60
    .local v1, "item":Lcom/mediatek/incallui/ext/InCallUIExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/incallui/ext/InCallUIExtension;->setupMenuItems(Landroid/view/Menu;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method
