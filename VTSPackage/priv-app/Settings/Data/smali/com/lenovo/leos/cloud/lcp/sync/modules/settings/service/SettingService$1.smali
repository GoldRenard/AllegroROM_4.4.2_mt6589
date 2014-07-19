.class Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$1;
.super Ljava/lang/Object;
.source "SettingService.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->putWallpaper(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetInputStream(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->setWallpaper(Ljava/io/InputStream;)V

    .line 72
    return-void
.end method
