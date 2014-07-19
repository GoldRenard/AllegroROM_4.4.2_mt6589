.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPreferenceFragment;
.super Ljava/lang/Object;
.source "IdeaUI_HookPreferenceFragment.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static onCreateView(Landroid/view/LayoutInflater;Landroid/app/Activity;)V
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 20
    .local v3, "window":Landroid/view/Window;
    if-eqz v3, :cond_0

    .line 21
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 23
    .local v1, "decor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 24
    const v4, 0x1020002

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 26
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x3010001

    invoke-static {v4, v5}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 29
    .local v2, "res_id":I
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "decor":Landroid/view/View;
    .end local v2    # "res_id":I
    .end local v3    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method
