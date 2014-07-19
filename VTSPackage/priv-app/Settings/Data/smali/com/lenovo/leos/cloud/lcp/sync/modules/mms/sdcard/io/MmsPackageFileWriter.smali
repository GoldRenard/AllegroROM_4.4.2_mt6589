.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;
.source "MmsPackageFileWriter.java"


# static fields
.field public static final MMS_DIR:Ljava/lang/String; = "mmsFileData"

.field private static final TAG:Ljava/lang/String; = "MmsPackageFileWriter"


# instance fields
.field private context:Landroid/content/Context;

.field private exportDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "modeName"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private getFileInStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .param p1, "sourceFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v0, "fis":Ljava/io/FileInputStream;
    return-object v0
.end method

.method private getFileOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 1
    .param p1, "outputDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 64
    .local v0, "fos":Ljava/io/FileOutputStream;
    return-object v0
.end method

.method private initExportDir(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    .local v0, "subDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 127
    .local v1, "success":Z
    if-nez v1, :cond_0

    .line 128
    const-string v2, "MmsPackageFileWriter"

    const-string v3, "initExportDir- mkdirs failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v1    # "success":Z
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
    .line 136
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private prepareExportDir(JILjava/lang/String;)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "count"    # I
    .param p4, "fileFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 113
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->modeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->format:Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportFilePath(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->initExportDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "-tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 117
    invoke-direct {p0, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->initExportDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    goto :goto_0
.end method


# virtual methods
.method public convert2RealFile()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    .line 142
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

    .line 143
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "tempDirName":Ljava/lang/String;
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "realDirName":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    .line 146
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

    .line 149
    .end local v0    # "realDirName":Ljava/lang/String;
    .end local v1    # "success":Z
    .end local v3    # "tempDirName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public copyToFile(Ljava/io/File;JILjava/lang/String;)V
    .locals 7
    .param p1, "sourceFile"    # Ljava/io/File;
    .param p2, "time"    # J
    .param p4, "count"    # I
    .param p5, "fileFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->prepareExportDir(JILjava/lang/String;)V

    .line 42
    const-string v5, "mmsFileData"

    invoke-direct {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->initExportDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 45
    .local v4, "softwareDir":Ljava/io/File;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->getFileInStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 46
    .local v1, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v3, "outputFile":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->getFileOutStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 48
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "outputFile":Ljava/io/File;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "MmsPackageFileWriter"

    const-string v6, "MmsPackageFileWriter.copyToFile IOException "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteFile(JI)Z
    .locals 7
    .param p1, "time"    # J
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->modeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->format:Ljava/lang/String;

    move-wide v2, p1

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportFilePath(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v6, "deleteFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->deleteFile(Ljava/io/File;)Z

    move-result v0

    .line 108
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public writeMetaData(Landroid/content/Context;JILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backupTime"    # J
    .param p4, "dataNumber"    # I
    .param p5, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;-><init>()V

    .line 69
    .local v0, "info":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;
    iput-wide p2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->backupTime:J

    .line 70
    iput p4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->dataNumber:I

    .line 71
    iput-object p5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->moduleName:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->writeMetaData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;)V

    .line 74
    return-void
.end method

.method public writeMetaData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    iget-wide v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->backupTime:J

    iget v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->dataNumber:I

    iget-object v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->fileFullPath:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->prepareExportDir(JILjava/lang/String;)V

    .line 80
    const-string v2, "info.mt"

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->initExportFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 82
    .local v0, "infoFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->outputStreamToWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v1

    .line 83
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    new-array v2, v7, [Ljava/io/Closeable;

    .line 85
    aput-object v1, v2, v6

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 87
    return-void

    .line 84
    .end local v0    # "infoFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    new-array v3, v7, [Ljava/io/Closeable;

    .line 85
    aput-object v1, v3, v6

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 86
    throw v2
.end method

.method public writeToFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;IJIZLjava/lang/String;)V
    .locals 5
    .param p1, "export"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;
    .param p2, "index"    # I
    .param p3, "time"    # J
    .param p5, "count"    # I
    .param p6, "isFinish"    # Z
    .param p7, "fileFullPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "writer":Ljava/io/Writer;
    :try_start_0
    invoke-direct {p0, p3, p4, p5, p7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->prepareExportDir(JILjava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->exportDir:Ljava/io/File;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->getExportZipInnerFileName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->initExportFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 96
    .local v0, "infoFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->outputStreamToWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    new-array v2, v3, [Ljava/io/Closeable;

    .line 99
    aput-object v1, v2, v4

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 101
    return-void

    .line 98
    .end local v0    # "infoFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    new-array v3, v3, [Ljava/io/Closeable;

    .line 99
    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 100
    throw v2
.end method
