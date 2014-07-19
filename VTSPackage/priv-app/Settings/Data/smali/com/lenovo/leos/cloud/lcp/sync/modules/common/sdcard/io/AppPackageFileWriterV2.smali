.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;
.source "AppPackageFileWriterV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;
    }
.end annotation


# static fields
.field public static final APP_DATA_DIR:Ljava/lang/String; = "data"

.field public static final APP_DIR:Ljava/lang/String; = "software"

.field private static final BUFFER:[B

.field private static final BUFFER_CACHE_SIZE:I = 0x1000

.field private static final FORMAT:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "AppPackageFileWriterV2"


# instance fields
.field private exportDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->BUFFER:[B

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "modeName"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private getAppFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "appInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFileInStream(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/io/FileInputStream;
    .locals 2
    .param p1, "appInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->asFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 86
    .local v0, "fis":Ljava/io/FileInputStream;
    return-object v0
.end method

.method private getFileOutStream(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/io/FileOutputStream;
    .locals 3
    .param p1, "softwareDir"    # Ljava/io/File;
    .param p2, "appInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->getAppFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v0, "fos":Ljava/io/FileOutputStream;
    return-object v0
.end method

.method private initExportDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 159
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v0, "subDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    const-string v1, "AppPackageFileWriterV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mkdirs fail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-object v0
.end method

.method private initExportFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private prepareExportDir(Landroid/content/Context;JILjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J
    .param p4, "count"    # I
    .param p5, "fileFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 136
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->modeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->format:Ljava/lang/String;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportFilePath(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->initExportDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 140
    invoke-direct {p0, p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->initExportDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public convert2RealFile()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    .line 148
    .local v2, "tempDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "tempDirName":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "realDirName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 152
    .local v1, "success":Z
    const-string v4, "#####"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "convert2RealFile----------"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v0    # "realDirName":Ljava/lang/String;
    .end local v1    # "success":Z
    .end local v3    # "tempDirName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public copyToFile(Landroid/content/Context;Ljava/util/List;JLcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;Ljava/lang/String;)V
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "time"    # J
    .param p5, "listener"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;
    .param p6, "fileFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;",
            ">;J",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;>;"
    const/4 v15, 0x0

    .line 40
    .local v15, "fos":Ljava/io/FileOutputStream;
    const/4 v14, 0x0

    .line 41
    .local v14, "fis":Ljava/io/FileInputStream;
    const-wide/16 v20, 0x0

    .line 42
    .local v20, "total":J
    const-wide/16 v10, 0x0

    .line 44
    .local v10, "cur":J
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p3

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->prepareExportDir(Landroid/content/Context;JILjava/lang/String;)V

    .line 46
    const-string v2, "software"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->initExportDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v19

    .line 48
    .local v19, "softwareDir":Ljava/io/File;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 52
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-lt v0, v2, :cond_1

    .line 80
    return-void

    .line 48
    .end local v16    # "i":I
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;

    .line 49
    .local v18, "localAppInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    invoke-interface/range {v18 .. v18}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getSize()J

    move-result-wide v3

    add-long v20, v20, v3

    goto :goto_0

    .line 54
    .end local v18    # "localAppInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    .restart local v16    # "i":I
    :cond_1
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .line 55
    .local v8, "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->getFileInStream(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/io/FileInputStream;

    move-result-object v14

    .line 56
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->getFileOutStream(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/io/FileOutputStream;

    move-result-object v15

    .line 58
    const/16 v17, 0x0

    .line 59
    .local v17, "len":I
    :goto_2
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->BUFFER:[B

    invoke-virtual {v14, v2}, Ljava/io/InputStream;->read([B)I

    move-result v17

    const/4 v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_2

    .line 68
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;-><init>(Landroid/content/Context;)V

    .line 69
    .local v9, "backupUtils":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;
    const-string v2, "data"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->initExportDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 71
    .local v12, "dataDir":Ljava/io/File;
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v9, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->backupDataToSD(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 73
    add-int/lit8 v2, v16, 0x1

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;->onAppUpdate(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 77
    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 52
    .end local v8    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v9    # "backupUtils":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;
    .end local v12    # "dataDir":Ljava/io/File;
    .end local v17    # "len":I
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 60
    .restart local v8    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .restart local v17    # "len":I
    :cond_2
    :try_start_1
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->BUFFER:[B

    invoke-virtual {v15, v2}, Ljava/io/OutputStream;->write([B)V

    .line 62
    move/from16 v0, v17

    int-to-long v2, v0

    add-long/2addr v10, v2

    .line 63
    const/16 v22, 0x5a

    .line 64
    .local v22, "total90":I
    long-to-double v2, v10

    move-wide/from16 v0, v20

    long-to-double v4, v0

    div-double/2addr v2, v4

    move/from16 v0, v22

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;->onUpdate(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 74
    .end local v8    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .end local v17    # "len":I
    .end local v22    # "total90":I
    :catch_0
    move-exception v13

    .line 75
    .local v13, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "AppPackageFileWriterV2"

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 77
    aput-object v14, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_3

    .line 76
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v4, 0x0

    .line 77
    aput-object v14, v3, v4

    const/4 v4, 0x1

    aput-object v15, v3, v4

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 78
    throw v2
.end method

.method public deleteFile(Landroid/content/Context;JI)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v6, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->modeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->format:Ljava/lang/String;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportFilePath(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .local v6, "deleteFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    .line 131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeMetaData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 98
    const/4 v7, 0x0

    .line 100
    .local v7, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    iget-wide v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->backupTime:J

    iget v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->dataNumber:I

    iget-object v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->fileFullPath:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->prepareExportDir(Landroid/content/Context;JILjava/lang/String;)V

    .line 102
    const-string v0, "info.mt"

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->initExportFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 104
    .local v6, "infoFile":Ljava/io/File;
    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .local v8, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    new-array v0, v10, [Ljava/io/Closeable;

    .line 107
    aput-object v8, v0, v9

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 109
    return-void

    .line 106
    .end local v6    # "infoFile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v0

    :goto_0
    new-array v1, v10, [Ljava/io/Closeable;

    .line 107
    aput-object v7, v1, v9

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 108
    throw v0

    .line 106
    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "infoFile":Ljava/io/File;
    .restart local v8    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method

.method public writeToFile(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;IJIZLjava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "export"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;
    .param p3, "index"    # I
    .param p4, "time"    # J
    .param p6, "count"    # I
    .param p7, "isFinish"    # Z
    .param p8, "fileFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v7, 0x0

    .local v7, "writer":Ljava/io/OutputStreamWriter;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move v4, p6

    move-object/from16 v5, p8

    .line 115
    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->prepareExportDir(Landroid/content/Context;JILjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->exportDir:Ljava/io/File;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportZipInnerFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->initExportFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 119
    .local v6, "infoFile":Ljava/io/File;
    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .local v8, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 122
    aput-object v8, v0, v1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 124
    return-void

    .line 121
    .end local v6    # "infoFile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v0

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/io/Closeable;

    const/4 v2, 0x0

    .line 122
    aput-object v7, v1, v2

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 123
    throw v0

    .line 121
    .end local v7    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v6    # "infoFile":Ljava/io/File;
    .restart local v8    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v7    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method
