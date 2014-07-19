.class Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$2;
.super Ljava/lang/Object;
.source "SettingService.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader$PackageReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;->putSettingByType(Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/pack/SettingPackageFileReader;Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/po/SettingKey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

.field private final synthetic val$uriValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$2;->val$uriValue:Ljava/lang/String;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetInputStream(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/service/SettingService$2;->val$uriValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "os":Ljava/io/FileOutputStream;
    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 119
    return-void
.end method
