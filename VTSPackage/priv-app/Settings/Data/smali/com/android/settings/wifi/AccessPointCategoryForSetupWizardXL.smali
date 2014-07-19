.class public Lcom/android/settings/wifi/AccessPointCategoryForSetupWizardXL;
.super Lcom/android/settings/ProgressCategoryBase;
.source "AccessPointCategoryForSetupWizardXL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public setProgress(Z)V
    .locals 0
    .param p1, "progressOn"    # Z

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 34
    return-void
.end method
