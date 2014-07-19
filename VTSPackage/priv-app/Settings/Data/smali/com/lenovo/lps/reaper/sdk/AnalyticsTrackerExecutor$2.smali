.class Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;
.super Ljava/lang/Object;
.source "AnalyticsTrackerExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addTrackInstalledAppTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

.field final synthetic val$includeSystemApp:Z


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Z)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    iput-boolean p2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;->val$includeSystemApp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    # getter for: Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->access$100(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v12

    .line 386
    .local v12, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 388
    .local v10, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    # invokes: Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->combinePermissions(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->access$200(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, "permissionString":Ljava/lang/String;
    const/4 v11, 0x1

    .line 390
    .local v11, "isSystemApp":Z
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_2

    .line 391
    const/4 v11, 0x0

    .line 396
    :cond_1
    :goto_1
    new-instance v13, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v13}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 397
    .local v13, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    if-eqz v11, :cond_3

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;->val$includeSystemApp:Z

    if-eqz v0, :cond_3

    .line 398
    const/4 v0, 0x1

    const-string v1, "appVersionCode"

    iget v2, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 399
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    const-string v1, "__APPINFO__"

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 408
    .end local v3    # "permissionString":Ljava/lang/String;
    .end local v11    # "isSystemApp":Z
    .end local v13    # "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    :catch_0
    move-exception v8

    .line 409
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "AnalyticsTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackApp is Error. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "permissionString":Ljava/lang/String;
    .restart local v11    # "isSystemApp":Z
    :cond_2
    :try_start_1
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 393
    const/4 v11, 0x0

    goto :goto_1

    .line 403
    .restart local v13    # "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    :cond_3
    if-nez v11, :cond_0

    .line 404
    const/4 v0, 0x1

    const-string v1, "appVersionCode"

    iget v2, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 405
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    const-string v1, "__APPINFO__"

    iget-object v2, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-wide/high16 v4, 0x3ff0000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 412
    .end local v3    # "permissionString":Ljava/lang/String;
    .end local v10    # "info":Landroid/content/pm/PackageInfo;
    .end local v11    # "isSystemApp":Z
    .end local v13    # "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    :cond_4
    return-void
.end method
