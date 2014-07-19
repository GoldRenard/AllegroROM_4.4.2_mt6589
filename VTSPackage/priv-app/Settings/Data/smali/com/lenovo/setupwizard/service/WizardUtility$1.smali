.class final Lcom/lenovo/setupwizard/service/WizardUtility$1;
.super Ljava/lang/Object;
.source "WizardUtility.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/service/WizardUtility;->uninstallApplication(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pkgManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 893
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/WizardUtility$1;->val$pkgManager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/lenovo/setupwizard/service/WizardUtility$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 896
    iget-object v0, p0, Lcom/lenovo/setupwizard/service/WizardUtility$1;->val$pkgManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/lenovo/setupwizard/service/WizardUtility$1;->val$packageName:Ljava/lang/String;

    new-instance v2, Lcom/lenovo/setupwizard/service/WizardUtility$1$1;

    invoke-direct {v2, p0}, Lcom/lenovo/setupwizard/service/WizardUtility$1$1;-><init>(Lcom/lenovo/setupwizard/service/WizardUtility$1;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 905
    return-void
.end method
