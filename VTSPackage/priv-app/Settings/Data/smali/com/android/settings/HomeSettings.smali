.class public Lcom/android/settings/HomeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/HomeSettings$HomeAppPreference;
    }
.end annotation


# static fields
.field public static final HOME_PREFS:Ljava/lang/String; = "home_prefs"

.field public static final HOME_PREFS_DO_SHOW:Ljava/lang/String; = "do_show"

.field public static final HOME_SHOW_NOTICE:Ljava/lang/String; = "show"

.field static final REQUESTING_UNINSTALL:I = 0xa

.field static final TAG:Ljava/lang/String; = "HomeSettings"


# instance fields
.field mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

.field mDeleteClickListener:Landroid/view/View$OnClickListener;

.field mHomeClickListener:Landroid/view/View$OnClickListener;

.field mHomeComponentSet:[Landroid/content/ComponentName;

.field final mHomeFilter:Landroid/content/IntentFilter;

.field mPm:Landroid/content/pm/PackageManager;

.field mPrefGroup:Landroid/preference/PreferenceGroup;

.field mPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/HomeSettings$HomeAppPreference;",
            ">;"
        }
    .end annotation
.end field

.field mShowNotice:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 72
    new-instance v0, Lcom/android/settings/HomeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HomeSettings$1;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeClickListener:Landroid/view/View$OnClickListener;

    .line 83
    new-instance v0, Lcom/android/settings/HomeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/HomeSettings$2;-><init>(Lcom/android/settings/HomeSettings;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    .line 68
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method buildHomeActivitiesList()V
    .locals 17

    .prologue
    .line 148
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v13, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v11

    .line 152
    .local v11, "currentDefaultHome":Landroid/content/ComponentName;
    const/4 v15, 0x0

    .line 154
    .local v15, "sysHome":Lcom/android/settings/HomeSettings$HomeAppPreference;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 155
    .local v3, "context":Landroid/content/Context;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    .line 159
    const/4 v5, 0x0

    .line 160
    .local v5, "prefIndex":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 161
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 162
    .local v10, "candidate":Landroid/content/pm/ResolveInfo;
    iget-object v9, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 163
    .local v9, "info":Landroid/content/pm/ActivityInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v2, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v9, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v4, "activityName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    aput-object v4, v2, v14

    .line 166
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 167
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v2}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 168
    .local v7, "name":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/settings/HomeSettings$HomeAppPreference;

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/HomeSettings$HomeAppPreference;-><init>(Lcom/android/settings/HomeSettings;Landroid/content/Context;Landroid/content/ComponentName;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/HomeSettings;Landroid/content/pm/ActivityInfo;)V

    .line 170
    .local v1, "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 172
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 173
    invoke-virtual {v4, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 178
    :cond_0
    if-nez v15, :cond_1

    iget-boolean v2, v1, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 179
    move-object v15, v1

    .line 182
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 160
    .end local v1    # "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "name":Ljava/lang/CharSequence;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 183
    :catch_0
    move-exception v12

    .line 184
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "HomeSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Problem dealing with activity "

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 189
    .end local v4    # "activityName":Landroid/content/ComponentName;
    .end local v9    # "info":Landroid/content/pm/ActivityInfo;
    .end local v10    # "candidate":Landroid/content/pm/ResolveInfo;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    if-nez v2, :cond_3

    .line 190
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 193
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    if-eqz v2, :cond_4

    .line 194
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/settings/HomeSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/settings/HomeSettings$3;-><init>(Lcom/android/settings/HomeSettings;)V

    invoke-virtual {v2, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    :cond_4
    return-void
.end method

.method makeCurrentHome(Lcom/android/settings/HomeSettings$HomeAppPreference;)V
    .locals 5
    .param p1, "newHome"    # Lcom/android/settings/HomeSettings$HomeAppPreference;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/HomeSettings$HomeAppPreference;->setChecked(Z)V

    .line 96
    iput-object p1, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 98
    iget-object v0, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/HomeSettings;->mHomeFilter:Landroid/content/IntentFilter;

    const/high16 v2, 0x100000

    iget-object v3, p0, Lcom/android/settings/HomeSettings;->mHomeComponentSet:[Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/settings/HomeSettings$HomeAppPreference;->activityName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->buildHomeActivitiesList()V

    .line 119
    const/16 v2, 0xa

    if-le p1, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mCurrentHome:Lcom/android/settings/HomeSettings$HomeAppPreference;

    if-nez v2, :cond_0

    .line 125
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/HomeSettings$HomeAppPreference;

    .line 127
    .local v1, "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    iget-boolean v2, v1, Lcom/android/settings/HomeSettings$HomeAppPreference;->isSystem:Z

    if-eqz v2, :cond_3

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/settings/HomeSettings;->makeCurrentHome(Lcom/android/settings/HomeSettings$HomeAppPreference;)V

    .line 138
    .end local v0    # "i":I
    .end local v1    # "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/HomeSettings;->mPrefs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    .line 139
    iget-boolean v2, p0, Lcom/android/settings/HomeSettings;->mShowNotice:Z

    if-eqz v2, :cond_1

    .line 140
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/HomeSettings;->mShowNotice:Z

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    .line 145
    :cond_2
    return-void

    .line 125
    .restart local v0    # "i":I
    .restart local v1    # "pref":Lcom/android/settings/HomeSettings$HomeAppPreference;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 204
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 205
    const v1, 0x7f060021

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 208
    const-string v1, "home"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/settings/HomeSettings;->mPrefGroup:Landroid/preference/PreferenceGroup;

    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 211
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "show"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/HomeSettings;->mShowNotice:Z

    .line 212
    return-void

    :cond_0
    move v1, v2

    .line 211
    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/HomeSettings;->buildHomeActivitiesList()V

    .line 218
    return-void
.end method

.method uninstallApp(Lcom/android/settings/HomeSettings$HomeAppPreference;)V
    .locals 6
    .param p1, "pref"    # Lcom/android/settings/HomeSettings$HomeAppPreference;

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/settings/HomeSettings$HomeAppPreference;->uninstallTarget:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    .local v2, "uninstallIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 107
    iget-boolean v4, p1, Lcom/android/settings/HomeSettings$HomeAppPreference;->isChecked:Z

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v1, v3, 0xa

    .line 108
    .local v1, "requestCode":I
    invoke-virtual {p0, v2, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 109
    return-void
.end method
