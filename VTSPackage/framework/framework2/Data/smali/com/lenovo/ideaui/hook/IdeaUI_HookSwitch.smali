.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;
.super Ljava/lang/Object;
.source "IdeaUI_HookSwitch.java"


# static fields
.field private static final CLIP_DRAWABLE_LEVEL:I = 0x1388

.field private static final ROW_PRODUCT:Z

.field private static final TextMargin:I


# instance fields
.field private isLenovo_ideaui:Z

.field private mDisableOff:Landroid/graphics/drawable/ClipDrawable;

.field private mDisableOff_rtl:Landroid/graphics/drawable/ClipDrawable;

.field private mDisableOn:Landroid/graphics/drawable/ClipDrawable;

.field private mDisableOn_rtl:Landroid/graphics/drawable/ClipDrawable;

.field private mOff:Landroid/graphics/drawable/ClipDrawable;

.field private mOff_rtl:Landroid/graphics/drawable/ClipDrawable;

.field private mOn:Landroid/graphics/drawable/ClipDrawable;

.field private mOn_rtl:Landroid/graphics/drawable/ClipDrawable;

.field private mSwitch:Landroid/widget/Switch;

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    const-string v2, "prc"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->ROW_PRODUCT:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/Switch;Landroid/content/res/TypedArray;)V
    .locals 10
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 22
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 23
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 24
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 27
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 28
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 29
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 30
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 32
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    .line 35
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mSwitch:Landroid/widget/Switch;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    .local v0, "context":Landroid/content/Context;
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 43
    .local v4, "nid":I
    const v7, 0x30801f1

    if-eq v4, v7, :cond_0

    const v7, 0x30801f0

    if-ne v4, v7, :cond_6

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30801ea

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 47
    .local v2, "disable_on":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x30801eb

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 48
    .local v1, "disable_off":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {v7, v2, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 49
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-direct {v7, v1, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 50
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 51
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 53
    sget-boolean v7, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->ROW_PRODUCT:Z

    if-eqz v7, :cond_1

    .line 54
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-direct {v7, v2, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 55
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {v7, v1, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 56
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 57
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 62
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    .line 63
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    const v7, 0x30801f0

    if-ne v4, v7, :cond_3

    const/4 v3, 0x1

    .line 67
    .local v3, "isDark":Z
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_4

    const v7, 0x30801ec

    :goto_1
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 71
    .local v6, "on":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v3, :cond_5

    const v7, 0x30801ee

    :goto_2
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 75
    .local v5, "off":Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 76
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-direct {v7, v5, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 77
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 78
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 80
    sget-boolean v7, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->ROW_PRODUCT:Z

    if-eqz v7, :cond_2

    .line 81
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 82
    new-instance v7, Landroid/graphics/drawable/ClipDrawable;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-direct {v7, v5, v8, v9}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 83
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 84
    iget-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 104
    .end local v1    # "disable_off":Landroid/graphics/drawable/Drawable;
    .end local v2    # "disable_on":Landroid/graphics/drawable/Drawable;
    .end local v3    # "isDark":Z
    .end local v5    # "off":Landroid/graphics/drawable/Drawable;
    .end local v6    # "on":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_3
    return-void

    .line 66
    .restart local v1    # "disable_off":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "disable_on":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    .restart local v3    # "isDark":Z
    :cond_4
    const v7, 0x30801ed

    goto :goto_1

    .line 71
    .restart local v6    # "on":Landroid/graphics/drawable/Drawable;
    :cond_5
    const v7, 0x30801ef

    goto :goto_2

    .line 89
    .end local v1    # "disable_off":Landroid/graphics/drawable/Drawable;
    .end local v2    # "disable_on":Landroid/graphics/drawable/Drawable;
    .end local v3    # "isDark":Z
    .end local v6    # "on":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v7, 0x2

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    const/4 v7, 0x4

    invoke-virtual {p2, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 92
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 93
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 94
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 96
    sget-boolean v7, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->ROW_PRODUCT:Z

    if-eqz v7, :cond_2

    .line 97
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 98
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 99
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 100
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_3
.end method


# virtual methods
.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLenovo_ideaui()Z
    .locals 1

    .prologue
    .line 116
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

    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "left_bg":Landroid/graphics/drawable/ClipDrawable;
    const/4 v2, 0x0

    .line 161
    .local v2, "right_bg":Landroid/graphics/drawable/ClipDrawable;
    iget-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v3, :cond_0

    .line 163
    sget-boolean v3, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->ROW_PRODUCT:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 165
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 166
    iget-object v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 184
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 187
    const/high16 v3, 0x45fa0000

    mul-float/2addr v3, p2

    int-to-float v4, p3

    div-float/2addr v3, v4

    float-to-int v3, v3

    add-int/lit16 v1, v3, 0x3e8

    .line 189
    .local v1, "level":I
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 190
    rsub-int v3, v1, 0x2710

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 193
    invoke-virtual {v0, p4, p5, p6, p7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 195
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    invoke-virtual {p1, v5, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    invoke-virtual {v2, p4, p5, p6, p7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ClipDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 203
    const/4 v3, 0x1

    .line 206
    .end local v1    # "level":I
    :goto_1
    return v3

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 169
    iget-object v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_0

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 174
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 175
    iget-object v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_0

    .line 177
    :cond_3
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 178
    iget-object v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    goto :goto_0

    .line 206
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setTextOff()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextOn()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 146
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

    .line 120
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->isLenovo_ideaui:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 138
    :goto_0
    return v0

    .line 124
    :cond_0
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn:Landroid/graphics/drawable/ClipDrawable;

    .line 125
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff:Landroid/graphics/drawable/ClipDrawable;

    .line 126
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn:Landroid/graphics/drawable/ClipDrawable;

    .line 127
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff:Landroid/graphics/drawable/ClipDrawable;

    .line 129
    sget-boolean v0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->ROW_PRODUCT:Z

    if-eqz v0, :cond_1

    .line 130
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 131
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 132
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOn_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 133
    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookSwitch;->mDisableOff_rtl:Landroid/graphics/drawable/ClipDrawable;

    .line 138
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
