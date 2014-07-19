.class public Lcom/mediatek/gemini/ColorPickerPreference;
.super Landroid/preference/DialogPreference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COLORID:[I

.field private static final COLOR_SIZE:I = 0x8

.field private static final SIM_COLOR:[I

.field private static final TAG:Ljava/lang/String; = "ColorPicker"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentSelected:I

.field private final mCurrentUsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInitValue:I

.field private mSimID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/gemini/ColorPickerPreference;->SIM_COLOR:[I

    return-void

    .line 34
    :array_0
    .array-data 4
        0x7f0b004d
        0x7f0b004e
        0x7f0b004f
        0x7f0b0050
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x7f0d0021
        0x7f0d0022
        0x7f0d0023
        0x7f0d0024
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 29
    iput v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mSimID:J

    .line 51
    iput-object p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f040097

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 53
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setDialogLayoutResource(I)V

    .line 54
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Landroid/preference/DialogPreference;->setNegativeButtonText(I)V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentUsed:Ljava/util/List;

    .line 56
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 149
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 151
    const v3, 0x1020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    .local v1, "textSummary":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 155
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_0
    const v3, 0x7f0b0204

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 161
    .local v0, "bgColor":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 162
    iget-object v3, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget-object v4, Lcom/mediatek/gemini/ColorPickerPreference;->SIM_COLOR:[I

    iget v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 166
    .end local v0    # "bgColor":Landroid/widget/ImageView;
    .end local v1    # "textSummary":Landroid/widget/TextView;
    :cond_1
    return-object v2
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 72
    iget-object v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 74
    .local v4, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v4, :cond_0

    .line 75
    const-string v5, "ColorPicker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current used ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v5, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    iget v6, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v5, v5, v6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 78
    .local v1, "iconView":Landroid/widget/ImageView;
    iget-wide v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mSimID:J

    iget-wide v7, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 79
    iget v5, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iput v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 80
    iget v5, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iput v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    .line 81
    const v5, 0x7f02002c

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentUsed:Ljava/util/List;

    iget v6, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget v5, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    iget v6, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    if-eq v5, v6, :cond_0

    .line 85
    const v5, 0x7f02002d

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 90
    .end local v1    # "iconView":Landroid/widget/ImageView;
    .end local v4    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    sget-object v5, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 91
    sget-object v5, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    aget v5, v5, v2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 92
    .restart local v1    # "iconView":Landroid/widget/ImageView;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v1    # "iconView":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 111
    .local v1, "viewId":I
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 113
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    sget-object v2, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 115
    sget-object v2, Lcom/mediatek/gemini/ColorPickerPreference;->COLORID:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_0

    .line 116
    iput v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 117
    const-string v2, "ColorPicker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentSelected is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 123
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 126
    .end local v0    # "k":I
    :cond_2
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 132
    const-string v0, "ColorPicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positiveResult is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurrentSelected is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mInitValue is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    iget v1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    if-eq v0, v1, :cond_0

    .line 138
    iget v0, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {p1, v1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 103
    return-void
.end method

.method public setInitValue(I)V
    .locals 0
    .param p1, "colorIndex"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mCurrentSelected:I

    .line 177
    iput p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mInitValue:I

    .line 178
    return-void
.end method

.method public setSimID(J)V
    .locals 0
    .param p1, "simID"    # J

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/mediatek/gemini/ColorPickerPreference;->mSimID:J

    .line 66
    return-void
.end method
