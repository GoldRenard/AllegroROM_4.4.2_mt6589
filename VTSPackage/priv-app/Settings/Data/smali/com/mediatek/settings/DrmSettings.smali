.class public Lcom/mediatek/settings/DrmSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DrmSettings.java"


# static fields
.field private static final DIALOG_RESET:I = 0x3e8

.field private static final DRM_RESET:Ljava/lang/String; = "drm_settings"

.field private static final TAG:Ljava/lang/String; = "DrmSettings"

.field private static sClient:Lcom/mediatek/drm/OmaDrmClient;

.field private static sPreferenceReset:Landroid/preference/Preference;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mediatek/drm/OmaDrmClient;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmClient;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 50
    sput-object p0, Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/DrmSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/DrmSettings;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Landroid/preference/Preference;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/mediatek/settings/DrmSettings;->sPreferenceReset:Landroid/preference/Preference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f06001d

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 64
    const-string v0, "drm_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/DrmSettings;->sPreferenceReset:Landroid/preference/Preference;

    .line 65
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    iget-object v1, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 67
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/settings/DrmSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 102
    :goto_0
    return-object v1

    .line 75
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 77
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 79
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 80
    const v2, 0x104000a

    new-instance v3, Lcom/mediatek/settings/DrmSettings$1;

    invoke-direct {v3, p0}, Lcom/mediatek/settings/DrmSettings$1;-><init>(Lcom/mediatek/settings/DrmSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 98
    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 100
    .local v1, "dialog":Landroid/app/AlertDialog;
    goto :goto_0

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/settings/DrmSettings;->sClient:Lcom/mediatek/drm/OmaDrmClient;

    .line 119
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 109
    sget-object v0, Lcom/mediatek/settings/DrmSettings;->sPreferenceReset:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 110
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 112
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
