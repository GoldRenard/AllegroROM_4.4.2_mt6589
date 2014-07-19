.class public Lcom/mediatek/settings/ProportionalOuterFrame;
.super Landroid/widget/RelativeLayout;
.source "ProportionalOuterFrame.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x1

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 47
    .local v2, "parentWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 48
    .local v1, "parentHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 49
    .local v3, "resources":Landroid/content/res/Resources;
    const v5, 0x7f080013

    invoke-virtual {v3, v5, v6, v6}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v4

    .line 50
    .local v4, "sideMargin":F
    const v5, 0x7f080014

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 52
    .local v0, "bottom":I
    int-to-float v5, v2

    mul-float/2addr v5, v4

    float-to-int v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v4

    float-to-int v6, v6

    int-to-float v7, v2

    mul-float/2addr v7, v4

    float-to-int v7, v7

    invoke-virtual {p0, v5, v6, v7, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 59
    return-void
.end method
