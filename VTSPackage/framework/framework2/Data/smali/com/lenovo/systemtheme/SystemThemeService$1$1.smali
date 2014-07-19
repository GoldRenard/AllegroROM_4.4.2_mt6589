.class Lcom/lenovo/systemtheme/SystemThemeService$1$1;
.super Ljava/lang/Object;
.source "SystemThemeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/systemtheme/SystemThemeService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/systemtheme/SystemThemeService$1;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/systemtheme/SystemThemeService$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lenovo/systemtheme/SystemThemeService$1$1;->this$1:Lcom/lenovo/systemtheme/SystemThemeService$1;

    iput-object p2, p0, Lcom/lenovo/systemtheme/SystemThemeService$1$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService$1$1;->this$1:Lcom/lenovo/systemtheme/SystemThemeService$1;

    iget-object v2, v2, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    iget-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeService$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/lenovo/systemtheme/SystemThemeService;->setSystemTheme(Ljava/lang/String;)Z

    move-result v0

    .line 89
    .local v0, "result":Z
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.systemwidgettheme.appling"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "resultIntent":Landroid/content/Intent;
    const-string v2, "theme_value"

    iget-object v3, p0, Lcom/lenovo/systemtheme/SystemThemeService$1$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "theme_change_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    const-string v2, "SystemThemeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v2, p0, Lcom/lenovo/systemtheme/SystemThemeService$1$1;->this$1:Lcom/lenovo/systemtheme/SystemThemeService$1;

    iget-object v2, v2, Lcom/lenovo/systemtheme/SystemThemeService$1;->this$0:Lcom/lenovo/systemtheme/SystemThemeService;

    # getter for: Lcom/lenovo/systemtheme/SystemThemeService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/systemtheme/SystemThemeService;->access$000(Lcom/lenovo/systemtheme/SystemThemeService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 97
    return-void
.end method
