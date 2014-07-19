.class Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$1;
.super Ljava/lang/Object;
.source "LicenseAgreementDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->findItemView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$1;->this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$1;->this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    # getter for: Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->access$000(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$1;->this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    # getter for: Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->access$000(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 163
    const-string v2, "yes,lincl1"

    .line 164
    .local v2, "mString":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog$1;->this$0:Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    # getter for: Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->access$100(Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "first_boot"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 166
    .local v3, "searchConfig":Landroid/content/SharedPreferences;
    const-string v4, "first"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "bFirst":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 169
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "first"

    const-string v5, "oye,change~"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    .end local v0    # "bFirst":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "mString":Ljava/lang/String;
    .end local v3    # "searchConfig":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method
