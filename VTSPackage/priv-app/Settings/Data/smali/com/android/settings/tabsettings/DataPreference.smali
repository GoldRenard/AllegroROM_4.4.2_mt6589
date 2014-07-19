.class Lcom/android/settings/tabsettings/DataPreference;
.super Landroid/preference/SwitchPreference;
.source "CommonSettings.java"


# instance fields
.field mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 592
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 593
    new-instance v0, Lcom/android/settings/dataconnection/DataEnabler;

    new-instance v1, Landroid/widget/Switch;

    invoke-direct {v1, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Lcom/android/settings/dataconnection/DataEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/DataPreference;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    .line 594
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 596
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 597
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 601
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 602
    const v2, 0x7f0b0011

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 604
    .local v0, "checkableView":Landroid/view/View;
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 605
    check-cast v1, Landroid/widget/Switch;

    .line 606
    .local v1, "switchView":Landroid/widget/Switch;
    iget-object v2, p0, Lcom/android/settings/tabsettings/DataPreference;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v2, v1}, Lcom/android/settings/dataconnection/DataEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 608
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/settings/tabsettings/DataPreference;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dataconnection/DataEnabler;->pause()V

    .line 616
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/settings/tabsettings/DataPreference;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dataconnection/DataEnabler;->resume()V

    .line 612
    return-void
.end method
