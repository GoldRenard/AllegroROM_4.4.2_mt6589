.class public Lcom/mediatek/gemini/simui/SimCardInfoPreference;
.super Landroid/preference/ListPreference;
.source "SimCardInfoPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimCardInfoPreference"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableWidget:Z

.field private mIndicator:I

.field private mIsChecked:Z

.field private mIsClickable:Z

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

.field protected mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

.field private mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIndicator:I

    .line 24
    new-instance v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    invoke-direct {v0}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    .line 25
    sget-object v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->None:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    iput-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 26
    iput-boolean v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIsChecked:Z

    .line 27
    iput-boolean v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIsClickable:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mEnableWidget:Z

    .line 41
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mContext:Landroid/content/Context;

    .line 42
    const v0, 0x7f0400d0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 43
    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;)V
    .locals 1
    .param p1, "type"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "type"    # Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "isAirPlaneOn"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;)V

    .line 69
    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mEnableWidget:Z

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enableWidget(Z)V
    .locals 0
    .param p1, "isEnable"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mEnableWidget:Z

    .line 179
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 180
    return-void
.end method

.method public getSimInfoId()J
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    return-wide v0
.end method

.method public getSimSlotId()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 136
    const-string v0, "SimCardInfoPreference"

    const-string v1, "onBindView"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    invoke-virtual {v0, p1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->initViewId(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimInfoView(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V

    .line 140
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIndicator:I

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setSimIndicatorIcon(I)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->setCustomWidget(Landroid/content/Context;Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;)V

    .line 142
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget-object v0, v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget-object v0, v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget-object v0, v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIsClickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 145
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget-object v0, v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    iget-boolean v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mEnableWidget:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfoUtil:Lcom/mediatek/gemini/simui/SimInfoViewUtil;

    iget-object v0, v0, Lcom/mediatek/gemini/simui/SimInfoViewUtil;->mSimCustView:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 151
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 152
    return-void
.end method

.method protected onClick()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mWidgetType:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    sget-object v2, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Dialog:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    if-eq v1, v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 188
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "isCheck"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIsChecked:Z

    .line 162
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->persistBoolean(Z)Z

    .line 163
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 164
    return-void
.end method

.method public setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listerner"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 80
    return-void
.end method

.method public setSimIndicator(I)V
    .locals 3
    .param p1, "indicator"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIndicator:I

    .line 112
    const-string v0, "SimCardInfoPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIndicator -- mIndicator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 114
    return-void
.end method

.method public setSimInfoProperty(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V
    .locals 3
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "indicator"    # I

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 91
    iput p2, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIndicator:I

    .line 92
    const-string v0, "SimCardInfoPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimIndicator -- mIndicator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIndicator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 94
    return-void
.end method

.method public setSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 0
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 104
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 105
    return-void
.end method

.method public setWidgetClickable(Z)V
    .locals 0
    .param p1, "isClickable"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->mIsClickable:Z

    .line 174
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 175
    return-void
.end method
