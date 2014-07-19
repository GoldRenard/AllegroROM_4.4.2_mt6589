.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceFragment;
.super Ljava/lang/Object;
.source "IdeaUI_HookPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreateView(Landroid/view/LayoutInflater;Landroid/app/Activity;)V
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 13
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 16
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 17
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 19
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 20
    sget v4, Landroid/R$id;->content:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/lenovo/internal/R$attr;->ideaui_rounded_cornor_preference_window_background:I

    invoke-static {v4, v5}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 25
    .local v2, "res_id":I
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "decor":Landroid/view/View;
    .end local v2    # "res_id":I
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method
