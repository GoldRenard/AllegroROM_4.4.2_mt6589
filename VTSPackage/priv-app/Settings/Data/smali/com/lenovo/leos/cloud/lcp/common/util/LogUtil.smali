.class public final Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final ERROR:Ljava/lang/String; = "ERROR"

.field private static final FATAL:Ljava/lang/String; = "FATAL"

.field private static final INFO:Ljava/lang/String; = "INFO"

.field private static final LOG_FILE_SIZE:I = 0x200000

.field private static final ROOT_PATH:Ljava/lang/String; = "/data/log/"

.field private static final TAG:Ljava/lang/String; = "LogUtil"

.field public static final USER_LOG_KEY:Ljava/lang/String; = "userlog"

.field private static final WARN:Ljava/lang/String; = "WARN"

.field private static logFilename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "lcp.sdk.trace.txt"

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->logFilename:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 279
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->traceThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static clearUserLog()V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getDefaultLogPath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->delFolder(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getUserLogZipTempUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "z":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 160
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "debug"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "LogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "debug"    # Ljava/lang/String;

    .prologue
    .line 148
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v0, "LogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const-string v0, "ERROR"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->traceLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    const-string v0, "LogUtil"

    const-string v1, "ERROR"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const-string v0, "ERROR"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->traceThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method private static getDefaultLogPath()Ljava/io/File;
    .locals 4

    .prologue
    .line 332
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "rootPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/data/log/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "logDir":Ljava/io/File;
    return-object v0
.end method

.method private static getTraceFileWriter()Ljava/io/PrintWriter;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 311
    const/4 v0, 0x0

    .line 313
    .local v0, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getDefaultLogPath()Ljava/io/File;

    move-result-object v1

    .line 314
    .local v1, "logDir":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 315
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->logFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, "logFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x200000

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 318
    new-instance v0, Ljava/io/FileOutputStream;

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v0, v2, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 322
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 324
    .end local v2    # "logFile":Ljava/io/File;
    :goto_1
    return-object v3

    .line 320
    .restart local v2    # "logFile":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 324
    .end local v2    # "logFile":Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getUpLogUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v0, "u":Ljava/lang/StringBuilder;
    const-string v1, "http://pimapi.lenovomm.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "bm/feedback/logreport/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "LenovoSync/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "submit.action?version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, "&device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, "&user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, "&content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, "LogUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upload url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUserLogByZip()Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getDefaultLogPath()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getUserLogZipTempUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ZipUtil;->createZip(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getUserLogZipTempUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getUserLogZipTempUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "log.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 121
    const-string v0, "LogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v0, "INFO"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->traceLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "INFO"

    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->traceLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->logFilename:Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 66
    .local v0, "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil$1;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 74
    return-void
.end method

.method private static traceLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "logContent"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 251
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 272
    :goto_0
    return-void

    .line 255
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 256
    .local v1, "format":Ljava/text/DateFormat;
    const/4 v2, 0x0

    .line 258
    .local v2, "writer":Ljava/io/PrintWriter;
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getTraceFileWriter()Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 259
    if-nez v2, :cond_1

    .line 269
    new-array v3, v6, [Ljava/io/Closeable;

    .line 270
    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 263
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 265
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    new-array v3, v6, [Ljava/io/Closeable;

    .line 270
    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    new-array v3, v6, [Ljava/io/Closeable;

    .line 270
    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 269
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    new-array v4, v6, [Ljava/io/Closeable;

    .line 270
    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 271
    throw v3
.end method

.method private static traceThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    if-nez p1, :cond_0

    .line 302
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 285
    .local v1, "format":Ljava/text/DateFormat;
    const/4 v2, 0x0

    .line 287
    .local v2, "writer":Ljava/io/PrintWriter;
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getTraceFileWriter()Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 288
    if-nez v2, :cond_1

    .line 299
    new-array v3, v6, [Ljava/io/Closeable;

    .line 300
    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 293
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 295
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    new-array v3, v6, [Ljava/io/Closeable;

    .line 300
    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    new-array v3, v6, [Ljava/io/Closeable;

    .line 300
    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 299
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    new-array v4, v6, [Ljava/io/Closeable;

    .line 300
    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 301
    throw v3
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "device"    # Ljava/lang/String;
    .param p2, "user"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 244
    const-string v0, "userlog"

    invoke-static {v0, p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public static upload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "device"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 213
    const-string v10, "UTF-8"

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 214
    .local v0, "charset":Ljava/nio/charset/Charset;
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    sget-object v10, Lorg/apache/http/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lorg/apache/http/entity/mime/HttpMultipartMode;

    .line 215
    const/4 v11, 0x0

    .line 214
    invoke-direct {v2, v10, v11, v0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>(Lorg/apache/http/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 217
    .local v2, "entity":Lorg/apache/http/entity/mime/MultipartEntity;
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getUserLogByZip()Ljava/io/File;

    move-result-object v5

    .line 218
    .local v5, "logFile":Ljava/io/File;
    new-instance v3, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "application/octet-stream"

    const-string v12, "UTF-8"

    invoke-direct {v3, v5, v10, v11, v12}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .local v3, "fb":Lorg/apache/http/entity/mime/content/FileBody;
    invoke-virtual {v2, p0, v3}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 220
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {p1 .. p4}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->getUpLogUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-direct {v9, v10}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller$DefaultURIRoller;-><init>([Ljava/lang/String;)V

    .line 221
    .local v9, "u":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    .line 222
    .local v6, "m":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    invoke-virtual {v6, v9, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "responseStr":Ljava/lang/String;
    const-string v10, "LogUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "upload"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, "json":Lorg/json/JSONObject;
    const-string v10, "result"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "result":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string v10, "200"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 229
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->clearUserLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v3    # "fb":Lorg/apache/http/entity/mime/content/FileBody;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "logFile":Ljava/io/File;
    .end local v6    # "m":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    .end local v7    # "responseStr":Ljava/lang/String;
    .end local v8    # "result":Ljava/lang/String;
    .end local v9    # "u":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    :cond_0
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "LogUtil upload error\n"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0, "warn"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "LogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "WARN"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->traceLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 101
    const-string v0, "LogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const-string v0, "WARN"

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->traceThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    return-void
.end method
