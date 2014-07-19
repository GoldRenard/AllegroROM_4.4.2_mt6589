.class public Lcom/android/settings/Settings$SpellCheckersSettingsActivity;
.super Lcom/android/settings/tabsettings/OriginSettings;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellCheckersSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/android/settings/tabsettings/OriginSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigateUp()Z
    .locals 1

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 407
    const/4 v0, 0x1

    return v0
.end method
