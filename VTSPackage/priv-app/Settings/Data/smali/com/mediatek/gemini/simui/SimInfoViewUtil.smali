.class public Lcom/mediatek/gemini/simui/SimInfoViewUtil;
.super Ljava/lang/Object;
.source "SimInfoViewUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/simui/SimInfoViewUtil$1;,
        Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    }
.end annotation


# static fields
.field private static final NUM_WIDTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimInfoViewUtil"


# instance fields
.field mSimCustView:Landroid/widget/CompoundButton;

.field mSimIconView:Landroid/widget/RelativeLayout;

.field mSimIndicator:Landroid/widget/ImageView;

.field mSimName:Landroid/widget/TextView;

.field mSimNum:Landroid/widget/TextView;

.field mSimShortNum:Landroid/widget/TextView;

.field mText3G:Landroid/widget/TextView;

.field mWidgetFrame:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    return-void
.end method

.method private bindSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 2
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 71
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    iget v1, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimShortNum(Ljava/lang/String;I)V

    .line 72
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimName(Ljava/lang/String;)V

    .line 73
    iget-object v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimNumber(Ljava/lang/String;)V

    .line 74
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimWG(I)V

    .line 75
    return-void
.end method

.method private setSimNumber(Ljava/lang/String;)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, 0x1

    .line 235
    .local v0, "isVisible":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 243
    return-void

    .line 239
    :cond_0
    const-string v1, "SimInfoViewUtil"

    const-string v2, "No sim item not support to call the function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 242
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method private setSimShortNum(Ljava/lang/String;I)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberFormat"    # I

    .prologue
    const/4 v5, 0x4

    .line 181
    const/4 v0, 0x1

    .line 182
    .local v0, "isVisible":Z
    if-eqz p1, :cond_3

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numberFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz p2, :cond_2

    .line 185
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v5, :cond_0

    .line 187
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 203
    return-void

    .line 189
    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "shortNum":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    .end local v1    # "shortNum":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 196
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :cond_3
    const-string v2, "SimInfoViewUtil"

    const-string v3, "No sim item not support to call the function"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isEnabled"    # Z

    .prologue
    .line 221
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 222
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 223
    check-cast v1, Landroid/view/ViewGroup;

    .line 224
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 225
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->enableView(Landroid/view/View;Z)V

    .line 224
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public initViewId(Landroid/view/View;)V
    .locals 1
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 42
    const v0, 0x7f0b0299

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    .line 43
    const v0, 0x7f0b029d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0b029e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimNum:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0b029a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    .line 46
    const v0, 0x7f0b029b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimShortNum:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0b029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    .line 48
    const v0, 0x7f0b0223

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mText3G:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public setCustomWidget(Landroid/content/Context;Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "id":I
    sget-object v1, Lcom/mediatek/gemini/simui/SimInfoViewUtil$1;->$SwitchMap$com$mediatek$gemini$simui$SimInfoViewUtil$WidgetType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 115
    const-string v1, "SimInfoViewUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknow type type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    :pswitch_0
    if-nez v0, :cond_1

    .line 119
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 128
    :cond_0
    :goto_1
    return-void

    .line 106
    :pswitch_1
    const v0, 0x7f0b02a1

    .line 107
    goto :goto_0

    .line 109
    :pswitch_2
    const v0, 0x7f0b02a2

    .line 110
    goto :goto_0

    .line 112
    :pswitch_3
    const v0, 0x7f0b02a0

    .line 113
    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mWidgetFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    .line 123
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSimBackgroundColor(I)V
    .locals 5
    .param p1, "colorId"    # I

    .prologue
    .line 135
    const/4 v0, 0x1

    .line 136
    .local v0, "isVisible":Z
    if-ltz p1, :cond_1

    .line 137
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getSimColorResource(I)I

    move-result v1

    .line 138
    .local v1, "resColor":I
    if-ltz v1, :cond_0

    .line 139
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 148
    .end local v1    # "resColor":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    return-void

    .line 141
    .restart local v1    # "resColor":I
    :cond_0
    const/4 v0, 0x0

    .line 142
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong colorId unable to get color for sim colorId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v1    # "resColor":I
    :cond_1
    const/4 v0, 0x0

    .line 146
    const-string v2, "SimInfoViewUtil"

    const-string v3, "colorId < 0 not correct"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public setSimBackgroundColorInTheme(II)V
    .locals 5
    .param p1, "colorId"    # I
    .param p2, "themeId"    # I

    .prologue
    .line 157
    const/4 v0, 0x1

    .line 158
    .local v0, "isVisible":Z
    if-ltz p1, :cond_2

    .line 159
    const v2, 0x1030079

    if-ne p2, v2, :cond_0

    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getSimColorLightResource(I)I

    move-result v1

    .line 162
    .local v1, "resColor":I
    :goto_0
    if-ltz v1, :cond_1

    .line 163
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 172
    .end local v1    # "resColor":I
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIconView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 173
    return-void

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getSimColorResource(I)I

    move-result v1

    goto :goto_0

    .line 165
    .restart local v1    # "resColor":I
    :cond_1
    const/4 v0, 0x0

    .line 166
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wrong colorId unable to get color for sim colorId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resColor = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 169
    .end local v1    # "resColor":I
    :cond_2
    const/4 v0, 0x0

    .line 170
    const-string v2, "SimInfoViewUtil"

    const-string v3, "colorId < 0 not correct"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 172
    :cond_3
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public setSimIndicatorIcon(I)V
    .locals 5
    .param p1, "indicator"    # I

    .prologue
    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, "isVisible":Z
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    .line 86
    const-string v2, "SimInfoViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "unable to show indicator icon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    return-void

    .line 88
    :cond_1
    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->getStatusResource(I)I

    move-result v1

    .line 89
    .local v1, "res":I
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 1
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 56
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {p0, v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimBackgroundColor(I)V

    .line 57
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->bindSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 58
    return-void
.end method

.method public setSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V
    .locals 1
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "themeId"    # I

    .prologue
    .line 66
    iget v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {p0, v0, p2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimBackgroundColorInTheme(II)V

    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->bindSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    .line 68
    return-void
.end method

.method public setSimName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v0, 0x1

    .line 211
    .local v0, "isVisible":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    return-void

    .line 214
    :cond_0
    const-string v1, "SimInfoViewUtil"

    const-string v2, "No sim item not support to call the function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setSimWG(I)V
    .locals 2
    .param p1, "SlotId"    # I

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mText3G:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mText3G:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_0
    return-void
.end method
