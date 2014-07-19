.class Lcom/android/settings/tabsettings/CommonSettings$6;
.super Ljava/lang/Object;
.source "CommonSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/CommonSettings;->createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CommonSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CommonSettings;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/settings/tabsettings/CommonSettings$6;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings$6;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings$6;->this$0:Lcom/android/settings/tabsettings/CommonSettings;

    # getter for: Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/CommonSettings;->access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 406
    :cond_0
    return-void
.end method
