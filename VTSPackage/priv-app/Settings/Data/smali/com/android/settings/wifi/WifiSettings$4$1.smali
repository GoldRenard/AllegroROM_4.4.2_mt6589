.class Lcom/android/settings/wifi/WifiSettings$4$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiSettings$4;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings$4;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$4$1;->this$1:Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 612
    const v0, 0x7f0b03ba

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 613
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4$1;->this$1:Lcom/android/settings/wifi/WifiSettings$4;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$600(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 614
    const/4 v0, 0x1

    .line 616
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
