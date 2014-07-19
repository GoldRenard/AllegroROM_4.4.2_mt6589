.class Lcom/mediatek/nfc/CardEmulationProgressCategory;
.super Landroid/preference/PreferenceCategory;
.source "CardEmulationSettings.java"


# instance fields
.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 325
    invoke-direct {p0, p1, p2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    .line 326
    const v0, 0x7f0400a7

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 327
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 332
    const v1, 0x7f0b0216

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "progressBar":Landroid/view/View;
    iget-boolean v1, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    return-void

    .line 333
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    .line 338
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 339
    return-void
.end method
