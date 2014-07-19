.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;
.super Ljava/lang/Object;
.source "AppPackageFileReaderV2.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->readAppList(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

.field private final synthetic val$appInfos:Ljava/util/List;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;->val$appInfos:Ljava/util/List;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadEntry(Ljava/lang/String;)V
    .locals 12
    .param p1, "entryContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v10, "data"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 63
    .local v6, "json":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v5, v9, :cond_0

    .line 88
    return-void

    .line 64
    :cond_0
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 65
    .local v2, "appJson":Lorg/json/JSONObject;
    const-string v9, "package_name"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, "packageName":Ljava/lang/String;
    const-string v9, "version_code"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 67
    .local v8, "versionCode":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->getAppDir()Ljava/io/File;
    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;)Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .local v0, "apk":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    if-eqz v9, :cond_1

    .line 70
    :try_start_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v9, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;-><init>(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 73
    .local v1, "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    :try_start_2
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/APKUtil;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->setResources(Landroid/content/res/Resources;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 77
    :goto_1
    :try_start_3
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2$1;->val$appInfos:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    .end local v1    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    .restart local v1    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    :catch_0
    move-exception v3

    .line 75
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "AppPackageFileReaderV2"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 78
    .end local v1    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 79
    .local v3, "e":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;
    :try_start_4
    const-string v9, "AppPackageFileReaderV2"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 83
    .end local v0    # "apk":Ljava/io/File;
    .end local v2    # "appJson":Lorg/json/JSONObject;
    .end local v3    # "e":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;
    .end local v5    # "i":I
    .end local v6    # "json":Lorg/json/JSONArray;
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "versionCode":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 84
    .local v4, "e1":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v9
.end method
