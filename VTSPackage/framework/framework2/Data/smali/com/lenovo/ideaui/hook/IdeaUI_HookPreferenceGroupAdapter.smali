.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceGroupAdapter;
.super Ljava/lang/Object;
.source "IdeaUI_HookPreferenceGroupAdapter.java"


# instance fields
.field private mIdeaUI_IsFirstItemCategory:Z

.field private mPreferenceGroupAdapter:Landroid/preference/PreferenceGroupAdapter;


# direct methods
.method public constructor <init>(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 1
    .param p1, "preferenceGroupAdapter"    # Landroid/preference/PreferenceGroupAdapter;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    .line 16
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceGroupAdapter;->mPreferenceGroupAdapter:Landroid/preference/PreferenceGroupAdapter;

    .line 17
    return-void
.end method


# virtual methods
.method public IdeaUI_IsFirstItemCategory()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    return v0
.end method

.method public flattenPreferenceGroup(ILandroid/preference/PreferenceGroup;)V
    .locals 8
    .param p1, "groupSize"    # I
    .param p2, "group"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 22
    if-ne p1, v6, :cond_1

    .line 23
    invoke-virtual {p2, v7}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 25
    .local v4, "preference":Landroid/preference/Preference;
    invoke-virtual {v4, v6, v6}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 74
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    if-le p1, v6, :cond_0

    .line 27
    const/4 v2, 0x1

    .line 28
    .local v2, "isAtCategoryTop":Z
    const/4 v1, 0x0

    .line 29
    .local v1, "isAtCategoryBottom":Z
    invoke-virtual {p2, v7}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 31
    .local v3, "lastPreference":Landroid/preference/Preference;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 32
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 34
    .restart local v4    # "preference":Landroid/preference/Preference;
    instance-of v5, v4, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_2

    .line 35
    const/4 v1, 0x1

    .line 38
    invoke-virtual {v3, v2, v1}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v1, 0x0

    .line 55
    :goto_2
    move-object v3, v4

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 43
    :cond_2
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v3, v2, v1}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 48
    instance-of v5, v3, Landroid/preference/PreferenceCategory;

    if-nez v5, :cond_3

    .line 49
    const/4 v2, 0x0

    .line 51
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 59
    .end local v4    # "preference":Landroid/preference/Preference;
    :cond_4
    const/4 v1, 0x1

    .line 60
    invoke-virtual {v3, v2, v1}, Landroid/preference/Preference;->IdeaUI_setAtCategoryPostion(ZZ)V

    .line 63
    if-lt p1, v6, :cond_0

    .line 64
    invoke-virtual {p2, v7}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 66
    .restart local v4    # "preference":Landroid/preference/Preference;
    instance-of v5, v4, Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_5

    .line 67
    iput-boolean v6, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    goto :goto_0

    .line 69
    :cond_5
    iput-boolean v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceGroupAdapter;->mIdeaUI_IsFirstItemCategory:Z

    goto :goto_0
.end method
