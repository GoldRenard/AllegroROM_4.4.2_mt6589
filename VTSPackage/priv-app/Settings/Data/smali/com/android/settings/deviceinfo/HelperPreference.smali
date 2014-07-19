.class public Lcom/android/settings/deviceinfo/HelperPreference;
.super Landroid/preference/Preference;
.source "HelperPreference.java"


# static fields
.field private static final SUMMARY_ID:I = 0x7f0b0052

.field private static final TITLE_ID:I = 0x7f0b0031


# instance fields
.field private TAG:Ljava/lang/String;

.field private mPreferenceSummary:Landroid/widget/TextView;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mSummaryValue:Ljava/lang/CharSequence;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 25
    const-string v0, "HelperPreference"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->TAG:Ljava/lang/String;

    .line 28
    const v0, 0x7f04009f

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mSummaryValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mTitleValue:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->TAG:Ljava/lang/String;

    const-string v2, "getview"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 36
    iget-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    const v1, 0x7f0b0052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceSummary:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-object v0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceSummary:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 63
    iput-object p1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iput-object p1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mSummaryValue:Ljava/lang/CharSequence;

    .line 67
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mSummaryValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :cond_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 47
    iput-object p1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    iput-object p1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 51
    iget-object v0, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/HelperPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_1
    return-void
.end method
