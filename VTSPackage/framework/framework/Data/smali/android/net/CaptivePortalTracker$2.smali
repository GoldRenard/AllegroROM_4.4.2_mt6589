.class Landroid/net/CaptivePortalTracker$2;
.super Ljava/lang/Object;
.source "CaptivePortalTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/CaptivePortalTracker;->showCaptivePortalDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1143
    const/4 v4, 0x0

    .line 1147
    .local v4, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1149
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 1151
    const-string v5, "com.lenovo.browser"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1153
    const-string v5, "com.lenovo.browser"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1155
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget-boolean v5, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_2

    .line 1157
    const-string v4, "com.lenovo.browser"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    iget-object v6, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/CaptivePortalTracker;->access$3600(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1170
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 1172
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    :cond_1
    const/high16 v5, 0x10400000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1177
    :try_start_1
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1183
    :goto_1
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Landroid/net/CaptivePortalTracker;->access$600(Landroid/net/CaptivePortalTracker;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1184
    iget-object v5, p0, Landroid/net/CaptivePortalTracker$2;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v6, 0x0

    # setter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v6}, Landroid/net/CaptivePortalTracker;->access$602(Landroid/net/CaptivePortalTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1186
    return-void

    .line 1159
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2
    if-eqz v0, :cond_0

    .line 1161
    :try_start_2
    const-string v5, "CaptivePortalTracker"

    const-string v6, "Lenovo Browser is DISABLED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1164
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 1166
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "CaptivePortalTracker"

    const-string v6, "Lenovo Browser NOT exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const/4 v4, 0x0

    goto :goto_0

    .line 1178
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v1

    .line 1180
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CaptivePortalTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start activity fail, error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
