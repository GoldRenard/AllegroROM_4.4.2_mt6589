.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookTimePicker;
.super Ljava/lang/Object;
.source "IdeaUI_HookTimePicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAttachedToWindow(Landroid/widget/TimePicker;Landroid/view/View;)V
    .locals 4
    .param p0, "timePicker"    # Landroid/widget/TimePicker;
    .param p1, "amPmView"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 15
    .local v0, "mContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    .line 18
    sget v3, Lcom/lenovo/internal/R$id;->ideaui_time_picker_background:I

    invoke-virtual {p0, v3}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 20
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 21
    sget v3, Lcom/lenovo/internal/R$attr;->ideaui_time_picker_without_ampm_background:I

    invoke-static {v0, v3}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 24
    .local v1, "res_id":I
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .end local v1    # "res_id":I
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method
