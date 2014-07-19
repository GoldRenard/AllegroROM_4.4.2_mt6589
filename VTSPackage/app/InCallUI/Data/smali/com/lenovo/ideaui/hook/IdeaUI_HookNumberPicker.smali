.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookNumberPicker;
.super Ljava/lang/Object;
.source "IdeaUI_HookNumberPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NumberPicker(Landroid/widget/NumberPicker;Landroid/util/AttributeSet;ILandroid/graphics/Paint;)V
    .locals 11
    .param p0, "numberPicker"    # Landroid/widget/NumberPicker;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyle"    # I
    .param p3, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/4 v10, 0x0

    .line 15
    invoke-virtual {p0}, Landroid/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 19
    const/4 v9, 0x1

    new-array v8, v9, [I

    sget v9, Lcom/android/internal/R$attr;->background:I

    aput v9, v8, v10

    .line 20
    .local v8, "styles":[I
    invoke-virtual {v1, p1, v8, p2, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 24
    .local v6, "res":I
    if-nez v6, :cond_0

    .line 25
    sget v9, Lcom/lenovo/internal/R$attr;->ideaui_single_picker_background:I

    invoke-static {v1, v9}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v4

    .line 28
    .local v4, "ideaui_res":I
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker;->setBackgroundResource(I)V

    .line 31
    .end local v4    # "ideaui_res":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 34
    sget v9, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_radius:I

    invoke-static {v1, v9}, Lcom/lenovo/ideaui/IdeaUI;->getFloatFromAttribute(Landroid/content/Context;I)F

    move-result v5

    .line 37
    .local v5, "radius":F
    sget v9, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_dx:I

    invoke-static {v1, v9}, Lcom/lenovo/ideaui/IdeaUI;->getFloatFromAttribute(Landroid/content/Context;I)F

    move-result v2

    .line 40
    .local v2, "dx":F
    sget v9, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_dy:I

    invoke-static {v1, v9}, Lcom/lenovo/ideaui/IdeaUI;->getFloatFromAttribute(Landroid/content/Context;I)F

    move-result v3

    .line 43
    .local v3, "dy":F
    sget v9, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_color:I

    invoke-static {v1, v9}, Lcom/lenovo/ideaui/IdeaUI;->getDataFromAttribute(Landroid/content/Context;I)I

    move-result v7

    .line 46
    .local v7, "shadow":I
    invoke-virtual {p3, v5, v2, v3, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 48
    .end local v0    # "array":Landroid/content/res/TypedArray;
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v5    # "radius":F
    .end local v6    # "res":I
    .end local v7    # "shadow":I
    .end local v8    # "styles":[I
    :cond_1
    return-void
.end method
