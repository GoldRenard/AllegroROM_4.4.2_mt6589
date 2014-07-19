.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;
.super Ljava/lang/Object;
.source "SingleMmsDownloader.java"


# instance fields
.field private body:Lorg/json/JSONObject;

.field private context:Landroid/content/Context;

.field private flow:J

.field protected httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "body"    # Lorg/json/JSONObject;
    .param p3, "httpMachine"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->flow:J

    .line 40
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->body:Lorg/json/JSONObject;

    .line 42
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 43
    return-void
.end method

.method private wapperResult(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .locals 21
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    const/4 v13, 0x0

    .line 61
    .local v13, "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    const/4 v10, 0x0

    .line 63
    .local v10, "os":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    move-object v13, v0

    .line 64
    const-string v17, "metadata-length"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v15

    .line 65
    .local v15, "sizeHeaders":[Lorg/apache/http/Header;
    const/16 v17, 0x0

    aget-object v17, v15, v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 66
    .local v8, "jsonSize":Ljava/lang/Integer;
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 68
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v6

    .line 69
    .local v6, "input":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [B

    .line 70
    .local v7, "jsonByte":[B
    const-string v9, ""

    .line 71
    .local v9, "jsonStr":Ljava/lang/String;
    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 73
    new-instance v9, Ljava/lang/String;

    .end local v9    # "jsonStr":Ljava/lang/String;
    const-string v17, "UTF8"

    move-object/from16 v0, v17

    invoke-direct {v9, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 75
    .restart local v9    # "jsonStr":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->flow:J

    move-wide/from16 v17, v0

    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->flow:J

    .line 76
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v12, "respJson":Lorg/json/JSONObject;
    invoke-virtual {v13, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 79
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getZipFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)Ljava/io/File;

    move-result-object v16

    .line 80
    .local v16, "zipFile":Ljava/io/File;
    new-instance v11, Ljava/io/FileOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .local v11, "os":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .line 82
    .local v3, "buffer":[B
    const/16 v17, 0x0

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .line 83
    .local v14, "size":I
    :goto_0
    if-gtz v14, :cond_1

    .line 88
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    .line 89
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->setTmpFilepath(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 98
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 99
    aput-object v11, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v10, v11

    .line 102
    .end local v3    # "buffer":[B
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "jsonByte":[B
    .end local v8    # "jsonSize":Ljava/lang/Integer;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .end local v12    # "respJson":Lorg/json/JSONObject;
    .end local v14    # "size":I
    .end local v15    # "sizeHeaders":[Lorg/apache/http/Header;
    .end local v16    # "zipFile":Ljava/io/File;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    :goto_1
    return-object v13

    .line 84
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "jsonByte":[B
    .restart local v8    # "jsonSize":Ljava/lang/Integer;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v12    # "respJson":Lorg/json/JSONObject;
    .restart local v14    # "size":I
    .restart local v15    # "sizeHeaders":[Lorg/apache/http/Header;
    .restart local v16    # "zipFile":Ljava/io/File;
    :cond_1
    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v11, v3, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V

    .line 85
    const/16 v17, 0x0

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    .line 86
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->flow:J

    move-wide/from16 v17, v0

    int-to-long v0, v14

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->flow:J
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 90
    .end local v3    # "buffer":[B
    .end local v14    # "size":I
    :catch_0
    move-exception v4

    move-object v10, v11

    .line 91
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "jsonByte":[B
    .end local v8    # "jsonSize":Ljava/lang/Integer;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .end local v12    # "respJson":Lorg/json/JSONObject;
    .end local v15    # "sizeHeaders":[Lorg/apache/http/Header;
    .end local v16    # "zipFile":Ljava/io/File;
    .local v4, "e":Ljava/io/IOException;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 99
    aput-object v10, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .line 92
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/IllegalAccessException;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 99
    aput-object v10, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .line 94
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/InstantiationException;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 99
    aput-object v10, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .line 96
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v4

    .line 97
    .local v4, "e":Lorg/json/JSONException;
    :goto_5
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 98
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 99
    aput-object v10, v17, v18

    invoke-static/range {v17 .. v17}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    .line 98
    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v17

    :goto_6
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/io/Closeable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 99
    aput-object v10, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 100
    throw v17

    .line 98
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v7    # "jsonByte":[B
    .restart local v8    # "jsonSize":Ljava/lang/Integer;
    .restart local v9    # "jsonStr":Ljava/lang/String;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v12    # "respJson":Lorg/json/JSONObject;
    .restart local v15    # "sizeHeaders":[Lorg/apache/http/Header;
    .restart local v16    # "zipFile":Ljava/io/File;
    :catchall_1
    move-exception v17

    move-object v10, v11

    .end local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 96
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v4

    move-object v10, v11

    .end local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 94
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v4

    move-object v10, v11

    .end local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 92
    .end local v10    # "os":Ljava/io/FileOutputStream;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    move-object v10, v11

    .end local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 90
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v7    # "jsonByte":[B
    .end local v8    # "jsonSize":Ljava/lang/Integer;
    .end local v9    # "jsonStr":Ljava/lang/String;
    .end local v12    # "respJson":Lorg/json/JSONObject;
    .end local v15    # "sizeHeaders":[Lorg/apache/http/Header;
    .end local v16    # "zipFile":Ljava/io/File;
    :catch_7
    move-exception v4

    goto :goto_2
.end method


# virtual methods
.method public getFlow()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->flow:J

    return-wide v0
.end method

.method public revert()Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    const-string v0, "revert?gzip=false"

    .line 51
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v1

    .line 52
    .local v1, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getMmsServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "contact.cloud.lps.lenovo.com"

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 54
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->body:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v4, v3, v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 55
    .local v2, "response":Lorg/apache/http/HttpResponse;
    const-class v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    invoke-direct {p0, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->wapperResult(Lorg/apache/http/HttpResponse;Ljava/lang/Class;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    move-result-object v4

    return-object v4
.end method
