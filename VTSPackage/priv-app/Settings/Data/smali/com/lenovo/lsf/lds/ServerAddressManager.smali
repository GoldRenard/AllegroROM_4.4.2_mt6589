.class public Lcom/lenovo/lsf/lds/ServerAddressManager;
.super Ljava/lang/Object;
.source "ServerAddressManager.java"


# static fields
.field private static final KEY_LDS:Ljava/lang/String; = "lds"

.field private static final KEY_REQUEST_ADDRESS:Ljava/lang/String; = "RequestServerAddress"

.field private static final NAME_LDS_CACHE:Ljava/lang/String; = "lds.cache"

.field private static final TAG:Ljava/lang/String; = "ServerAddressManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedLds(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 127
    :try_start_0
    const-string v4, "lds.cache"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 128
    .local v2, "sp":Landroid/content/SharedPreferences;
    const-string v4, "lds"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v1, v3

    .line 142
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 132
    .restart local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    const-string v4, "lds"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "ldsCached":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 135
    const-string v4, "ServerAddressManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cached LDS server:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v1    # "ldsCached":Ljava/lang/String;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v1, v3

    .line 142
    goto :goto_0
.end method

.method private static getChangeServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "bw":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 102
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "com.lenovo.ChangeServerAddress"

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/files/lds.cfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 117
    if-eqz v0, :cond_0

    .line 118
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    move-object v4, v6

    .line 122
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-object v4

    .line 107
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .local v1, "bw":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 110
    const-string v7, "ServerAddressManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Changed to LDS server:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    move-object v0, v1

    .line 111
    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_1

    .line 113
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    .line 117
    :goto_3
    if-eqz v0, :cond_3

    .line 118
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_4
    move-object v4, v6

    .line 122
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v6

    .line 117
    :goto_5
    if-eqz v0, :cond_4

    .line 118
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 121
    :cond_4
    :goto_6
    throw v6

    .line 117
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    if-eqz v1, :cond_6

    .line 118
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_4

    .line 120
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v7

    goto :goto_0

    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_3
    move-exception v6

    goto :goto_2

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    :catch_4
    move-exception v7

    goto :goto_4

    :catch_5
    move-exception v7

    goto :goto_6

    .line 115
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_5

    .line 113
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    :catch_6
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_6
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static getDefalutUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "rpbs001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://pbs.lenovomm.com/"

    .line 95
    :goto_0
    return-object v0

    .line 89
    :cond_0
    const-string v0, "rfus001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://fus.lenovomm.com/"

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "rpay001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://pay.lenovomm.com/"

    goto :goto_0

    .line 91
    :cond_2
    const-string v0, "rpsb001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://psb.lenovomm.com/"

    goto :goto_0

    .line 92
    :cond_3
    const-string v0, "russ001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "https://uss.lenovomm.com/"

    goto :goto_0

    .line 93
    :cond_4
    const-string v0, "rwthr01"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "http://wth.lenovomm.com/"

    goto :goto_0

    .line 94
    :cond_5
    const-string v0, "rapp001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http://ams.lenovomm.com/"

    goto :goto_0

    .line 95
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0, p1}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getServerAddresses(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "addresses":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 72
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 74
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getServerAddresses(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 26
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-address.cache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/lenovo/lsf/lds/ServerAddress;->restore(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/lds/ServerAddress;

    move-result-object v5

    .line 28
    .local v5, "serverAddr":Lcom/lenovo/lsf/lds/ServerAddress;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/lenovo/lsf/lds/ServerAddress;->isExpired()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 30
    :cond_0
    :try_start_0
    const-string v7, "RequestServerAddress"

    invoke-static {v7}, Lcom/lenovo/lsf/http/HttpClientManager;->getHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v2

    .line 32
    .local v2, "hc":Lorg/apache/http/client/HttpClient;
    new-instance v6, Lcom/lenovo/lsf/lds/QueryAddressRequest;

    invoke-static {p1}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, p0, v7}, Lcom/lenovo/lsf/lds/QueryAddressRequest;-><init>(Lorg/apache/http/client/HttpClient;Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .local v6, "stRequest":Lcom/lenovo/lsf/lds/QueryAddressRequest;
    invoke-static {p0}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getCachedLds(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 35
    .local v3, "ldsServer":Ljava/lang/String;
    if-nez v3, :cond_1

    invoke-static {p0}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getChangeServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 36
    invoke-static {p0, v3}, Lcom/lenovo/lsf/lds/ServerAddressManager;->setCachedLds(Landroid/content/Context;Ljava/lang/String;)Z

    .line 39
    :cond_1
    if-eqz v3, :cond_2

    .line 40
    invoke-virtual {v6, v3}, Lcom/lenovo/lsf/lds/QueryAddressRequest;->setLdsDefault(Ljava/lang/String;)V

    .line 43
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->execute(Z)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 44
    invoke-virtual {v6}, Lcom/lenovo/lsf/lds/QueryAddressRequest;->getServerAddress()Lcom/lenovo/lsf/lds/ServerAddress;

    move-result-object v5

    .line 45
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/lenovo/lsf/lds/ServerAddress;->getAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 46
    invoke-virtual {v5, p0, v1}, Lcom/lenovo/lsf/lds/ServerAddress;->save(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/lenovo/lsf/http/RequestFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_3
    const-string v7, "RequestServerAddress"

    invoke-static {v7}, Lcom/lenovo/lsf/http/HttpClientManager;->shutdown(Ljava/lang/String;)V

    .line 56
    .end local v2    # "hc":Lorg/apache/http/client/HttpClient;
    .end local v3    # "ldsServer":Ljava/lang/String;
    .end local v6    # "stRequest":Lcom/lenovo/lsf/lds/QueryAddressRequest;
    :cond_4
    :goto_0
    if-eqz v5, :cond_6

    .line 57
    invoke-virtual {v5}, Lcom/lenovo/lsf/lds/ServerAddress;->getAddress()[Ljava/lang/String;

    move-result-object v4

    .line 66
    :cond_5
    :goto_1
    return-object v4

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lcom/lenovo/lsf/http/RequestFailedException;
    :try_start_1
    const-string v7, "ServerAddressManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    const-string v7, "RequestServerAddress"

    invoke-static {v7}, Lcom/lenovo/lsf/http/HttpClientManager;->shutdown(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    .end local v0    # "e":Lcom/lenovo/lsf/http/RequestFailedException;
    :catchall_0
    move-exception v7

    .line 52
    const-string v8, "RequestServerAddress"

    invoke-static {v8}, Lcom/lenovo/lsf/http/HttpClientManager;->shutdown(Ljava/lang/String;)V

    .line 53
    throw v7

    .line 60
    :cond_6
    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    .line 61
    .local v4, "result":[Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/lsf/lds/ServerAddressManager;->getDefalutUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v9

    .line 62
    aget-object v7, v4, v9

    if-nez v7, :cond_5

    .line 66
    new-array v4, v9, [Ljava/lang/String;

    goto :goto_1
.end method

.method private static getSid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "rwebdsk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "rpbs001"

    .line 84
    .end local p0    # "sid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 79
    .restart local p0    # "sid":Ljava/lang/String;
    :cond_1
    const-string v0, "rfw0001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "rfus001"

    goto :goto_0

    .line 80
    :cond_2
    const-string v0, "pay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "rpay001"

    goto :goto_0

    .line 81
    :cond_3
    const-string v0, "psb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "rpsb001"

    goto :goto_0

    .line 82
    :cond_4
    const-string v0, "uss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "russ001"

    goto :goto_0

    .line 83
    :cond_5
    const-string v0, "wth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "rwthr01"

    goto :goto_0
.end method

.method public static setCachedLds(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 148
    :try_start_0
    const-string v4, "lds.cache"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 149
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 150
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "lds"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 154
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
