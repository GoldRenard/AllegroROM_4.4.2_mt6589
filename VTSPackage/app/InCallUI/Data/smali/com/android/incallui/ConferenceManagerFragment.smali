.class public Lcom/android/incallui/ConferenceManagerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "ConferenceManagerFragment.java"

# interfaces
.implements Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/ConferenceManagerPresenter;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;",
        ">;",
        "Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;"
    }
.end annotation


# instance fields
.field private mButtonManageConferenceDone:Landroid/view/View;

.field private mConferenceCallList:[Landroid/view/ViewGroup;

.field private mConferenceTime:Landroid/widget/Chronometer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/ConferenceManagerPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->createPresenter()Lcom/android/incallui/ConferenceManagerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public final displayCallerInfoForConferenceRow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "rowId"    # I
    .param p2, "callerName"    # Ljava/lang/String;
    .param p3, "callerNumber"    # Ljava/lang/String;
    .param p4, "callerNumberType"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f060025

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 141
    .local v0, "nameTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f060026

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 143
    .local v1, "numberTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f060027

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 147
    .local v2, "numberTypeTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 152
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;
    .locals 0

    .prologue
    .line 51
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/android/incallui/ConferenceManagerFragment;->getUi()Lcom/android/incallui/ConferenceManagerPresenter$ConferenceManagerUi;

    move-result-object v0

    return-object v0
.end method

.method public isFragmentVisible()Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, "parent":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/ConferenceManagerFragment$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/ConferenceManagerFragment$1;-><init>(Lcom/android/incallui/ConferenceManagerFragment;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    const v3, 0x7f06002a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Chronometer;

    iput-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    .line 77
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0279

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Chronometer;->setFormat(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    new-array v3, v3, [Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    .line 82
    const/4 v3, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 84
    .local v2, "viewGroupIdList":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/ConferenceManagerPresenter;->getMaxCallersInConference()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 85
    iget-object v4, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget v3, v2, v0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const v3, 0x7f06002d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    .line 90
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mButtonManageConferenceDone:Landroid/view/View;

    new-instance v4, Lcom/android/incallui/ConferenceManagerFragment$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/ConferenceManagerFragment$2;-><init>(Lcom/android/incallui/ConferenceManagerFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-object v1

    .line 82
    nop

    :array_0
    .array-data 4
        0x7f06002f
        0x7f060030
        0x7f060031
        0x7f060032
        0x7f060033
    .end array-data
.end method

.method public final setCanSeparateButtonForRow(IZ)V
    .locals 7
    .param p1, "rowId"    # I
    .param p2, "canSeparate"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 174
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "separateButton":Landroid/view/View;
    iget-object v3, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v3, v3, p1

    const v4, 0x7f060024

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 183
    .local v2, "splitIcon":Landroid/widget/ImageView;
    if-eqz p2, :cond_0

    .line 184
    new-instance v1, Lcom/android/incallui/ConferenceManagerFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/ConferenceManagerFragment$4;-><init>(Lcom/android/incallui/ConferenceManagerFragment;I)V

    .line 190
    .local v1, "separateThisConnection":Landroid/view/View$OnClickListener;
    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-virtual {v2, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 200
    .end local v1    # "separateThisConnection":Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/View;->setClickable(Z)V

    .line 197
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setRowVisible(IZ)V
    .locals 2
    .param p1, "rowId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 124
    if-eqz p2, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v0, v0, p1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 109
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/ConferenceManagerPresenter;->init(Landroid/content/Context;Lcom/android/incallui/CallList;)V

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 115
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setupEndButtonForRow(I)V
    .locals 3
    .param p1, "rowId"    # I

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceCallList:[Landroid/view/ViewGroup;

    aget-object v1, v1, p1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 164
    .local v0, "endButton":Landroid/view/View;
    new-instance v1, Lcom/android/incallui/ConferenceManagerFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/ConferenceManagerFragment$3;-><init>(Lcom/android/incallui/ConferenceManagerFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void
.end method

.method public startConferenceTime(J)V
    .locals 1
    .param p1, "base"    # J

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Chronometer;->setBase(J)V

    .line 209
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 211
    :cond_0
    return-void
.end method

.method public stopConferenceTime()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerFragment;->mConferenceTime:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 221
    :cond_0
    return-void
.end method
