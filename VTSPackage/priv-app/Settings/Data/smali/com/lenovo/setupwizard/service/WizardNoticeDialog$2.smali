.class Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;
.super Ljava/lang/Object;
.source "WizardNoticeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    # getter for: Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->access$100(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkbox enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    # getter for: Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v6}, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->access$000(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)Landroid/widget/CheckBox;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    # getter for: Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->mCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->access$000(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    const-string v2, "yes,shixl2"

    .line 74
    .local v2, "mString":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    const-string v5, "first_boot"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 76
    .local v3, "prefernece":Landroid/content/SharedPreferences;
    const-string v4, "notice"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "bFirst":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "notice"

    const-string v5, "oye,change~"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    .end local v0    # "bFirst":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "mString":Ljava/lang/String;
    .end local v3    # "prefernece":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    # getter for: Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/setupwizard/service/WizardNoticeDialog;->access$100(Lcom/lenovo/setupwizard/service/WizardNoticeDialog;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "finish()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/WizardNoticeDialog$2;->this$0:Lcom/lenovo/setupwizard/service/WizardNoticeDialog;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
.end method
