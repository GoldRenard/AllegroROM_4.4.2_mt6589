.class public Lcom/mediatek/incallui/ext/NotificationExtContainer;
.super Lcom/mediatek/incallui/ext/NotificationExtension;
.source "NotificationExtContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationExtContainer"


# instance fields
.field private mSubExtensionList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/mediatek/incallui/ext/NotificationExtension;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mediatek/incallui/ext/NotificationExtension;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/mediatek/incallui/ext/NotificationExtension;)V
    .locals 3
    .param p1, "extension"    # Lcom/mediatek/incallui/ext/NotificationExtension;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 22
    const-string v0, "NotificationExtContainer"

    const-string v1, "create sub extension list"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    .line 26
    :cond_0
    const-string v0, "NotificationExtContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add extension, extension is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public getInCallResId(Lcom/android/services/telephony/common/Call;ZI[[I)I
    .locals 6
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;
    .param p2, "voicePrivacy"    # Z
    .param p3, "defResId"    # I
    .param p4, "pluginResIds"    # [[I

    .prologue
    .line 72
    iget-object v3, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 73
    const-string v3, "NotificationExtContainer"

    const-string v4, "getInCallResId(), sub extension list is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local p3    # "defResId":I
    :goto_0
    return p3

    .line 77
    .restart local p3    # "defResId":I
    :cond_0
    iget-object v3, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/incallui/ext/NotificationExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/ext/NotificationExtension;

    .line 80
    .local v0, "extension":Lcom/mediatek/incallui/ext/NotificationExtension;
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/mediatek/incallui/ext/NotificationExtension;->getInCallResId(Lcom/android/services/telephony/common/Call;ZI[[I)I

    move-result v2

    .line 81
    .local v2, "pluginResId":I
    if-eq v2, p3, :cond_1

    .line 82
    const-string v3, "NotificationExtContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInCallResId(), plug-in:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p3, v2

    .line 83
    goto :goto_0

    .line 86
    .end local v0    # "extension":Lcom/mediatek/incallui/ext/NotificationExtension;
    .end local v2    # "pluginResId":I
    :cond_2
    const-string v3, "NotificationExtContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInCallResId(), default:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public remove(Lcom/mediatek/incallui/ext/NotificationExtension;)V
    .locals 3
    .param p1, "extension"    # Lcom/mediatek/incallui/ext/NotificationExtension;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 35
    const-string v0, "NotificationExtContainer"

    const-string v1, "remove extension, sub extension list is null, just return"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const-string v0, "NotificationExtContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove extension, extension is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shouldSuppressNotification(Z)Z
    .locals 6
    .param p1, "hostDefaultValue"    # Z

    .prologue
    .line 44
    iget-object v3, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 45
    const-string v3, "NotificationExtContainer"

    const-string v4, "shouldSuppressNotification(), sub extension list is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local p1    # "hostDefaultValue":Z
    :goto_0
    return p1

    .line 49
    .restart local p1    # "hostDefaultValue":Z
    :cond_0
    iget-object v3, p0, Lcom/mediatek/incallui/ext/NotificationExtContainer;->mSubExtensionList:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mediatek/incallui/ext/NotificationExtension;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/ext/NotificationExtension;

    .line 52
    .local v0, "extension":Lcom/mediatek/incallui/ext/NotificationExtension;
    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/ext/NotificationExtension;->shouldSuppressNotification(Z)Z

    move-result v2

    .line 54
    .local v2, "suppressNotification":Z
    if-eq v2, p1, :cond_1

    .line 55
    const-string v3, "NotificationExtContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldSuppressNotification(), plug-in:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    .line 56
    goto :goto_0

    .line 59
    .end local v0    # "extension":Lcom/mediatek/incallui/ext/NotificationExtension;
    .end local v2    # "suppressNotification":Z
    :cond_2
    const-string v3, "NotificationExtContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "shouldSuppressNotification(), default:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
