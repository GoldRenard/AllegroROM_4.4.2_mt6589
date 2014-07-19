.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;
.super Ljava/lang/Object;
.source "IdeaUI_HookPreferenceActivity.java"


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mContext:Landroid/content/Context;

.field private mIdeaUI_preference_background_bottom:I

.field private mIdeaUI_preference_background_middle:I

.field private mIdeaUI_preference_background_single:I

.field private mIdeaUI_preference_background_top:I


# direct methods
.method public constructor <init>(Landroid/widget/Adapter;Landroid/content/Context;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mAdapter:Landroid/widget/Adapter;

    .line 20
    iput-object p2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    sget v1, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_top:I

    invoke-static {p2, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 28
    .local v0, "res_id":I
    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_top:I

    .line 30
    sget v1, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_middle:I

    invoke-static {p2, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 32
    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_middle:I

    .line 34
    sget v1, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_bottom:I

    invoke-static {p2, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 36
    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_bottom:I

    .line 38
    sget v1, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_background_single:I

    invoke-static {p2, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 40
    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_single:I

    .line 43
    .end local v0    # "res_id":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    if-nez p1, :cond_2

    .line 49
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 50
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_single:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_top:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_3

    .line 56
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_bottom:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 58
    :cond_3
    iget v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceActivity;->mIdeaUI_preference_background_middle:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
