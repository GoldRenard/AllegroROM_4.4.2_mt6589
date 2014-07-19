.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;
.super Ljava/lang/Object;
.source "SingleMmsUploader.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ResultCode;


# static fields
.field private static final TAG:Ljava/lang/String; = "MMSUpload"


# instance fields
.field private flow:J

.field protected httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private mContext:Landroid/content/Context;

.field private uploadUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpMachine"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->uploadUrl:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->flow:J

    .line 41
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 43
    return-void
.end method

.method private prepareBackup()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "backup?gzip=false"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->uploadUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private validateMmsInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    .locals 5
    .param p1, "rme"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .prologue
    const/16 v4, 0x9

    .line 85
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;

    const-string v1, "address is empty"

    invoke-direct {v0, v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;

    const-string v1, "date is 0"

    invoke-direct {v0, v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getTmpFilepath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;

    const-string v1, "tmpFIlepath is empty"

    invoke-direct {v0, v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/exception/ValidateErrorException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 94
    :cond_2
    return-void
.end method


# virtual methods
.method public backup(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)Z
    .locals 17
    .param p1, "rme"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->prepareBackup()V

    .line 52
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->validateMmsInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 53
    const-string v13, "UTF-8"

    invoke-static {v13}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 54
    .local v2, "charset":Ljava/nio/charset/Charset;
    new-instance v7, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v13, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    const/4 v14, 0x0

    invoke-direct {v7, v13, v14, v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 56
    .local v7, "multipartEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->toJson()Lorg/json/JSONObject;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .line 57
    .local v10, "rmeByte":[B
    new-instance v1, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v13, "json"

    invoke-direct {v1, v10, v13}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    .line 58
    .local v1, "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    const-string v13, "json"

    invoke-virtual {v7, v13, v1}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 59
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->flow:J

    array-length v15, v10

    int-to-long v15, v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->flow:J

    .line 61
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getTmpFilepath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v12, "zipFile":Ljava/io/File;
    new-instance v4, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "application/octet-stream"

    const-string v15, "UTF-8"

    invoke-direct {v4, v12, v13, v14, v15}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v4, "fileBody":Lorg/apache/http/entity/mime/content/FileBody;
    const-string v13, "file"

    invoke-virtual {v7, v13, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 64
    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->flow:J

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v15

    add-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->flow:J

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v6

    .line 66
    .local v6, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v11, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getMmsServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->uploadUrl:Ljava/lang/String;

    const-string v15, "contact.cloud.lps.lenovo.com"

    invoke-direct {v11, v13, v14, v6, v15}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 67
    .local v11, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v13, v11, v7}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v8

    .line 68
    .local v8, "respString":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, "json":Lorg/json/JSONObject;
    const-string v13, "result"

    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 70
    .local v9, "result":I
    if-nez v9, :cond_0

    .line 71
    const/4 v13, 0x1

    .line 77
    .end local v1    # "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v4    # "fileBody":Lorg/apache/http/entity/mime/content/FileBody;
    .end local v5    # "json":Lorg/json/JSONObject;
    .end local v6    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .end local v7    # "multipartEntity":Lorg/apache/http/entity/mime/MultipartEntity;
    .end local v8    # "respString":Ljava/lang/String;
    .end local v9    # "result":I
    .end local v10    # "rmeByte":[B
    .end local v11    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .end local v12    # "zipFile":Ljava/io/File;
    :goto_0
    return v13

    .line 73
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Lorg/json/JSONException;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 77
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_0
    const/4 v13, 0x0

    goto :goto_0
.end method

.method public getFlow()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->flow:J

    return-wide v0
.end method
