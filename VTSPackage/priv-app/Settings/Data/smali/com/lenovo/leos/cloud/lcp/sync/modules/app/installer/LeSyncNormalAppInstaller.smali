.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;
.super Ljava/lang/Object;
.source "LeSyncNormalAppInstaller.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;


# static fields
.field public static final APP_INSTALL_RESULT:I = 0xa


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;->context:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private doInstallByNormal(Ljava/lang/String;)V
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 25
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string v2, "apk_from"

    const-string v3, "com.lenovo.appstore"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;->context:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 33
    .local v0, "a":Landroid/app/Activity;
    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 37
    .end local v0    # "a":Landroid/app/Activity;
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;->doInstallByNormal(Ljava/lang/String;)V

    .line 21
    const/16 v0, -0x3e7

    return v0
.end method
