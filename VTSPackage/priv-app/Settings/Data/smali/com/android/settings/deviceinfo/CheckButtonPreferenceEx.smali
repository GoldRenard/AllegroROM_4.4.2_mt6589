.class public Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;
.super Landroid/preference/Preference;
.source "CheckButtonPreferenceEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHECKBOXBUTTON_ID:I = 0x7f0b0116

.field private static final PROGRESS_ID:I = 0x7f0b00b8

.field private static final SUMMARY_ID:I = 0x7f0b0052

.field private static final SWITCHBUTTON_ID:I = 0x7f0b0202

.field private static final TITLE_ID:I = 0x7f0b0031


# instance fields
.field private TAG:Ljava/lang/String;

.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/CheckBox;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSummaryValue:Ljava/lang/CharSequence;

.field private mSwitchButton:Landroid/widget/Button;

.field private mSwitchOnClick:Landroid/view/View$OnClickListener;

.field private mSwitchShow:Z

.field private mSwitchText:Ljava/lang/String;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    .line 24
    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    .line 25
    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    .line 26
    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    .line 28
    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchOnClick:Landroid/view/View$OnClickListener;

    .line 29
    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchText:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    .line 32
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    .line 35
    const-string v0, "CheckButtonPreferenceEx"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    .line 38
    const v0, 0x7f040095

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 39
    return-void
.end method

.method private updateSwitchStatuc()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 181
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchStatuc mSwitchShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchStatuc mTitleValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchStatus()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "getview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    .line 46
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    .line 48
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v1, 0x7f0b0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    .line 50
    const v1, 0x7f0b0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    .line 51
    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    .line 52
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->updateSwitchStatuc()V

    .line 54
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 56
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 58
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    return v0
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 123
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "preference.onClick return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_1
    return-void

    .line 121
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "preference.onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 105
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 106
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_1
    return-void

    .line 103
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    if-nez v1, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceButton:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 143
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mChecked:Z

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setProgressBar(Z)V
    .locals 3
    .param p1, "bShow"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 161
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 88
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    .line 92
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :cond_1
    return-void
.end method

.method public setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p1, "bShow"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "click"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    .line 151
    iput-object p3, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchOnClick:Landroid/view/View$OnClickListener;

    .line 152
    iput-object p2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchText:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitch mSwitchShow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mSwitchShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitch mTitleValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->updateSwitchStatuc()V

    .line 156
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iput-object p1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    .line 68
    iget-object v0, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    return-void
.end method
