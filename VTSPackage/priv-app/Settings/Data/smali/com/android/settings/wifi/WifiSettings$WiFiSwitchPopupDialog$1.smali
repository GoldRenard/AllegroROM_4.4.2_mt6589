.class Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog$1;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->onLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog$1;->this$1:Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 366
    const-string v0, "WiFiSwitchPopupDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    packed-switch p3, :pswitch_data_0

    .line 379
    :goto_0
    return-void

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog$1;->this$1:Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;

    # setter for: Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->mCheckedItem:I
    invoke-static {v0, p3}, Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;->access$102(Lcom/android/settings/wifi/WifiSettings$WiFiSwitchPopupDialog;I)I

    goto :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
