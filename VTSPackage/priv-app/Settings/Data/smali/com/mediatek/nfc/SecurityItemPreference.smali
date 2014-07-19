.class Lcom/mediatek/nfc/SecurityItemPreference;
.super Landroid/preference/Preference;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SecurityItemPreference"


# instance fields
.field private mChecked:Z

.field private mPreferenceButton:Landroid/widget/RadioButton;

.field private mPreferenceTitle:Landroid/widget/TextView;

.field private mTitleValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 351
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 345
    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 346
    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 347
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 352
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 353
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 358
    const v0, 0x7f0b003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    .line 359
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const v0, 0x7f0b003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    .line 361
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 363
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/mediatek/nfc/SecurityItemPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 380
    .local v0, "newValue":Z
    :goto_0
    if-nez v0, :cond_2

    .line 381
    const-string v1, "SecurityItemPreference"

    const-string v2, "button.onClick return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_0
    :goto_1
    return-void

    .line 378
    .end local v0    # "newValue":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 385
    .restart local v0    # "newValue":Z
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    .line 387
    const-string v1, "SecurityItemPreference"

    const-string v2, "button.onClick"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setChecked(Z)Z
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    const/4 v0, 0x0

    .line 396
    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_1

    .line 397
    const-string v1, "SecurityItemPreference"

    const-string v2, "setChecked return"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 402
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    if-eq v1, p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 404
    iput-boolean p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mChecked:Z

    .line 405
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 368
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    iput-object p1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    .line 372
    iget-object v0, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mPreferenceTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/nfc/SecurityItemPreference;->mTitleValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    :cond_1
    return-void
.end method
