.class public Lorg/jets3t/service/utils/ObjectUtils;
.super Ljava/lang/Object;
.source "ObjectUtils.java"


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lorg/jets3t/service/utils/ObjectUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/ObjectUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDirPlaceholderKeyNameToDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "objectKey"    # Ljava/lang/String;

    .prologue
    .line 406
    move-object v0, p0

    .line 407
    .local v0, "dirPlaceholderKey":Ljava/lang/String;
    const-string v2, "_$folder$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const-string v2, "_$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 409
    .local v1, "suffixPos":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 411
    .end local v1    # "suffixPos":I
    :cond_0
    sget-object v2, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/jets3t/service/Constants;->FILE_PATH_DELIM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    :cond_1
    return-object v0
.end method

.method public static createObjectForUpload(Ljava/lang/String;Ljava/io/File;Lorg/jets3t/service/security/EncryptionUtil;Z)Lorg/jets3t/service/model/S3Object;
    .locals 1
    .param p0, "objectKey"    # Ljava/lang/String;
    .param p1, "dataFile"    # Ljava/io/File;
    .param p2, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;
    .param p3, "gzipFile"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/jets3t/service/utils/ObjectUtils;->createObjectForUpload(Ljava/lang/String;Ljava/io/File;Lorg/jets3t/service/security/EncryptionUtil;ZLorg/jets3t/service/io/BytesProgressWatcher;)Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    return-object v0
.end method

.method public static createObjectForUpload(Ljava/lang/String;Ljava/io/File;Lorg/jets3t/service/security/EncryptionUtil;ZLorg/jets3t/service/io/BytesProgressWatcher;)Lorg/jets3t/service/model/S3Object;
    .locals 8
    .param p0, "objectKey"    # Ljava/lang/String;
    .param p1, "dataFile"    # Ljava/io/File;
    .param p2, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;
    .param p3, "gzipFile"    # Z
    .param p4, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Lorg/jets3t/service/model/S3Object;

    invoke-direct {v2, p0}, Lorg/jets3t/service/model/S3Object;-><init>(Ljava/lang/String;)V

    .line 96
    .local v2, "s3Object":Lorg/jets3t/service/model/S3Object;
    sget-object v4, Lorg/jets3t/service/acl/AccessControlList;->REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/AccessControlList;

    invoke-virtual {v2, v4}, Lorg/jets3t/service/model/S3Object;->setAcl(Lorg/jets3t/service/acl/AccessControlList;)V

    .line 98
    const-string v4, "jets3t-original-file-date-iso8601"

    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lorg/jets3t/service/utils/ServiceUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 103
    const-string v4, "binary/octet-stream"

    invoke-virtual {v2, v4}, Lorg/jets3t/service/model/StorageObject;->setContentType(Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :cond_1
    invoke-static {}, Lorg/jets3t/service/utils/Mimetypes;->getInstance()Lorg/jets3t/service/utils/Mimetypes;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/jets3t/service/utils/Mimetypes;->getMimetype(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jets3t/service/model/StorageObject;->setContentType(Ljava/lang/String;)V

    .line 106
    invoke-static {p1, v2, p2, p3, p4}, Lorg/jets3t/service/utils/ObjectUtils;->transformUploadFile(Ljava/io/File;Lorg/jets3t/service/model/S3Object;Lorg/jets3t/service/security/EncryptionUtil;ZLorg/jets3t/service/io/BytesProgressWatcher;)Ljava/io/File;

    move-result-object v3

    .line 108
    .local v3, "uploadFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 109
    invoke-virtual {v2, v3}, Lorg/jets3t/service/model/StorageObject;->setDataInputFile(Ljava/io/File;)V

    .line 112
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 113
    .local v0, "inputStream":Ljava/io/InputStream;
    if-eqz p4, :cond_2

    .line 114
    new-instance v1, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    invoke-direct {v1, v0, p4}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v0, v1

    .line 116
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_2
    invoke-static {v0}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/jets3t/service/model/StorageObject;->setMd5Hash([B)V

    .line 118
    invoke-virtual {v3, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    new-instance v0, Ljava/io/BufferedInputStream;

    .end local v0    # "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 122
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    if-eqz p4, :cond_3

    .line 123
    new-instance v1, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    invoke-direct {v1, v0, p4}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    move-object v0, v1

    .line 126
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_3
    const-string v4, "original-md5-hash"

    invoke-static {v0}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-static {v5}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createPackageForDownload(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;ZZLjava/lang/String;)Lorg/jets3t/service/multi/DownloadPackage;
    .locals 6
    .param p0, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p1, "fileTarget"    # Ljava/io/File;
    .param p2, "automaticUnzip"    # Z
    .param p3, "automaticDecrypt"    # Z
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->isDirectoryPlaceholder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    const/4 v4, 0x0

    .line 330
    :goto_0
    return-object v4

    .line 300
    :cond_0
    const/4 v2, 0x0

    .line 301
    .local v2, "isZipped":Z
    const/4 v1, 0x0

    .line 303
    .local v1, "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    if-eqz p2, :cond_2

    const-string v4, "gzip"

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jets3t-compression"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->containsMetadata(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    :cond_1
    const/4 v2, 0x1

    .line 310
    :cond_2
    if-eqz p3, :cond_5

    const-string v4, "jets3t-crypto-alg"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->containsMetadata(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 314
    if-nez p4, :cond_3

    .line 315
    new-instance v4, Lorg/jets3t/service/ServiceException;

    const-string v5, "One or more objects are encrypted, and cannot be downloaded unless  the encyption password is provided"

    invoke-direct {v4, v5}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :cond_3
    const-string v4, "jets3t-crypto-alg"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, "algorithm":Ljava/lang/String;
    const-string v4, "jets3t-crypto-ver"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 324
    .local v3, "version":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 325
    const-string v3, "2"

    .line 327
    :cond_4
    new-instance v1, Lorg/jets3t/service/security/EncryptionUtil;

    .end local v1    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    invoke-direct {v1, p4, v0, v3}, Lorg/jets3t/service/security/EncryptionUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .restart local v1    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    :cond_5
    new-instance v4, Lorg/jets3t/service/multi/DownloadPackage;

    invoke-direct {v4, p0, p1, v2, v1}, Lorg/jets3t/service/multi/DownloadPackage;-><init>(Lorg/jets3t/service/model/StorageObject;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V

    goto :goto_0
.end method

.method public static createPackageForDownload(Lorg/jets3t/service/model/S3Object;Ljava/io/File;ZZLjava/lang/String;)Lorg/jets3t/service/multithread/DownloadPackage;
    .locals 6
    .param p0, "object"    # Lorg/jets3t/service/model/S3Object;
    .param p1, "fileTarget"    # Ljava/io/File;
    .param p2, "automaticUnzip"    # Z
    .param p3, "automaticDecrypt"    # Z
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->isDirectoryPlaceholder()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    const/4 v4, 0x0

    .line 400
    :goto_0
    return-object v4

    .line 370
    :cond_0
    const/4 v2, 0x0

    .line 371
    .local v2, "isZipped":Z
    const/4 v1, 0x0

    .line 373
    .local v1, "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    if-eqz p2, :cond_2

    const-string v4, "gzip"

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getContentEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "jets3t-compression"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->containsMetadata(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 378
    :cond_1
    const/4 v2, 0x1

    .line 380
    :cond_2
    if-eqz p3, :cond_5

    const-string v4, "jets3t-crypto-alg"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->containsMetadata(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 384
    if-nez p4, :cond_3

    .line 385
    new-instance v4, Lorg/jets3t/service/ServiceException;

    const-string v5, "One or more objects are encrypted, and cannot be downloaded unless  the encyption password is provided"

    invoke-direct {v4, v5}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 390
    :cond_3
    const-string v4, "jets3t-crypto-alg"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 392
    .local v0, "algorithm":Ljava/lang/String;
    const-string v4, "jets3t-crypto-ver"

    invoke-virtual {p0, v4}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    .local v3, "version":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 395
    const-string v3, "2"

    .line 397
    :cond_4
    new-instance v1, Lorg/jets3t/service/security/EncryptionUtil;

    .end local v1    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    invoke-direct {v1, p4, v0, v3}, Lorg/jets3t/service/security/EncryptionUtil;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .restart local v1    # "encryptionUtil":Lorg/jets3t/service/security/EncryptionUtil;
    :cond_5
    new-instance v4, Lorg/jets3t/service/multithread/DownloadPackage;

    invoke-direct {v4, p0, p1, v2, v1}, Lorg/jets3t/service/multithread/DownloadPackage;-><init>(Lorg/jets3t/service/model/S3Object;Ljava/io/File;ZLorg/jets3t/service/security/EncryptionUtil;)V

    goto :goto_0
.end method

.method private static transformUploadFile(Ljava/io/File;Lorg/jets3t/service/model/S3Object;Lorg/jets3t/service/security/EncryptionUtil;ZLorg/jets3t/service/io/BytesProgressWatcher;)Ljava/io/File;
    .locals 13
    .param p0, "dataFile"    # Ljava/io/File;
    .param p1, "s3Object"    # Lorg/jets3t/service/model/S3Object;
    .param p2, "encryptionUtil"    # Lorg/jets3t/service/security/EncryptionUtil;
    .param p3, "gzipFile"    # Z
    .param p4, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    if-nez p3, :cond_0

    if-nez p2, :cond_0

    .line 266
    .end local p0    # "dataFile":Ljava/io/File;
    :goto_0
    return-object p0

    .line 207
    .restart local p0    # "dataFile":Ljava/io/File;
    :cond_0
    const-string v1, ""

    .line 210
    .local v1, "actionText":Ljava/lang/String;
    new-instance v9, Lorg/jets3t/service/io/TempFile;

    const-string v10, "JetS3t"

    const-string v11, ".tmp"

    invoke-static {v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/jets3t/service/io/TempFile;-><init>(Ljava/io/File;)V

    .line 211
    .local v9, "tempUploadFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->deleteOnExit()V

    .line 214
    const/4 v7, 0x0

    .line 215
    .local v7, "outputStream":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 218
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .local v6, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 221
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .local v8, "outputStream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 222
    .local v4, "contentEncoding":Ljava/lang/String;
    if-eqz p3, :cond_b

    .line 223
    :try_start_2
    new-instance v5, Lorg/jets3t/service/io/GZipDeflatingInputStream;

    invoke-direct {v5, v6}, Lorg/jets3t/service/io/GZipDeflatingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 224
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :try_start_3
    const-string v4, "gzip"

    .line 225
    const-string v10, "jets3t-compression"

    const-string v11, "gzip"

    invoke-virtual {p1, v10, v11}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Compressing"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_1
    if-eqz p2, :cond_a

    .line 229
    invoke-virtual {p2, v5}, Lorg/jets3t/service/security/EncryptionUtil;->encrypt(Ljava/io/InputStream;)Ljavax/crypto/CipherInputStream;

    move-result-object v5

    .line 230
    const/4 v4, 0x0

    .line 231
    const-string v10, "application/octet-stream"

    invoke-virtual {p1, v10}, Lorg/jets3t/service/model/StorageObject;->setContentType(Ljava/lang/String;)V

    .line 232
    const-string v10, "jets3t-crypto-alg"

    invoke-virtual {p2}, Lorg/jets3t/service/security/EncryptionUtil;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v10, v11}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v10, "jets3t-crypto-ver"

    const-string v11, "2"

    invoke-virtual {p1, v10, v11}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "Encrypting"

    :goto_2
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    move-object v6, v5

    .line 238
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :goto_3
    if-eqz v4, :cond_1

    .line 239
    :try_start_4
    const-string v10, "Content-Encoding"

    invoke-virtual {p1, v10, v4}, Lorg/jets3t/service/model/StorageObject;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    sget-object v10, Lorg/jets3t/service/utils/ObjectUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 243
    sget-object v10, Lorg/jets3t/service/utils/ObjectUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transforming upload file \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\' to temporary file \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\': "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 247
    :cond_2
    if-eqz p4, :cond_9

    .line 248
    new-instance v5, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    move-object/from16 v0, p4

    invoke-direct {v5, v6, v0}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 252
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :goto_4
    const/16 v10, 0x2000

    :try_start_5
    new-array v2, v10, [B

    .line 253
    .local v2, "buffer":[B
    const/4 v3, -0x1

    .line 254
    .local v3, "c":I
    :goto_5
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_6

    .line 255
    const/4 v10, 0x0

    invoke-virtual {v8, v2, v10, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 258
    .end local v2    # "buffer":[B
    .end local v3    # "c":I
    :catchall_0
    move-exception v10

    move-object v7, v8

    .end local v4    # "contentEncoding":Ljava/lang/String;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :goto_6
    if-eqz v5, :cond_3

    .line 259
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_3
    if-eqz v7, :cond_4

    .line 262
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V

    :cond_4
    throw v10

    .line 236
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "contentEncoding":Ljava/lang/String;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :cond_5
    :try_start_6
    const-string v10, " and encrypting"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 258
    .restart local v2    # "buffer":[B
    .restart local v3    # "c":I
    :cond_6
    if-eqz v5, :cond_7

    .line 259
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 261
    :cond_7
    if-eqz v8, :cond_8

    .line 262
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V

    :cond_8
    move-object p0, v9

    .line 266
    goto/16 :goto_0

    .line 258
    .end local v2    # "buffer":[B
    .end local v3    # "c":I
    .end local v4    # "contentEncoding":Ljava/lang/String;
    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v10

    goto :goto_6

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_6

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v4    # "contentEncoding":Ljava/lang/String;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :catchall_3
    move-exception v10

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    move-object v7, v8

    .end local v8    # "outputStream":Ljava/io/OutputStream;
    .restart local v7    # "outputStream":Ljava/io/OutputStream;
    goto :goto_6

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "outputStream":Ljava/io/OutputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "outputStream":Ljava/io/OutputStream;
    :cond_9
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    :cond_a
    move-object v6, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_3

    :cond_b
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_1
.end method
