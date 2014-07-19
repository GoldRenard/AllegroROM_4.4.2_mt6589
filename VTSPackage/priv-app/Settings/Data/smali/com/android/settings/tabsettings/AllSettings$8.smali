.class Lcom/android/settings/tabsettings/AllSettings$8;
.super Ljava/lang/Object;
.source "AllSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/AllSettings;->createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/AllSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/AllSettings;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/android/settings/tabsettings/AllSettings$8;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$8;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    # getter for: Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/AllSettings;->access$100(Lcom/android/settings/tabsettings/AllSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/android/settings/tabsettings/AllSettings$8;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    # getter for: Lcom/android/settings/tabsettings/AllSettings;->mSwitchDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/tabsettings/AllSettings;->access$100(Lcom/android/settings/tabsettings/AllSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 1485
    :cond_0
    return-void
.end method
