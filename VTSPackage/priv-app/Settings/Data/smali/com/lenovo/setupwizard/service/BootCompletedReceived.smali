.class public Lcom/lenovo/setupwizard/service/BootCompletedReceived;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceived.java"


# static fields
.field public static final ROW_PRODUCT:Z

.field public static gtalk_init:Z

.field public static sim_ready:Z

.field public static wizard_launch:Z


# instance fields
.field TAG:Ljava/lang/String;

.field final action:Ljava/lang/String;

.field final category:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    const-string v0, "row"

    const-string v1, "ro.lenovo.region"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->ROW_PRODUCT:Z

    .line 29
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->gtalk_init:Z

    .line 30
    sput-boolean v2, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->sim_ready:Z

    .line 31
    sput-boolean v2, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->wizard_launch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    const-string v0, "lenovo_wizard"

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "android.intent.action.MAIN"

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->action:Ljava/lang/String;

    .line 35
    const-string v0, "android.intent.category.HOME"

    iput-object v0, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->category:Ljava/lang/String;

    return-void
.end method

.method private launchSetupWizard(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    sget-boolean v0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->wizard_launch:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->wizard_launch:Z

    .line 93
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/setupwizard/service/BootCompletedReceived$1;-><init>(Lcom/lenovo/setupwizard/service/BootCompletedReceived;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    const-string v1, "setup wizard is launching, ignore other request....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 38
    sget-boolean v4, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->ROW_PRODUCT:Z

    if-nez v4, :cond_1

    .line 39
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    const-string v5, "not row product, disable BootCompletedReceived receiver"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const-class v4, Lcom/lenovo/setupwizard/service/BootCompletedReceived;

    invoke-static {p1, v4}, Lcom/lenovo/setupwizard/service/WizardUtility;->disableComponent(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-boolean v4, Lcom/android/settings/CryptKeeper;->m_cryptIsRunning:Z

    if-ne v4, v7, :cond_2

    .line 46
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    const-string v5, "m_cryptIsRunning: true"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "intent_action":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    invoke-static {p1}, Lcom/lenovo/setupwizard/service/WizardUtility;->getInstance(Landroid/content/Context;)Lcom/lenovo/setupwizard/service/WizardUtility;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/setupwizard/service/WizardUtility;->action_BOOT_COMPLETED()V

    goto :goto_0

    .line 58
    :cond_3
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 60
    invoke-static {p1}, Lcom/lenovo/setupwizard/service/WizardUtility;->getInstance(Landroid/content/Context;)Lcom/lenovo/setupwizard/service/WizardUtility;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/setupwizard/service/WizardUtility;->action_LOCALE_CHANGED()V

    goto :goto_0

    .line 69
    :cond_4
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    const-string v2, "yes,lincl1"

    .line 72
    .local v2, "mString":Ljava/lang/String;
    const-string v4, "first_boot"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 74
    .local v3, "searchConfig":Landroid/content/SharedPreferences;
    const-string v4, "first"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "bFirst":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 76
    invoke-static {p1}, Lcom/lenovo/setupwizard/service/WizardUtility;->isSimReady(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    sput-boolean v7, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->sim_ready:Z

    .line 78
    sget-boolean v4, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->gtalk_init:Z

    if-eqz v4, :cond_5

    .line 79
    invoke-direct {p0, p1}, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->launchSetupWizard(Landroid/content/Context;)V

    goto :goto_0

    .line 81
    :cond_5
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    const-string v5, "gtalk haven\'t been initialized, waiting......"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_6
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->TAG:Ljava/lang/String;

    const-string v5, "setup wizard has been finished before, ignore....."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
