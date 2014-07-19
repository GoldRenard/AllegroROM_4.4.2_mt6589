.class public Lcom/android/incallui/ConferenceManagerPresenter;
.super Lcom/android/incallui/Presenter;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;"
    }
.end annotation


# static fields
.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5


# instance fields
.field private mCallerIds:[Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mNumCallersInConference:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 196
    return-void
.end method

.method private getEntryDisplayName(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 2
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const-string v0, "[getEntryDisplayName]entry is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    const-string v0, ""

    .line 219
    :goto_0
    return-object v0

    .line 215
    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getEntryDisplayName]name is empty, use number as name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEntryDisplayNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    const-string v0, "[getEntryDisplayNumber]entry is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const-string v0, ""

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getEntryDisplayType(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const-string v0, "[getEntryDisplayType]entry is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const-string v0, ""

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_0
.end method

.method private update(Lcom/android/incallui/CallList;)V
    .locals 11
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 84
    iput-object v10, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/Integer;

    .line 86
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 87
    .local v0, "c":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_1

    .line 113
    :cond_0
    return-void

    .line 90
    :cond_1
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v6

    new-array v9, v8, [Ljava/lang/Integer;

    invoke-virtual {v6, v9}, Lcom/google/common/collect/ImmutableCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Integer;

    iput-object v6, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/Integer;

    .line 91
    iget-object v6, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/Integer;

    array-length v6, v6

    iput v6, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mNumCallersInConference:I

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Number of calls is "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v9, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mNumCallersInConference:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    if-eqz v6, :cond_3

    move v3, v7

    .line 98
    .local v3, "hasActiveCall":Z
    :goto_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    if-eqz v6, :cond_4

    move v4, v7

    .line 99
    .local v4, "hasHoldingCall":Z
    :goto_1
    if-eqz v3, :cond_2

    if-nez v4, :cond_5

    :cond_2
    move v1, v7

    .line 101
    .local v1, "canSeparate":Z
    :goto_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    .line 102
    iget v6, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mNumCallersInConference:I

    if-ge v5, v6, :cond_6

    .line 105
    iget-object v6, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/Integer;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    .line 107
    .local v2, "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-virtual {p0, v5, v2, v1}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 101
    .end local v2    # "contactCache":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v1    # "canSeparate":Z
    .end local v3    # "hasActiveCall":Z
    .end local v4    # "hasHoldingCall":Z
    .end local v5    # "i":I
    :cond_3
    move v3, v8

    .line 97
    goto :goto_0

    .restart local v3    # "hasActiveCall":Z
    :cond_4
    move v4, v8

    .line 98
    goto :goto_1

    .restart local v4    # "hasHoldingCall":Z
    :cond_5
    move v1, v8

    .line 99
    goto :goto_2

    .line 110
    .restart local v1    # "canSeparate":Z
    .restart local v5    # "i":I
    :cond_6
    invoke-virtual {p0, v5, v10, v8}, Lcom/android/incallui/ConferenceManagerPresenter;->updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    goto :goto_4
.end method


# virtual methods
.method public endConferenceConnection(I)V
    .locals 2
    .param p1, "rowId"    # I

    .prologue
    .line 193
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    .line 194
    return-void
.end method

.method public getMaxCallersInConference()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x5

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/CallList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 78
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    .line 79
    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 81
    return-void
.end method

.method public manageConferenceDoneClicked()V
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    .line 182
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->isFragmentVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_2

    .line 63
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 64
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number of existing calls is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->update(Lcom/android/incallui/CallList;)V

    .line 75
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    goto :goto_0

    .line 72
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v1, v3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setVisible(Z)V

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 48
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 49
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 33
    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiReady(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 55
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 56
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 33
    check-cast p1, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/ConferenceManagerPresenter;->onUiUnready(Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;)V

    return-void
.end method

.method public separateConferenceConnection(I)V
    .locals 2
    .param p1, "rowId"    # I

    .prologue
    .line 189
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerPresenter;->mCallerIds:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->separateCall(I)V

    .line 190
    return-void
.end method

.method public updateManageConferenceRow(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "contactCacheEntry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "canSeparate"    # Z

    .prologue
    .line 130
    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    .line 144
    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->getEntryDisplayName(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->getEntryDisplayNumber(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "number":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/android/incallui/ConferenceManagerPresenter;->getEntryDisplayType(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v3, p1, p3}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setCanSeparateButtonForRow(IZ)V

    .line 163
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v3, p1}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setupEndButtonForRow(I)V

    .line 172
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    invoke-interface {v3, p1, v0, v1, v2}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "number":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;->setRowVisible(IZ)V

    goto :goto_0
.end method
