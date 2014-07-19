.class Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;
.super Landroid/content/BroadcastReceiver;
.source "LaunchIconThemeResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;


# direct methods
.method constructor <init>(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    const-string v4, "LaunchIconThemeResource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.UPDATE_LOCAL_THEME"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    const-string v4, "jiayh2"

    const-string v5, "LaunchIconThemeResource onReceive android.intent.action.UPDATE_LOCAL_THEME"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v4, "Pkgs"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "pkgs":Ljava/lang/String;
    const-string v4, "themeid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "themeid":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 120
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$100(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 121
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$100(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 122
    .local v1, "conf":Landroid/content/res/Configuration;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/res/Configuration;->bchange_local_theme:Z

    .line 123
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$100(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 125
    .end local v1    # "conf":Landroid/content/res/Configuration;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResourceExtend:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$200(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 126
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResourceExtend:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$200(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 127
    .restart local v1    # "conf":Landroid/content/res/Configuration;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/res/Configuration;->bchange_local_theme:Z

    .line 128
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeResource$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeResource;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->mThemeResourceExtend:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeResource;->access$200(Lcom/lenovo/launchericontheme/LaunchIconThemeResource;)Landroid/content/res/Resources;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 130
    .end local v1    # "conf":Landroid/content/res/Configuration;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const-string v4, "jiayh2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LaunchIconThemeResource action=android.intent.action.UPDATE_LOCAL_THEME, Pkgs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", themeid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v2    # "pkgs":Ljava/lang/String;
    .end local v3    # "themeid":Ljava/lang/String;
    :cond_2
    return-void

    .line 130
    .restart local v2    # "pkgs":Ljava/lang/String;
    .restart local v3    # "themeid":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
