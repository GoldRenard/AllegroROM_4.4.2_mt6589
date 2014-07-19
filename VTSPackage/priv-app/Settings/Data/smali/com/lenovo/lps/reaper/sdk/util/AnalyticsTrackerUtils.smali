.class public final Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;
.super Ljava/lang/Object;
.source "AnalyticsTrackerUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final compress([B)[B
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v6, 0x0

    .line 148
    if-nez p0, :cond_0

    .line 149
    const/4 v5, 0x0

    .line 171
    :goto_0
    return-object v5

    .line 151
    :cond_0
    array-length v5, p0

    if-nez v5, :cond_1

    .line 152
    new-array v5, v6, [B

    goto :goto_0

    .line 154
    :cond_1
    new-instance v2, Ljava/util/zip/Deflater;

    invoke-direct {v2}, Ljava/util/zip/Deflater;-><init>()V

    .line 155
    .local v2, "compressor":Ljava/util/zip/Deflater;
    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 156
    invoke-virtual {v2, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 157
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finish()V

    .line 158
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v5, p0

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 159
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 160
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->finished()Z

    move-result v5

    if-nez v5, :cond_2

    .line 161
    invoke-virtual {v2, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v3

    .line 162
    .local v3, "count":I
    invoke-virtual {v0, v1, v6, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 165
    .end local v3    # "count":I
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_2
    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 171
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0

    .line 166
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/io/IOException;
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when close output stream. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static domainResolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "domain"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .local v7, "ret":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 103
    .local v0, "adresses":[Ljava/net/InetAddress;
    const/4 v3, 0x0

    .line 104
    .local v3, "index1":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v0

    if-ge v2, v8, :cond_3

    .line 105
    if-lez v3, :cond_0

    .line 106
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    aget-object v8, v0, v2

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 109
    .local v5, "ip":[B
    const/4 v4, 0x0

    .line 110
    .local v4, "index2":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v8, v5

    if-ge v6, v8, :cond_2

    .line 111
    if-lez v4, :cond_1

    .line 112
    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v4, v4, 0x1

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 117
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "adresses":[Ljava/net/InetAddress;
    .end local v2    # "i":I
    .end local v3    # "index1":I
    .end local v4    # "index2":I
    .end local v5    # "ip":[B
    .end local v6    # "j":I
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 127
    if-eqz p0, :cond_0

    .line 128
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 134
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_0
    return-object p0

    .line 130
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string p0, ""
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .restart local v0    # "e":Ljava/io/UnsupportedEncodingException;
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when encode, str is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->execCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static execCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "command"    # Ljava/lang/String;
    .param p1, "filterStr"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v4, 0x0

    .line 38
    .local v4, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 39
    .local v1, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 40
    .local v5, "reader":Ljava/io/LineNumberReader;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .local v7, "ret":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 44
    new-instance v6, Ljava/io/LineNumberReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v8}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .end local v5    # "reader":Ljava/io/LineNumberReader;
    .local v6, "reader":Ljava/io/LineNumberReader;
    const/4 v3, 0x0

    .line 46
    .local v3, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, "index":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 48
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 49
    if-lez v2, :cond_1

    .line 50
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 61
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 63
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 68
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v6

    .end local v2    # "index":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/LineNumberReader;
    .restart local v5    # "reader":Ljava/io/LineNumberReader;
    :goto_2
    return-object v8

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    sget-object v8, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    const-string v9, ""

    invoke-static {v8, v9, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 61
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 63
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 64
    :catch_1
    move-exception v9

    goto :goto_2

    .line 60
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 61
    :goto_4
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 63
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 66
    :goto_5
    throw v8

    .line 64
    :catch_2
    move-exception v9

    goto :goto_5

    .line 60
    .end local v5    # "reader":Ljava/io/LineNumberReader;
    .restart local v2    # "index":I
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/LineNumberReader;
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/LineNumberReader;
    .restart local v5    # "reader":Ljava/io/LineNumberReader;
    goto :goto_4

    .line 56
    .end local v5    # "reader":Ljava/io/LineNumberReader;
    .restart local v6    # "reader":Ljava/io/LineNumberReader;
    :catch_3
    move-exception v0

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/LineNumberReader;
    .restart local v5    # "reader":Ljava/io/LineNumberReader;
    goto :goto_3

    .line 64
    .end local v5    # "reader":Ljava/io/LineNumberReader;
    .restart local v6    # "reader":Ljava/io/LineNumberReader;
    :catch_4
    move-exception v8

    goto :goto_1
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 7
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 233
    .local v1, "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    .line 235
    .local v0, "bytes":[B
    const/4 v3, 0x0

    .line 236
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 237
    .local v2, "numRead":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    array-length v4, v0

    sub-int/2addr v4, v3

    invoke-virtual {v1, v0, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_0

    .line 238
    add-int/2addr v3, v2

    goto :goto_0

    .line 241
    :cond_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 242
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not completely read file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 246
    :cond_1
    if-eqz v1, :cond_2

    .line 247
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_2
    :goto_1
    return-object v0

    .line 249
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static getHttpResponseCode(Ljava/lang/String;)I
    .locals 8
    .param p0, "httpUrl"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v5

    .line 79
    :cond_1
    const-string v6, "http"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 82
    :cond_2
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 84
    .local v3, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 86
    .local v2, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v6, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 88
    invoke-virtual {v1, v2}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 89
    invoke-virtual {v3, v1}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 90
    .local v4, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 95
    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .line 91
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    const-string v7, ""

    invoke-static {v6, v7, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v5
.end method

.method public static readSDCardFileContent(Ljava/lang/String;)[B
    .locals 7
    .param p0, "relativeFilePath"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "bytes":[B
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "sDStateString":Ljava/lang/String;
    sget-object v4, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sDStateString: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v4, "mounted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 218
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 221
    const/4 v0, 0x0

    .line 228
    .end local v0    # "bytes":[B
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v0

    .line 223
    .restart local v0    # "bytes":[B
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->getBytesFromFile(Ljava/io/File;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 224
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 140
    :try_start_0
    const-string v1, "[^0-9a-zA-Z /():,;*+=_.-]"

    const-string v2, "?"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object p0

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when replace, str is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static writeSDCard(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "relativeFilePath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const/4 v2, 0x0

    .line 179
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "sDStateString":Ljava/lang/String;
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sDStateString: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, "file":Ljava/io/File;
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sdcard file path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 187
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 189
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 192
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 193
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    const-string v6, "fail to create file on sd card."

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-eqz v2, :cond_0

    .line 204
    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 196
    :cond_4
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 198
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    if-eqz v3, :cond_6

    .line 204
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 206
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 205
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v5

    move-object v2, v3

    .line 206
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 199
    .end local v1    # "file":Ljava/io/File;
    :catch_2
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    sget-object v5, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 202
    if-eqz v2, :cond_0

    .line 204
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 205
    :catch_3
    move-exception v5

    goto/16 :goto_0

    .line 202
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v2, :cond_5

    .line 204
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 206
    :cond_5
    :goto_3
    throw v5

    .line 205
    :catch_4
    move-exception v6

    goto :goto_3

    .line 202
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 199
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method
