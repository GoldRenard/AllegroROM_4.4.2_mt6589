.class public Lcom/mediatek/gemini/SimInfoPreference;
.super Landroid/preference/Preference;
.source "SimInfoPreference.java"


# static fields
.field private static final DISPLAY_FIRST_FOUR:I = 0x1

.field private static final DISPLAY_LAST_FOUR:I = 0x2

.field private static final DISPLAY_NONE:I = 0x0

.field private static final NUMFORMAT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SimInfoPreference"


# instance fields
.field private mChecked:Z

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mNeedCheckbox:Z

.field private mNeedStatus:Z

.field private mNumDisplayFormat:I

.field private mSimNum:Ljava/lang/String;

.field protected final mSlotIndex:I

.field private mStatus:I

.field private mUseCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZ)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "simSlot"    # I
    .param p5, "status"    # I
    .param p6, "color"    # I
    .param p7, "displayNumberFormat"    # I
    .param p8, "key"    # J
    .param p10, "needCheckBox"    # Z

    .prologue
    .line 63
    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/mediatek/gemini/SimInfoPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZ)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "simSlot"    # I
    .param p5, "status"    # I
    .param p6, "color"    # I
    .param p7, "displayNumberFormat"    # I
    .param p8, "key"    # J
    .param p10, "needCheckBox"    # Z
    .param p11, "needStatus"    # Z

    .prologue
    const/4 v1, 0x1

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    .line 28
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 29
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    .line 154
    iput-object p2, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    .line 155
    iput-object p3, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 156
    iput p4, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    .line 157
    iput p5, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    .line 158
    iput p6, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    .line 159
    iput p7, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    .line 160
    iput-boolean p10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 161
    iput-boolean p11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 162
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mContext:Landroid/content/Context;

    .line 163
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 165
    const v0, 0x7f0400ac

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 167
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 175
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIIJZZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "simSlot"    # I
    .param p5, "status"    # I
    .param p6, "color"    # I
    .param p7, "displayNumberFormat"    # I
    .param p8, "key"    # J
    .param p10, "needCheckBox"    # Z
    .param p11, "needStatus"    # Z
    .param p12, "useCheckBox"    # Z

    .prologue
    const/4 v1, 0x1

    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    .line 28
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 29
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    .line 102
    iput-object p2, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    .line 105
    iput p5, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    .line 106
    iput p6, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    .line 107
    iput p7, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    .line 108
    iput-boolean p10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 109
    iput-boolean p11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    .line 110
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mContext:Landroid/content/Context;

    .line 111
    iput-boolean p12, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    .line 112
    invoke-static {p8, p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 114
    const v0, 0x7f0400ad

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method getCheck()Z
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    return v0
.end method

.method public getSlotIndex()I
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 180
    .local v7, "view":Landroid/view/View;
    const v9, 0x1020016

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 181
    .local v6, "textTitle":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 182
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    const v9, 0x1020010

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 185
    .local v4, "textNum":Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 186
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_8

    .line 187
    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v9

    if-nez v9, :cond_1

    .line 188
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 190
    :cond_1
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_2
    :goto_0
    const v9, 0x7f0b0222

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 246
    .local v1, "imageStatus":Landroid/widget/ImageView;
    if-eqz v1, :cond_3

    .line 247
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedStatus:Z

    if-eqz v9, :cond_a

    .line 248
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    invoke-static {v9}, Lcom/mediatek/gemini/GeminiUtils;->getStatusResource(I)I

    move-result v2

    .line 249
    .local v2, "res":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_9

    .line 250
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 257
    .end local v2    # "res":I
    :goto_1
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 260
    :cond_3
    const v9, 0x7f0b0223

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 261
    .local v3, "text3G":Landroid/widget/TextView;
    if-eqz v3, :cond_4

    .line 277
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_4
    const v9, 0x7f0b0221

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 282
    .local v8, "viewSim":Landroid/widget/RelativeLayout;
    if-eqz v8, :cond_5

    .line 283
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSlotIndex:I

    invoke-static {v9}, Lcom/mediatek/gemini/GeminiUtils;->getSimColorResource(I)I

    move-result v2

    .line 285
    .restart local v2    # "res":I
    if-gez v2, :cond_b

    .line 286
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    .end local v2    # "res":I
    :cond_5
    :goto_2
    const-string v9, "SimInfoPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUseCheckBox="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mChecked="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mUseCheckBox:Z

    if-nez v9, :cond_f

    .line 293
    const v9, 0x7f0b0226

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 294
    .local v0, "ckRadioOn":Landroid/widget/Switch;
    if-eqz v0, :cond_6

    .line 295
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    if-eqz v9, :cond_e

    .line 296
    const-string v9, "tablet"

    const-string v10, "ro.build.characteristics"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 298
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_c

    .line 299
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 322
    .end local v0    # "ckRadioOn":Landroid/widget/Switch;
    :cond_6
    :goto_3
    const v9, 0x7f0b0224

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 323
    .local v5, "textNumForShort":Landroid/widget/TextView;
    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    if-eqz v9, :cond_7

    .line 324
    iget v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    packed-switch v9, :pswitch_data_0

    .line 346
    :goto_4
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_7
    return-object v7

    .line 192
    .end local v1    # "imageStatus":Landroid/widget/ImageView;
    .end local v3    # "text3G":Landroid/widget/TextView;
    .end local v5    # "textNumForShort":Landroid/widget/TextView;
    .end local v8    # "viewSim":Landroid/widget/RelativeLayout;
    :cond_8
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 252
    .restart local v1    # "imageStatus":Landroid/widget/ImageView;
    .restart local v2    # "res":I
    :cond_9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 255
    .end local v2    # "res":I
    :cond_a
    const/16 v9, 0x8

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 288
    .restart local v2    # "res":I
    .restart local v3    # "text3G":Landroid/widget/TextView;
    .restart local v8    # "viewSim":Landroid/widget/RelativeLayout;
    :cond_b
    invoke-virtual {v8, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 301
    .end local v2    # "res":I
    .restart local v0    # "ckRadioOn":Landroid/widget/Switch;
    :cond_c
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 304
    :cond_d
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v9}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    .line 307
    :cond_e
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 311
    .end local v0    # "ckRadioOn":Landroid/widget/Switch;
    :cond_f
    const v9, 0x7f0b0226

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 313
    .local v0, "ckRadioOn":Landroid/widget/CheckBox;
    if-eqz v0, :cond_6

    .line 314
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    if-eqz v9, :cond_10

    .line 315
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    invoke-virtual {v0, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    .line 317
    :cond_10
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 326
    .end local v0    # "ckRadioOn":Landroid/widget/CheckBox;
    .restart local v5    # "textNumForShort":Landroid/widget/TextView;
    :pswitch_0
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 329
    :pswitch_1
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_11

    .line 330
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 332
    :cond_11
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 336
    :pswitch_2
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-lt v9, v10, :cond_12

    .line 337
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 340
    :cond_12
    iget-object v9, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method setCheck(Z)V
    .locals 0
    .param p1, "bCheck"    # Z

    .prologue
    .line 354
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mChecked:Z

    .line 355
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 356
    return-void
.end method

.method setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 375
    iput p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mColor:I

    .line 376
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 377
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mName:Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 372
    return-void
.end method

.method public setNeedCheckBox(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 399
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNeedCheckbox:Z

    .line 400
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 401
    return-void
.end method

.method setNumDisplayFormat(I)V
    .locals 0
    .param p1, "format"    # I

    .prologue
    .line 380
    iput p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mNumDisplayFormat:I

    .line 381
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 382
    return-void
.end method

.method setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mSimNum:Ljava/lang/String;

    .line 386
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 387
    return-void
.end method

.method setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 364
    iput p1, p0, Lcom/mediatek/gemini/SimInfoPreference;->mStatus:I

    .line 365
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 366
    return-void
.end method
