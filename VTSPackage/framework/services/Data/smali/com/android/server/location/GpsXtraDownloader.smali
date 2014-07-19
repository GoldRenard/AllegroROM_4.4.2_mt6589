.class public Lcom/android/server/location/GpsXtraDownloader;
.super Ljava/lang/Object;
.source "GpsXtraDownloader.java"


# static fields
.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "GpsXtraDownloader"


# instance fields
.field private final RETRY_TIMES:I

.field private mContext:Landroid/content/Context;

.field private mNextServerIndex:I

.field private mXtraServers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/Properties;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v2, 0x3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->RETRY_TIMES:I

    .line 62
    iput-object p1, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/location/GpsXtraDownloader;->getURLwithSSLKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "GpsXtraDownloader"

    const-string v1, "getURLwithSSLKey Support retry:3"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput v2, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 69
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    .line 100
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "GpsXtraDownloader"

    const-string v1, "Warning: getURLwithSSLKey Not Support"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B
    .locals 15
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "isProxySet"    # Z
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I

    .prologue
    .line 137
    const-string v11, "GpsXtraDownloader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Downloading XTRA data from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0xa

    invoke-static {v13, p0}, Lcom/android/server/location/GpsXtraDownloader;->getKeyLog(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v3, 0x0

    .line 141
    .local v3, "client":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    const-string v11, "Android"

    invoke-static {v11}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 142
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 144
    .local v8, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p1, :cond_0

    .line 145
    new-instance v7, Lorg/apache/http/HttpHost;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v7, v0, v1}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 146
    .local v7, "proxy":Lorg/apache/http/HttpHost;
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v11

    invoke-static {v11, v7}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 160
    .end local v7    # "proxy":Lorg/apache/http/HttpHost;
    :cond_0
    invoke-virtual {v3, v8}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v9

    .line 161
    .local v9, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    .line 162
    .local v10, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-eq v11, v12, :cond_2

    .line 163
    const-string v11, "GpsXtraDownloader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HTTP error: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 164
    const/4 v2, 0x0

    .line 194
    if-eqz v3, :cond_1

    .line 195
    :goto_0
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 198
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    :cond_1
    :goto_1
    return-object v2

    .line 167
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    :cond_2
    :try_start_1
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 168
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    const/4 v2, 0x0

    .line 169
    .local v2, "body":[B
    if-eqz v6, :cond_4

    .line 171
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-lez v11, :cond_3

    .line 172
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    long-to-int v11, v11

    new-array v2, v11, [B

    .line 173
    new-instance v4, Ljava/io/DataInputStream;

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    .local v4, "dis":Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 186
    :try_start_5
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 194
    :cond_4
    if-eqz v3, :cond_1

    goto :goto_0

    .line 177
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_0
    move-exception v11

    .line 178
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 177
    :goto_3
    :try_start_7
    throw v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 185
    .end local v4    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v11

    if-eqz v6, :cond_5

    .line 186
    :try_start_8
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 185
    :cond_5
    throw v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 191
    .end local v2    # "body":[B
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    .end local v10    # "status":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v5

    .line 192
    .local v5, "e":Ljava/lang/Exception;
    :try_start_9
    const-string v11, "GpsXtraDownloader"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 194
    if-eqz v3, :cond_6

    .line 195
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 198
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 194
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v11

    if-eqz v3, :cond_7

    .line 195
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 194
    :cond_7
    throw v11

    .line 179
    .restart local v2    # "body":[B
    .restart local v4    # "dis":Ljava/io/DataInputStream;
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "req":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    .restart local v10    # "status":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v5

    .line 180
    .local v5, "e":Ljava/io/IOException;
    :try_start_a
    const-string v12, "GpsXtraDownloader"

    const-string v13, "Unexpected IOException."

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 179
    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 180
    .restart local v5    # "e":Ljava/io/IOException;
    const-string v11, "GpsXtraDownloader"

    const-string v12, "Unexpected IOException."

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2
.end method

.method protected static getKeyLog(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "length"    # I
    .param p1, "TargetURL"    # Ljava/lang/String;

    .prologue
    .line 215
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "url":Ljava/lang/String;
    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "key="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 218
    .local v0, "index":I
    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 221
    .end local v0    # "index":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method downloadXtraData()[B
    .locals 6

    .prologue
    .line 103
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "proxyHost":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v1

    .line 105
    .local v1, "proxyPort":I
    if-eqz v0, :cond_0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    const/4 v4, 0x1

    .line 106
    .local v4, "useProxy":Z
    :goto_0
    const/4 v2, 0x0

    .line 107
    .local v2, "result":[B
    iget v3, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 109
    .local v3, "startIndex":I
    iget-object v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mXtraServers:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 110
    const/4 v5, 0x0

    .line 132
    :goto_1
    return-object v5

    .line 105
    .end local v2    # "result":[B
    .end local v3    # "startIndex":I
    .end local v4    # "useProxy":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 114
    .restart local v2    # "result":[B
    .restart local v3    # "startIndex":I
    .restart local v4    # "useProxy":Z
    :cond_1
    if-nez v2, :cond_2

    .line 117
    invoke-virtual {p0}, Lcom/android/server/location/GpsXtraDownloader;->getURLwithSSLKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v0, v1}, Lcom/android/server/location/GpsXtraDownloader;->doDownload(Ljava/lang/String;ZLjava/lang/String;I)[B

    move-result-object v2

    .line 118
    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    .line 119
    iget v5, p0, Lcom/android/server/location/GpsXtraDownloader;->mNextServerIndex:I

    if-gtz v5, :cond_1

    :cond_2
    move-object v5, v2

    .line 132
    goto :goto_1
.end method

.method getURLwithSSLKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    const-string v1, ""

    .line 206
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Lcom/mediatek/eposervice/EPOinfo;

    invoke-direct {v0}, Lcom/mediatek/eposervice/EPOinfo;-><init>()V

    .line 207
    .local v0, "info":Lcom/mediatek/eposervice/EPOinfo;
    invoke-virtual {v0}, Lcom/mediatek/eposervice/EPOinfo;->getSignedURL()Ljava/lang/String;

    move-result-object v1

    .line 210
    return-object v1
.end method
