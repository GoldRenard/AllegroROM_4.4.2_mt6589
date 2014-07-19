.class public Lorg/jets3t/service/utils/Mimetypes;
.super Ljava/lang/Object;
.source "Mimetypes.java"


# static fields
.field public static final MIMETYPE_BINARY_OCTET_STREAM:Ljava/lang/String; = "binary/octet-stream"

.field public static final MIMETYPE_GZIP:Ljava/lang/String; = "application/x-gzip"

.field public static final MIMETYPE_HTML:Ljava/lang/String; = "text/html"

.field public static final MIMETYPE_JETS3T_DIRECTORY:Ljava/lang/String; = "application/x-directory"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIMETYPE_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final MIMETYPE_XML:Ljava/lang/String; = "application/xml"

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static mimetypes:Lorg/jets3t/service/utils/Mimetypes;


# instance fields
.field private final extensionToMimetypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/jets3t/service/utils/Mimetypes;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lorg/jets3t/service/utils/Mimetypes;->mimetypes:Lorg/jets3t/service/utils/Mimetypes;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/utils/Mimetypes;->extensionToMimetypeMap:Ljava/util/Map;

    .line 94
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/jets3t/service/utils/Mimetypes;
    .locals 5

    .prologue
    .line 100
    const-class v3, Lorg/jets3t/service/utils/Mimetypes;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->mimetypes:Lorg/jets3t/service/utils/Mimetypes;

    if-eqz v2, :cond_0

    .line 101
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->mimetypes:Lorg/jets3t/service/utils/Mimetypes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .local v1, "mimetypesFile":Ljava/io/InputStream;
    :goto_0
    monitor-exit v3

    return-object v2

    .line 103
    .end local v1    # "mimetypesFile":Ljava/io/InputStream;
    :cond_0
    :try_start_1
    new-instance v2, Lorg/jets3t/service/utils/Mimetypes;

    invoke-direct {v2}, Lorg/jets3t/service/utils/Mimetypes;-><init>()V

    sput-object v2, Lorg/jets3t/service/utils/Mimetypes;->mimetypes:Lorg/jets3t/service/utils/Mimetypes;

    .line 104
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->mimetypes:Lorg/jets3t/service/utils/Mimetypes;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "/mime.types"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 105
    .restart local v1    # "mimetypesFile":Ljava/io/InputStream;
    if-eqz v1, :cond_3

    .line 106
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Loading mime types from file in the classpath: mime.types"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    :cond_1
    :try_start_2
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->mimetypes:Lorg/jets3t/service/utils/Mimetypes;

    invoke-virtual {v2, v1}, Lorg/jets3t/service/utils/Mimetypes;->loadAndReplaceMimetypes(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    :cond_2
    :goto_1
    :try_start_3
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->mimetypes:Lorg/jets3t/service/utils/Mimetypes;

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Failed to load mime types from file in the classpath: mime.types"

    invoke-interface {v2, v4, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 117
    :cond_3
    :try_start_4
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    sget-object v2, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    const-string v4, "Unable to find \'mime.types\' file in classpath"

    invoke-interface {v2, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getMimetype(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/utils/Mimetypes;->getMimetype(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMimetype(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v4, p0, Lorg/jets3t/service/utils/Mimetypes;->extensionToMimetypeMap:Ljava/util/Map;

    const-string v5, "*"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 183
    .local v2, "mimetype":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 184
    const-string v2, "application/octet-stream"

    .line 187
    :cond_0
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 188
    .local v1, "lastPeriodIndex":I
    if-lez v1, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 189
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "ext":Ljava/lang/String;
    iget-object v4, p0, Lorg/jets3t/service/utils/Mimetypes;->extensionToMimetypeMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    iget-object v4, p0, Lorg/jets3t/service/utils/Mimetypes;->extensionToMimetypeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mimetype":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 192
    .restart local v2    # "mimetype":Ljava/lang/String;
    sget-object v4, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 193
    sget-object v4, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recognised extension \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', mimetype is: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_1
    move-object v3, v2

    .line 207
    .end local v0    # "ext":Ljava/lang/String;
    .end local v2    # "mimetype":Ljava/lang/String;
    .local v3, "mimetype":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 197
    .end local v3    # "mimetype":Ljava/lang/String;
    .restart local v0    # "ext":Ljava/lang/String;
    .restart local v2    # "mimetype":Ljava/lang/String;
    :cond_2
    sget-object v4, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 198
    sget-object v4, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Extension \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is unrecognized in mime type listing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", using default mime type: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .end local v0    # "ext":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v3, v2

    .line 207
    .end local v2    # "mimetype":Ljava/lang/String;
    .restart local v3    # "mimetype":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v3    # "mimetype":Ljava/lang/String;
    .restart local v2    # "mimetype":Ljava/lang/String;
    :cond_4
    sget-object v4, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 204
    sget-object v4, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File name has no extension, mime type cannot be recognised for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public loadAndReplaceMimetypes(Ljava/io/InputStream;)V
    .locals 8
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 137
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 138
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 143
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, " \t"

    invoke-direct {v4, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2

    .line 145
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "mimetype":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "extension":Ljava/lang/String;
    iget-object v5, p0, Lorg/jets3t/service/utils/Mimetypes;->extensionToMimetypeMap:Ljava/util/Map;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v5, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    sget-object v5, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting mime type for extension \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' to \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 154
    .end local v1    # "extension":Ljava/lang/String;
    .end local v3    # "mimetype":Ljava/lang/String;
    :cond_2
    sget-object v5, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    sget-object v5, Lorg/jets3t/service/utils/Mimetypes;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring mimetype with no associated file extensions: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 160
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_3
    return-void
.end method
