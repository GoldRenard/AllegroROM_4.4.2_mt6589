.class public Lcom/mediatek/settings/ext/DefaultDateTimeSettingsExt;
.super Ljava/lang/Object;
.source "DefaultDateTimeSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IDateTimeSettingsExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeDateTimePreferenceStatus(Landroid/content/Context;Landroid/preference/ListPreference;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listPreference"    # Landroid/preference/ListPreference;
    .param p3, "checkBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 15
    return-void
.end method

.method public customizePreferenceScreen(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pref"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 19
    return-void
.end method
