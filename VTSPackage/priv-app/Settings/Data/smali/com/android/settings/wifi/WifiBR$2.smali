.class Lcom/android/settings/wifi/WifiBR$2;
.super Ljava/lang/Object;
.source "WifiBR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiBR;->restoreWifi()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiBR;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiBR;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/settings/wifi/WifiBR$2;->this$0:Lcom/android/settings/wifi/WifiBR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBR$2;->this$0:Lcom/android/settings/wifi/WifiBR;

    const-string v1, "wifi_config_backup"

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/BaseBR;->downloadFile(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBR$2;->this$0:Lcom/android/settings/wifi/WifiBR;

    const-string v1, "/data/data/com.android.settings/wpa_supplicant.conf"

    const-string v2, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/BaseBR;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 43
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 44
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBR$2;->this$0:Lcom/android/settings/wifi/WifiBR;

    iget-object v0, v0, Lcom/android/settings/wifi/BaseBR;->m_context:Landroid/content/Context;

    const v1, 0x7f090180

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 50
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBR$2;->this$0:Lcom/android/settings/wifi/WifiBR;

    iget-object v0, v0, Lcom/android/settings/wifi/BaseBR;->m_context:Landroid/content/Context;

    const v1, 0x7f090181

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 51
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0
.end method
