.class Lcom/lenovo/lsf/account/PsServerInfo;
.super Ljava/lang/Object;
.source "PsServerInfo.java"


# static fields
.field private static defLds:Ljava/lang/String;

.field private static mErrorCode:Ljava/lang/String;

.field private static mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lsf/account/PsServerInfo;->mErrorCode:Ljava/lang/String;

    .line 36
    const-string v0, "http://lds.lenovomm.com/"

    sput-object v0, Lcom/lenovo/lsf/account/PsServerInfo;->defLds:Ljava/lang/String;

    .line 39
    new-instance v0, Lcom/lenovo/lsf/account/PsPushHttpRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lenovo/lsf/account/PsPushHttpRequest;-><init>(Z)V

    sput-object v0, Lcom/lenovo/lsf/account/PsServerInfo;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static delAllValues(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 219
    const/4 v5, 0x0

    .line 221
    .local v5, "map":Ljava/util/Map;
    :try_start_0
    const-string v8, "ldsCache"

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 222
    .local v6, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 223
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 224
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 225
    :cond_0
    const/4 v7, 0x1

    .line 237
    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return v7

    .line 226
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 227
    .local v3, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 228
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 229
    .local v2, "ety":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 230
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 233
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "ety":Ljava/util/Map$Entry;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v6    # "sp":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    .line 237
    if-eqz v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v6    # "sp":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :cond_4
    throw v7
.end method

.method private static getChangeServerAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "bw":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 173
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.lenovo.ChangeServerAddress"

    const/16 v9, 0x80

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/lds.cfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "filepath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_1

    .line 185
    if-eqz v0, :cond_0

    .line 186
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    move-object v4, v6

    .line 190
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-object v4

    .line 178
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
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .local v1, "bw":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v4

    .line 180
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 185
    if-eqz v1, :cond_2

    .line 186
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2
    :goto_2
    move-object v0, v1

    .line 188
    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_1

    .line 185
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v1, :cond_4

    .line 186
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_4
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    :cond_5
    :goto_3
    move-object v4, v6

    .line 190
    goto :goto_1

    .line 188
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v7

    move-object v0, v1

    .line 189
    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_3

    .line 181
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    .line 185
    :goto_4
    if-eqz v0, :cond_5

    .line 186
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 188
    :catch_2
    move-exception v7

    goto :goto_3

    .line 184
    :catchall_0
    move-exception v6

    .line 185
    :goto_5
    if-eqz v0, :cond_6

    .line 186
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 188
    :cond_6
    :goto_6
    throw v6

    .restart local v2    # "f":Ljava/io/File;
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    :catch_3
    move-exception v7

    goto :goto_0

    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    goto :goto_6

    .line 184
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

    .line 181
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    :catch_6
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static getDefalutUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v0, "rpbs001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://pbs.lenovomm.com/"

    .line 60
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const-string v0, "rfus001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://fus.lenovomm.com/"

    goto :goto_0

    .line 55
    :cond_1
    const-string v0, "rpay001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "https://pay.lenovomm.com/"

    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "rpsb001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://psb.lenovomm.com/"

    goto :goto_0

    .line 57
    :cond_3
    const-string v0, "russ001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "https://uss.lenovomm.com/"

    goto :goto_0

    .line 58
    :cond_4
    const-string v0, "rwthr01"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "http://wth.lenovomm.com/"

    goto :goto_0

    .line 59
    :cond_5
    const-string v0, "rapp001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "http://ams.lenovomm.com/"

    goto :goto_0

    .line 60
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/lenovo/lsf/account/PsServerInfo;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method private static getSid(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "sid"    # Ljava/lang/String;

    .prologue
    .line 43
    const-string v0, "rwebdsk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "rpbs001"

    .line 49
    .end local p0    # "sid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 44
    .restart local p0    # "sid":Ljava/lang/String;
    :cond_1
    const-string v0, "rfw0001"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "rfus001"

    goto :goto_0

    .line 45
    :cond_2
    const-string v0, "pay"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "rpay001"

    goto :goto_0

    .line 46
    :cond_3
    const-string v0, "psb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "rpsb001"

    goto :goto_0

    .line 47
    :cond_4
    const-string v0, "uss"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "russ001"

    goto :goto_0

    .line 48
    :cond_5
    const-string v0, "wth"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "rwthr01"

    goto :goto_0
.end method

.method public static getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 195
    :try_start_0
    const-string v3, "ldsCache"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 196
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    .line 199
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 200
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseServerUrl(Landroid/content/Context;Ljava/io/Reader;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 128
    const/4 v5, 0x0

    .line 129
    .local v5, "url":Ljava/lang/String;
    const/4 v4, 0x0

    .line 131
    .local v4, "ttl":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 132
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 133
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 134
    .local v6, "xp":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 135
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 136
    .local v1, "eventType":I
    :goto_0
    if-eq v1, v9, :cond_2

    .line 137
    const/4 v7, 0x2

    if-ne v1, v7, :cond_0

    .line 138
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Address"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 139
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v5

    .line 144
    :cond_0
    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 140
    :cond_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TTL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 146
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 147
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 148
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "url"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v5}, Lcom/lenovo/lsf/account/PsServerInfo;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 150
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ttl"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v4}, Lcom/lenovo/lsf/account/PsServerInfo;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsServerInfo;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1    # "eventType":I
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "time":Landroid/text/format/Time;
    .end local v6    # "xp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :goto_2
    if-nez v5, :cond_4

    .line 158
    invoke-static {p0, p2}, Lcom/lenovo/lsf/account/PsServerInfo;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    .end local v5    # "url":Ljava/lang/String;
    :cond_4
    return-object v5

    .line 153
    .restart local v5    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public static queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsServerInfo;->getChangeServerAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "RemoteLds":Ljava/lang/String;
    const-string v22, "lds"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsServerInfo;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "LocalLds":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 67
    sget-object v3, Lcom/lenovo/lsf/account/PsServerInfo;->defLds:Ljava/lang/String;

    .line 68
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsServerInfo;->delAllValues(Landroid/content/Context;)Z

    .line 69
    const-string v22, "lds"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v3}, Lcom/lenovo/lsf/account/PsServerInfo;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 72
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/account/PsServerInfo;->delAllValues(Landroid/content/Context;)Z

    .line 73
    const-string v22, "lds"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4}, Lcom/lenovo/lsf/account/PsServerInfo;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 76
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/lenovo/lsf/account/PsServerInfo;->getSid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 78
    .local v16, "serviceid":Ljava/lang/String;
    :try_start_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "url"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsServerInfo;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, "oldurl":Ljava/lang/String;
    if-eqz v13, :cond_2

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 80
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "time"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsServerInfo;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 81
    .local v17, "soldtime":Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ttl"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsServerInfo;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 82
    .local v18, "soldttl":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    add-long v22, v22, v24

    const-wide/16 v24, 0x3c

    sub-long v19, v22, v24

    .line 83
    .local v19, "ttltime":J
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 84
    .local v12, "newtime":Landroid/text/format/Time;
    invoke-virtual {v12}, Landroid/text/format/Time;->setToNow()V

    .line 85
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v5, v22, v24
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .local v5, "curtime":J
    cmp-long v22, v5, v19

    if-gez v22, :cond_2

    move-object v15, v13

    .line 124
    .end local v5    # "curtime":J
    .end local v12    # "newtime":Landroid/text/format/Time;
    .end local v13    # "oldurl":Ljava/lang/String;
    .end local v17    # "soldtime":Ljava/lang/String;
    .end local v18    # "soldttl":Ljava/lang/String;
    .end local v19    # "ttltime":J
    :goto_0
    return-object v15

    .line 90
    :catch_0
    move-exception v9

    .line 91
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "didt":Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 103
    .local v7, "did":Ljava/lang/String;
    :goto_1
    const-string v22, "lds"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsServerInfo;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 104
    .local v11, "ldsServer":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 105
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "https://"

    const-string v24, "http://"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "addr/1.0/query?"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "sid="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&didt="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "&did="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 109
    .local v21, "url":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v22, 0x3

    move/from16 v0, v22

    if-ge v10, v0, :cond_5

    .line 110
    sget-object v22, Lcom/lenovo/lsf/account/PsServerInfo;->mRequest:Lcom/lenovo/lsf/account/PsPushHttpRequest;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v14

    .line 111
    .local v14, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    iget v0, v14, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/lenovo/lsf/account/PsServerInfo;->mErrorCode:Ljava/lang/String;

    .line 112
    iget v0, v14, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    move/from16 v22, v0

    const/16 v23, 0xc8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 113
    iget-object v0, v14, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsServerInfo;->parseServerUrl(Landroid/content/Context;Ljava/io/Reader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 114
    .local v15, "retUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 99
    .end local v7    # "did":Ljava/lang/String;
    .end local v8    # "didt":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v11    # "ldsServer":Ljava/lang/String;
    .end local v14    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v15    # "retUrl":Ljava/lang/String;
    .end local v21    # "url":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 100
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v8, "unknown"

    .line 101
    .restart local v8    # "didt":Ljava/lang/String;
    const-string v7, "unknown"

    .restart local v7    # "did":Ljava/lang/String;
    goto/16 :goto_1

    .line 115
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "i":I
    .restart local v11    # "ldsServer":Ljava/lang/String;
    .restart local v14    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .restart local v21    # "url":Ljava/lang/String;
    :cond_3
    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v10, v0, :cond_4

    .line 117
    const-wide/16 v22, 0x3e8

    add-int/lit8 v24, v10, 0x1

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    :try_start_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 123
    .end local v10    # "i":I
    .end local v14    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .end local v21    # "url":Ljava/lang/String;
    :cond_5
    invoke-static/range {v16 .. v16}, Lcom/lenovo/lsf/account/PsServerInfo;->getDefalutUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 124
    .restart local v15    # "retUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 118
    .end local v15    # "retUrl":Ljava/lang/String;
    .restart local v10    # "i":I
    .restart local v14    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .restart local v21    # "url":Ljava/lang/String;
    :catch_2
    move-exception v22

    goto :goto_3
.end method

.method private static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceid"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 208
    :try_start_0
    const-string v4, "ldsCache"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 209
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 210
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 214
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :goto_0
    return v3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
