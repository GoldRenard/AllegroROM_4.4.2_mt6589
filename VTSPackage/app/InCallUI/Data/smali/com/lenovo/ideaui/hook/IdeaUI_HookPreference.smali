.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;
.super Ljava/lang/Object;
.source "IdeaUI_HookPreference.java"


# instance fields
.field private mIdeaUI_IsAtCategoryBottom:Z

.field private mIdeaUI_IsAtCategoryTop:Z

.field private mIdeaUI_preference_background_bottom:I

.field private mIdeaUI_preference_background_middle:I

.field private mIdeaUI_preference_background_single:I

.field private mIdeaUI_preference_background_top:I

.field private mPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_IsAtCategoryTop:Z

    .line 13
    iput-boolean v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_IsAtCategoryBottom:Z

    .line 24
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mPreference:Landroid/preference/Preference;

    .line 26
    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    sget v2, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_top:I

    invoke-static {v0, v2}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 33
    .local v1, "res_id":I
    iput v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_top:I

    .line 35
    sget v2, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_middle:I

    invoke-static {v0, v2}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 37
    iput v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_middle:I

    .line 39
    sget v2, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_bottom:I

    invoke-static {v0, v2}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 41
    iput v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_bottom:I

    .line 43
    sget v2, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_single:I

    invoke-static {v0, v2}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 45
    iput v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_single:I

    .line 49
    .end local v1    # "res_id":I
    :cond_0
    return-void
.end method


# virtual methods
.method public IdeaUI_setAtCategoryPostion(ZZ)V
    .locals 0
    .param p1, "isAtCategoryTop"    # Z
    .param p2, "isAtCategoryBottom"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_IsAtCategoryTop:Z

    .line 54
    iput-boolean p2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_IsAtCategoryBottom:Z

    .line 55
    return-void
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mPreference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/PreferenceCategory;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_IsAtCategoryTop:Z

    if-eqz v0, :cond_2

    .line 63
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_IsAtCategoryBottom:Z

    if-nez v0, :cond_1

    .line 64
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_top:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_single:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 69
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_IsAtCategoryBottom:Z

    if-nez v0, :cond_3

    .line 70
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_middle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 72
    :cond_3
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->mIdeaUI_preference_background_bottom:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
