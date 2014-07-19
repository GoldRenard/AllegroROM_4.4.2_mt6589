.class Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;
.super Ljava/lang/Object;
.source "BootCompletedReceived.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/service/BootCompletedReceived;->launchSetupWizard(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/service/BootCompletedReceived;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/service/BootCompletedReceived;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->this$0:Lcom/lenovo/setupwizard/service/BootCompletedReceived;

    iput-object p2, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->this$0:Lcom/lenovo/setupwizard/service/BootCompletedReceived;

    iget-object v1, v1, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    const-string v2, "launch activity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/setupwizard/service/WizardUtility;->setLocaleFromSimIfNeeded(Landroid/content/Context;)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/setupwizard/service/WizardUtility;->getInstance(Landroid/content/Context;)Lcom/lenovo/setupwizard/service/WizardUtility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/setupwizard/service/WizardUtility;->UpdateConfigurationBySim()V

    .line 105
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->val$context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.phone.SET_VM_CF"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/lenovo/setupwizard/DefaultActivity;

    invoke-static {v1, v2}, Lcom/lenovo/setupwizard/service/WizardUtility;->enableComponent(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->val$context:Landroid/content/Context;

    const-class v2, Lcom/lenovo/setupwizard/DefaultActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
