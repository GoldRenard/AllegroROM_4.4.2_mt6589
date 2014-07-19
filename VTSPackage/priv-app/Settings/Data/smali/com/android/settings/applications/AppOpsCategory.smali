.class public Lcom/android/settings/applications/AppOpsCategory;
.super Landroid/app/ListFragment;
.source "AppOpsCategory.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;,
        Lcom/android/settings/applications/AppOpsCategory$AppListLoader;,
        Lcom/android/settings/applications/AppOpsCategory$PackageIntentReceiver;,
        Lcom/android/settings/applications/AppOpsCategory$InterestingConfigChanges;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final RESULT_APP_DETAILS:I = 0x1


# instance fields
.field mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

.field mCurrentPkgName:Ljava/lang/String;

.field mState:Lcom/android/settings/applications/AppOpsState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V
    .locals 2
    .param p1, "template"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "template"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 348
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 349
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "package"

    iget-object v3, p0, Lcom/android/settings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 352
    .local v0, "pa":Landroid/preference/PreferenceActivity;
    const-class v1, Lcom/android/settings/applications/AppOpsDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09087e

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 354
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 324
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 329
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09084e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 335
    new-instance v0, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    .line 336
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    invoke-virtual {p0, v3}, Landroid/app/ListFragment;->setListShown(Z)V

    .line 342
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 343
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 320
    new-instance v0, Lcom/android/settings/applications/AppOpsState;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppOpsState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    .line 321
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 5
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 366
    .local v0, "fargs":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 367
    .local v1, "template":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    if-eqz v0, :cond_0

    .line 368
    const-string v2, "template"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "template":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    check-cast v1, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 370
    .restart local v1    # "template":Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    :cond_0
    new-instance v2, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/AppOpsCategory;->mState:Lcom/android/settings/applications/AppOpsState;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListLoader;-><init>(Landroid/content/Context;Lcom/android/settings/applications/AppOpsState;Lcom/android/settings/applications/AppOpsState$OpsTemplate;)V

    return-object v2
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->getItem(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 358
    .local v0, "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/AppOpsCategory;->mCurrentPkgName:Ljava/lang/String;

    .line 360
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsCategory;->startApplicationDetailsActivity()V

    .line 362
    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/AppOpsCategory;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    const/4 v1, 0x1

    .line 375
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 378
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListShown(Z)V

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListShownNoAnimation(Z)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;>;"
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsCategory;->mAdapter:Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsCategory$AppListAdapter;->setData(Ljava/util/List;)V

    .line 388
    return-void
.end method
