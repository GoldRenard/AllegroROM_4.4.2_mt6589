.class Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader$1;
.super Ljava/lang/Object;
.source "MmsPackageFileReader.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->readMmsList(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

.field private final synthetic val$infos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader$1;->val$infos:Ljava/util/List;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildREquestMmsForJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .locals 3
    .param p1, "result"    # Lorg/json/JSONObject;

    .prologue
    .line 68
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;-><init>()V

    .line 69
    .local v0, "mmsEntity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    const-string v1, "address"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->address:Ljava/lang/String;

    .line 70
    const-string v1, "date"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->date:J

    .line 71
    const-string v1, "read"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->read:I

    .line 72
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->type:I

    .line 73
    const-string v1, "subject"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->subject:Ljava/lang/String;

    .line 74
    const-string v1, "service_center"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->serviceCenter:Ljava/lang/String;

    .line 75
    const-string v1, "locked"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->locked:I

    .line 76
    const-string v1, "related"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->related:Ljava/lang/String;

    .line 77
    const-string v1, "abst"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->abst:Ljava/lang/String;

    .line 78
    const-string v1, "message_class"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->messageClass:Ljava/lang/String;

    .line 79
    const-string v1, "message_type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->messageType:I

    .line 80
    const-string v1, "file_path"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->tmpFilepath:Ljava/lang/String;

    .line 81
    return-object v0
.end method


# virtual methods
.method public onReadEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "entryContent"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 57
    .local v2, "json":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 65
    return-void

    .line 58
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 59
    .local v3, "mmsJson":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader$1;->val$infos:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader$1;->buildREquestMmsForJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v1    # "i":I
    .end local v2    # "json":Lorg/json/JSONArray;
    .end local v3    # "mmsJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexcepted JSONException occured"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
