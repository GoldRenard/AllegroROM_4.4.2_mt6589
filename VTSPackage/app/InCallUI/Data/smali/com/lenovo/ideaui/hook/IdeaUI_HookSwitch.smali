.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;
.super Ljava/lang/Object;
.source "IdeaUI_HookSwitch.java"


# static fields
.field private static final CLIP_DRAWABLE_LEVEL:I = 0x1388

.field private static final TextMargin:I


# instance fields
.field private isLenovo_ideaui:Z

.field private mDisableOff:Landroid/graphics/drawable/ClipDrawable;

.field private mDisableOn:Landroid/graphics/drawable/ClipDrawable;

.field private mOff:Landroid/graphics/drawable/ClipDrawable;

.field private mOn:Landroid/graphics/drawable/ClipDrawable;

.field private mSwitch:Landroid/widget/Switch;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/widget/Switch;Landroid/content/res/TypedArray;)V
    .locals 12
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v11, 0x2

    const/4 v3, 0x0

    const/16 v10, 0x1388

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 19
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 20
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 21
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 23
    iput-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    .line 26
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mSwitch:Landroid/widget/Switch;

    .line 31
    invoke-virtual {p1}, Landroid/widget/Switch;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p2, v11, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 34
    .local v4, "nid":I
    sget v8, Lcom/lenovo/internal/R$drawable;->switch_inner_holo_light:I

    if-eq v4, v8, :cond_0

    sget v8, Lcom/lenovo/internal/R$drawable;->switch_inner_holo_dark:I

    if-ne v4, v8, :cond_4

    .line 37
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/lenovo/internal/R$drawable;->switch_bg_disable_focus:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 38
    .local v2, "disable_on":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/lenovo/internal/R$drawable;->switch_bg_disable_normal:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 39
    .local v1, "disable_off":Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    const/4 v9, 0x3

    invoke-direct {v8, v2, v9, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 40
    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    const/4 v9, 0x5

    invoke-direct {v8, v1, v9, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 41
    iget-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 42
    iget-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v8, v10}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 45
    iput-boolean v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    .line 46
    invoke-virtual {p2, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 47
    const/4 v8, 0x4

    invoke-virtual {p2, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    sget v8, Lcom/lenovo/internal/R$drawable;->switch_inner_holo_dark:I

    if-ne v4, v8, :cond_1

    move v3, v7

    .line 50
    .local v3, "isDark":Z
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v3, :cond_2

    sget v8, Lcom/lenovo/internal/R$drawable;->switch_bg_focused_holo_dark:I

    :goto_0
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 54
    .local v6, "on":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    if-eqz v3, :cond_3

    sget v8, Lcom/lenovo/internal/R$drawable;->switch_bg_holo_dark:I

    :goto_1
    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 58
    .local v5, "off":Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    const/4 v9, 0x3

    invoke-direct {v8, v6, v9, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 59
    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    const/4 v9, 0x5

    invoke-direct {v8, v5, v9, v7}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v8, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 60
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 61
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 71
    .end local v1    # "disable_off":Landroid/graphics/drawable/Drawable;
    .end local v2    # "disable_on":Landroid/graphics/drawable/Drawable;
    .end local v3    # "isDark":Z
    .end local v5    # "off":Landroid/graphics/drawable/Drawable;
    .end local v6    # "on":Landroid/graphics/drawable/Drawable;
    :goto_2
    return-void

    .line 50
    .restart local v1    # "disable_off":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "disable_on":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "isDark":Z
    :cond_2
    sget v8, Lcom/lenovo/internal/R$drawable;->switch_bg_focused_holo_light:I

    goto :goto_0

    .line 54
    .restart local v6    # "on":Landroid/graphics/drawable/Drawable;
    :cond_3
    sget v8, Lcom/lenovo/internal/R$drawable;->switch_bg_holo_light:I

    goto :goto_1

    .line 64
    .end local v1    # "disable_off":Landroid/graphics/drawable/Drawable;
    .end local v2    # "disable_on":Landroid/graphics/drawable/Drawable;
    .end local v3    # "isDark":Z
    .end local v6    # "on":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p2, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 67
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 68
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 69
    iput-object v9, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_2
.end method


# virtual methods
.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLenovo_ideaui()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;FIIIII)Z
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "thumbPosition"    # F
    .param p3, "thumbScrollRange"    # I
    .param p4, "switchLeft"    # I
    .param p5, "switchTop"    # I
    .param p6, "switchRight"    # I
    .param p7, "switchBottom"    # I

    .prologue
    const/4 v5, 0x0

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "left_bg":Landroid/graphics/drawable/ClipDrawable;
    const/4 v2, 0x0

    .line 120
    .local v2, "right_bg":Landroid/graphics/drawable/ClipDrawable;
    iget-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 124
    iget-object v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 131
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 134
    const/high16 v3, 0x45fa0000

    mul-float/2addr v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit16 v1, v3, 0x3e8

    .line 136
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 137
    rsub-int v3, v1, 0x2710

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 140
    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    .line 141
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    invoke-virtual {v2, p4, p5, p6, p7}, Landroid/graphics/drawable/ClipDrawable;->setBounds(IIII)V

    .line 147
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    const/4 v3, 0x1

    .line 153
    .end local v1    # "level":I
    :goto_1
    return v3

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 127
    iget-object v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_0

    .line 153
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTextOff()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextOn()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTrackDrawable()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 97
    :goto_0
    return v0

    .line 91
    :cond_0
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 92
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 93
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 94
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method
