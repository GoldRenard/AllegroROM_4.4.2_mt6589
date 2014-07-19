.class public Lcom/android/settings/wifi/WifiAPMorePreference;
.super Lcom/android/settings/wifi/AccessPoint;
.source "WifiAPMorePreference.java"


# static fields
.field private static mConfig:Landroid/net/wifi/WifiConfiguration;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mIdeaUI_HookPreference:Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiAPMorePreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/android/settings/wifi/WifiAPMorePreference;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 20
    const-string v0, "WifiMorePreference"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->TAG:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;

    invoke-direct {v0, p0}, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;-><init>(Landroid/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIdeaUI_HookPreference:Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;

    .line 32
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Landroid/preference/Preference;)I
    .locals 1
    .param p1, "x0"    # Landroid/preference/Preference;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getLevel()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getSecurityString(Z)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPMorePreference;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpenApWPSSupported()Z
    .locals 1

    .prologue
    .line 18
    invoke-super {p0}, Lcom/android/settings/wifi/AccessPoint;->isOpenApWPSSupported()Z

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    const v2, 0x7f0b030a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 64
    .local v1, "textView":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPMorePreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    const v2, 0x7f0b0309

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 69
    .local v0, "mImageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_3

    .line 70
    iget v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIconResId:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 71
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    .line 72
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIconResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 75
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIdeaUI_HookPreference:Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;

    if-eqz v2, :cond_4

    .line 80
    iget-object v2, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIdeaUI_HookPreference:Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;

    invoke-virtual {v2, p1}, Lcom/lenovo/ideaui/hook/IdeaUI_HookPreference;->onBindView(Landroid/view/View;)V

    .line 81
    :cond_4
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    .local v0, "layout":Landroid/view/LayoutInflater;
    const v1, 0x7f0400f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic saveWifiState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIconResId:I

    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIconResId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPMorePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 50
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 51
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 53
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAPMorePreference;->setTitle(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPMorePreference;->mTitle:Ljava/lang/String;

    .line 43
    :cond_0
    return-void
.end method
