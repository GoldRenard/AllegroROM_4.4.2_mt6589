.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;
.super Ljava/lang/Object;
.source "MmsUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheAddressToPhoneName(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "mmsEntitis":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 129
    .local v0, "addressSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 133
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ContactNameFactory;->setContactByPhoneNumSet(Ljava/util/Set;)V

    .line 134
    return-void

    .line 129
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 130
    .local v2, "requestMmsEntity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "phoneNum":Ljava/lang/String;
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static doQueryMmsCloudCount(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    .line 112
    .local v1, "httpMachine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    :try_start_0
    const-string v5, "count"

    invoke-static {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->getMMsUriRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "responseStr":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, "json":Lorg/json/JSONObject;
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 116
    const-string v5, "count"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 123
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "responseStr":Ljava/lang/String;
    .end local v4    # "result":I
    :goto_0
    return v5

    .line 118
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "responseStr":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MmsUtil \u8fd4\u56de\u7ed3\u679c\u9519\u8bef\uff1aresult:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "responseStr":Ljava/lang/String;
    .end local v4    # "result":I
    :goto_1
    const/4 v5, -0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getMMsUriRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlPrefix"    # Ljava/lang/String;

    .prologue
    .line 76
    move-object v1, p1

    .line 77
    .local v1, "requestUrl":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 78
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getMmsServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v4, "contact.cloud.lps.lenovo.com"

    .line 78
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 80
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    return-object v2
.end method

.method public static getMmsRequestList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    const-string v4, "phonelist?gzip=false"

    .line 85
    .local v4, "requestUrl":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->getMMsUriRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v10

    .line 86
    .local v10, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    .line 87
    .local v1, "httpMachine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    const/4 v8, 0x0

    .line 89
    .local v8, "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    .local v9, "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    :try_start_1
    invoke-virtual {v1, v10}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, "responseStr":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v5, "respJson":Lorg/json/JSONObject;
    const-string v11, "data"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 93
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_0

    move-object v8, v9

    .line 101
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "respJson":Lorg/json/JSONObject;
    .end local v6    # "responseStr":Ljava/lang/String;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    :goto_1
    return-object v8

    .line 94
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lorg/json/JSONArray;
    .restart local v5    # "respJson":Lorg/json/JSONObject;
    .restart local v6    # "responseStr":Ljava/lang/String;
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    :cond_0
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;-><init>()V

    .line 95
    .local v7, "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->parseFromPhoneList(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 96
    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v5    # "respJson":Lorg/json/JSONObject;
    .end local v6    # "responseStr":Ljava/lang/String;
    .end local v7    # "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    .restart local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    :catch_1
    move-exception v0

    move-object v8, v9

    .end local v9    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    .restart local v8    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    goto :goto_2
.end method

.method public static inputStreamToReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 3
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 151
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v1, "reader":Ljava/io/Reader;
    :goto_0
    return-object v1

    .line 152
    .end local v1    # "reader":Ljava/io/Reader;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .restart local v1    # "reader":Ljava/io/Reader;
    goto :goto_0
.end method

.method public static outputStreamToWriter(Ljava/io/OutputStream;)Ljava/io/Writer;
    .locals 3
    .param p0, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    .end local v1    # "writer":Ljava/io/Writer;
    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .restart local v1    # "writer":Ljava/io/Writer;
    :goto_0
    return-object v1

    .line 141
    .end local v1    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .restart local v1    # "writer":Ljava/io/Writer;
    goto :goto_0
.end method
