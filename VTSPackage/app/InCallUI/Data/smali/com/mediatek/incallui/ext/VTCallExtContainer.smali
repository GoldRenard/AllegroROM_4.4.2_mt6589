.class Lcom/mediatek/incallui/ext/VTCallExtContainer;
.super Lcom/mediatek/incallui/ext/VTCallExtension;
.source "VTCallExtContainer.java"


# instance fields
.field private mSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/incallui/ext/VTCallExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mediatek/incallui/ext/VTCallExtension;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/incallui/ext/VTCallExtension;)V
    .locals 1
    .param p1, "item"    # Lcom/mediatek/incallui/ext/VTCallExtension;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 87
    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    :cond_0
    const-string v3, "resetFlags, but no plug-ins."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_0
    return v2

    .line 91
    :cond_2
    const-string v3, "resetFlags."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/VTCallExtension;

    .line 93
    .local v1, "item":Lcom/mediatek/incallui/ext/VTCallExtension;
    invoke-virtual {v1, p1, p2}, Lcom/mediatek/incallui/ext/VTCallExtension;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    :cond_0
    const-string v3, "onPrepareOptionMenu, but no plug-ins."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    :goto_0
    return v2

    .line 65
    :cond_1
    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/VTCallExtension;

    .line 66
    .local v1, "item":Lcom/mediatek/incallui/ext/VTCallExtension;
    invoke-virtual {v1, p1}, Lcom/mediatek/incallui/ext/VTCallExtension;->onPrepareOptionMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    const-string v2, "onPrepareOptionMenu, plug-in return true."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    const/4 v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "item":Lcom/mediatek/incallui/ext/VTCallExtension;
    :cond_3
    const-string v3, "onPrepareOptionMenu, return default."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "isVTPeerBigger"    # Z

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    :cond_0
    const-string v3, "onTouch, but no plug-ins."

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :goto_0
    return v2

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/VTCallExtension;

    .line 50
    .local v1, "item":Lcom/mediatek/incallui/ext/VTCallExtension;
    invoke-virtual {v1, p1, p2, p3}, Lcom/mediatek/incallui/ext/VTCallExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouch, plug-in return true. isVTPeerBigger="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    const/4 v2, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "item":Lcom/mediatek/incallui/ext/VTCallExtension;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouch, return default. isVTPeerBigger="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/android/services/telephony/common/ICallCommandService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "root"    # Landroid/view/View;
    .param p3, "listener"    # Landroid/view/View$OnTouchListener;
    .param p4, "service"    # Lcom/android/services/telephony/common/ICallCommandService;

    .prologue
    .line 33
    iget-object v2, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    :cond_0
    const-string v2, "onViewCreated, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :cond_1
    return-void

    .line 37
    :cond_2
    const-string v2, "onViewCreated."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v2, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/VTCallExtension;

    .line 39
    .local v1, "item":Lcom/mediatek/incallui/ext/VTCallExtension;
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/mediatek/incallui/ext/VTCallExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/android/services/telephony/common/ICallCommandService;)V

    goto :goto_0
.end method

.method public resetFlags()V
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 77
    :cond_0
    const-string v2, "resetFlags, but no plug-ins."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :cond_1
    return-void

    .line 80
    :cond_2
    const-string v2, "resetFlags."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/mediatek/incallui/ext/VTCallExtContainer;->mSubList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/ext/VTCallExtension;

    .line 82
    .local v1, "item":Lcom/mediatek/incallui/ext/VTCallExtension;
    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/VTCallExtension;->resetFlags()V

    goto :goto_0
.end method
