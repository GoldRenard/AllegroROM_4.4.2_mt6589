.class Lcom/lenovo/systemtheme/SystemThemeService$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/systemtheme/SystemThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/systemtheme/SystemThemeService;


# direct methods
.method constructor <init>(Lcom/lenovo/systemtheme/SystemThemeService;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "action":Ljava/lang/String;
    const-string v2, "action_themecenter_themechange_systemwidget"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 75
    const-string v2, "theme_packagename"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "SystemThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: ACTION_SYSTEM_WIDGET packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    # getter for: Lcom/lenovo/systemtheme/SystemThemeService;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/lenovo/systemtheme/SystemThemeService;->access$100(Lcom/lenovo/systemtheme/SystemThemeService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/lenovo/systemtheme/SystemThemeService$1$1;

    invoke-direct {v3, p0, v1}, Lcom/lenovo/systemtheme/SystemThemeService$1$1;-><init>(Lcom/lenovo/systemtheme/SystemThemeService$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 104
    .restart local v1    # "packageName":Ljava/lang/String;
    const-string v2, "SystemThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: ACTION_PACKAGE_REMOVED packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    # getter for: Lcom/lenovo/systemtheme/SystemThemeService;->mThemePackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/systemtheme/SystemThemeService;->access$200(Lcom/lenovo/systemtheme/SystemThemeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, "SystemThemeService"

    const-string v3, "onReceive : System Theme is removed, reset to defalut"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    const-string v3, "lenovo"

    invoke-virtual {v2, v3}, Lcom/lenovo/systemtheme/SystemThemeService;->setSystemTheme(Ljava/lang/String;)Z

    goto :goto_0
.end method
