.class public Lcom/android/settings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# static fields
.field private static final AUDIOPROFILE:Ljava/lang/String; = "com.android.settings.Settings$AudioProfileSettingsActivity"

.field private static final DREAM_SETTINGS:Ljava/lang/String; = "com.android.settings.Settings$DreamSettingsActivity"

.field private static final SOUND:Ljava/lang/String; = "com.android.settings.Settings$SoundSettingsActivity"

.field private static final TAG:Ljava/lang/String; = "CreateShortcut"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 45
    .local v0, "targetIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    return-object v0
.end method

.method public makeListItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/LauncherActivity$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-super {p0}, Landroid/app/LauncherActivity;->makeListItems()Ljava/util/List;

    move-result-object v1

    .line 67
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/LauncherActivity$ListItem;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 69
    .local v2, "listSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 70
    const-string v4, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    const-string v3, "CreateShortcut"

    const-string v4, "Not support google sound ,remove it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 88
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 89
    const-string v4, "com.android.settings.Settings$DreamSettingsActivity"

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/LauncherActivity$ListItem;

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->className:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    const-string v3, "CreateShortcut"

    const-string v4, "Not support dream settings, remove it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    :cond_1
    return-object v1

    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 52
    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, "shortcutIntent":Landroid/content/Intent;
    const/high16 v2, 0x200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v3, 0x7f030001

    invoke-static {p0, v3}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 57
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Landroid/app/LauncherActivity;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v3

    iget-object v3, v3, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 59
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .line 112
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 121
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-object v0

    .line 113
    .restart local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    const-class v4, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->showInShortcuts(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 117
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 113
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
