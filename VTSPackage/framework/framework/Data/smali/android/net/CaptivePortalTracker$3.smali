.class Landroid/net/CaptivePortalTracker$3;
.super Ljava/lang/Object;
.source "CaptivePortalTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/CaptivePortalTracker;->showInvalidWLANDialog()V
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
    .line 1246
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$3;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1250
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1251
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$3;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1253
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$3;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->access$600(Landroid/net/CaptivePortalTracker;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1254
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$3;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v2, 0x0

    # setter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Landroid/net/CaptivePortalTracker;->access$602(Landroid/net/CaptivePortalTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1256
    return-void
.end method
