.class Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;
.super Landroid/content/BroadcastReceiver;
.source "LaunchIconThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/launchericontheme/LaunchIconThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;


# direct methods
.method constructor <init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 71
    const-string v6, "LaunchIconThemeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive intent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 76
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "packageName":Ljava/lang/String;
    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 78
    .local v4, "replacing":Z
    const/4 v1, 0x0

    .line 79
    .local v1, "op":I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 118
    .end local v1    # "op":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "replacing":Z
    :cond_1
    :goto_0
    return-void

    .line 83
    .restart local v1    # "op":I
    .restart local v2    # "packageName":Ljava/lang/String;
    .restart local v4    # "replacing":Z
    :cond_2
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 84
    const/4 v1, 0x2

    .line 98
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 99
    iget-object v6, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    new-instance v7, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;

    iget-object v8, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    new-array v9, v10, [Ljava/lang/String;

    aput-object v2, v9, v11

    invoke-direct {v7, v8, v1, v9}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;I[Ljava/lang/String;)V

    # invokes: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->enqueuePackageUpdated(Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V
    invoke-static {v6, v7}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V

    goto :goto_0

    .line 85
    :cond_4
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 86
    if-nez v4, :cond_3

    .line 87
    const/4 v1, 0x3

    goto :goto_1

    .line 91
    :cond_5
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 92
    if-nez v4, :cond_6

    .line 93
    const/4 v1, 0x1

    goto :goto_1

    .line 95
    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    .line 103
    .end local v1    # "op":I
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "replacing":Z
    :cond_7
    const-string v6, "android.intent.action.UPDATE_LOCAL_THEME"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    const-string v6, "jiayh2"

    const-string v7, "LaunchIconThemeService onReceive android.intent.action.UPDATE_LOCAL_THEME"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v6, "Pkgs"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "pkgs":Ljava/lang/String;
    const-string v6, "themeid"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "themeid":Ljava/lang/String;
    const-string v6, "persist.sys.ideadesk_theme_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v6, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    new-instance v7, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;

    iget-object v8, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$1;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    const/4 v9, 0x5

    new-array v10, v10, [Ljava/lang/String;

    aput-object v3, v10, v11

    invoke-direct {v7, v8, v9, v10}, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;-><init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;I[Ljava/lang/String;)V

    # invokes: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->enqueuePackageUpdated(Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V
    invoke-static {v6, v7}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$000(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;)V

    .line 114
    const-string v6, "jiayh2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LaunchIconThemeService action=android.intent.action.UPDATE_LOCAL_THEME, Pkgs="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", themeid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
