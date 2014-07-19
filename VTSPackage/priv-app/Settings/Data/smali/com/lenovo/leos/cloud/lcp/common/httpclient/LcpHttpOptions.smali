.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;
.super Ljava/lang/Object;
.source "LcpHttpOptions.java"


# static fields
.field private static final BAN_LIST_FILE:Ljava/lang/String; = "banListFile"

.field private static final URL_BAN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->URL_BAN_LIST:Ljava/util/List;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized addBanUri(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->URL_BAN_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->URL_BAN_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit v1

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->URL_BAN_LIST:Ljava/util/List;

    return-object v0
.end method

.method public static declared-synchronized getBanListFormFile(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const-class v8, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;

    monitor-enter v8

    const/4 v0, 0x0

    .line 98
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 99
    .local v4, "isReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 100
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .local v6, "line":Ljava/lang/String;
    :try_start_1
    const-string v7, "banListFile"

    invoke-virtual {p0, v7}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 103
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 104
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .local v5, "isReader":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 105
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v6

    if-nez v6, :cond_1

    .line 112
    const/4 v7, 0x1

    :try_start_4
    new-array v7, v7, [Ljava/io/Closeable;

    const/4 v9, 0x0

    .line 113
    aput-object v1, v7, v9

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 115
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :goto_1
    monitor-exit v8

    return-void

    .line 106
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 107
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->addBanUri(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 110
    :catch_0
    move-exception v2

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 111
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_6
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 112
    const/4 v7, 0x1

    :try_start_7
    new-array v7, v7, [Ljava/io/Closeable;

    const/4 v9, 0x0

    .line 113
    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 97
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v8

    throw v7

    .line 112
    .restart local v6    # "line":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :goto_4
    const/4 v9, 0x1

    :try_start_8
    new-array v9, v9, [Ljava/io/Closeable;

    const/4 v10, 0x0

    .line 113
    aput-object v0, v9, v10

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 114
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 112
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 110
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    goto :goto_2

    .line 97
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "isReader":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isReader":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "isReader":Ljava/io/InputStreamReader;
    .restart local v4    # "isReader":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public static declared-synchronized removeBanUri(Ljava/lang/String;)V
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->URL_BAN_LIST:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 39
    monitor-exit v3

    return-void

    .line 34
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "item":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized saveBanListToFile(Landroid/content/Context;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-class v8, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;

    monitor-enter v8

    const/4 v0, 0x0

    .line 67
    .local v0, "bw":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 68
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    const/4 v3, 0x0

    .line 70
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v7, "banListFile"

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 71
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 73
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_2
    sget-object v7, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->URL_BAN_LIST:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 74
    sget-object v7, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->URL_BAN_LIST:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 82
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    const/4 v7, 0x1

    :try_start_3
    new-array v7, v7, [Ljava/io/Closeable;

    const/4 v9, 0x0

    .line 86
    aput-object v1, v7, v9

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v0, v1

    .line 88
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_2
    monitor-exit v8

    return-void

    .line 74
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :cond_0
    :try_start_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 75
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 83
    .end local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v0, v1

    .line 84
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 85
    const/4 v7, 0x1

    :try_start_6
    new-array v7, v7, [Ljava/io/Closeable;

    const/4 v9, 0x0

    .line 86
    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 66
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_4
    monitor-exit v8

    throw v7

    .line 79
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :cond_1
    :try_start_7
    const-string v7, ""

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 85
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :goto_5
    const/4 v9, 0x1

    :try_start_8
    new-array v9, v9, [Ljava/io/Closeable;

    const/4 v10, 0x0

    .line 86
    aput-object v0, v9, v10

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 87
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 85
    :catchall_2
    move-exception v7

    goto :goto_5

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_5

    .line 83
    :catch_1
    move-exception v2

    goto :goto_3

    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catch_2
    move-exception v2

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .line 66
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_4
.end method
