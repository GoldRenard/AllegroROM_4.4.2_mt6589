.class public Lorg/jets3t/service/utils/MultipartUtils;
.super Ljava/lang/Object;
.source "MultipartUtils.java"


# static fields
.field public static final MAX_OBJECT_SIZE:J = 0x40000000L

.field public static final MIN_PART_SIZE:J = 0x500000L

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected maxPartSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/jets3t/service/utils/MultipartUtils;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/MultipartUtils;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-wide/32 v0, 0x40000000

    iput-wide v0, p0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    .line 92
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7
    .param p1, "maxPartSize"    # J

    .prologue
    const-wide/32 v5, 0x500000

    const-wide/32 v3, 0x40000000

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide v3, p0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    .line 77
    cmp-long v0, p1, v5

    if-gez v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum part size parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is less than the minimum legal part size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_1

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum part size parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is greater than the maximum legal upload object size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iput-wide p1, p0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    .line 86
    return-void
.end method


# virtual methods
.method public getMaxPartSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    return-wide v0
.end method

.method public isFileLargerThanMaxPartSize(Ljava/io/File;)Z
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 108
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public splitFileIntoObjectsByMaxPartSize(Ljava/lang/String;Ljava/io/File;)Ljava/util/List;
    .locals 20
    .param p1, "objectKey"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/S3Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 132
    .local v8, "fileLength":J
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    div-long v4, v8, v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    move-wide/from16 v16, v0

    rem-long v16, v8, v16

    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v4, v16

    .line 134
    .local v14, "partCount":J
    sget-object v3, Lorg/jets3t/service/utils/MultipartUtils;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    sget-object v3, Lorg/jets3t/service/utils/MultipartUtils;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Splitting file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " object parts with a maximum part size of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 140
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .local v10, "multipartPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jets3t/service/model/S3Object;>;"
    const/4 v2, 0x0

    .line 143
    .local v2, "segFIS":Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
    const-wide/16 v12, 0x0

    .local v12, "offset":J
    :goto_1
    cmp-long v3, v12, v14

    if-gez v3, :cond_4

    .line 144
    new-instance v11, Lorg/jets3t/service/model/S3Object;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lorg/jets3t/service/model/S3Object;-><init>(Ljava/lang/String;)V

    .line 145
    .local v11, "object":Lorg/jets3t/service/model/S3Object;
    const-wide/16 v3, 0x1

    sub-long v3, v14, v3

    cmp-long v3, v12, v3

    if-gez v3, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    invoke-virtual {v11, v3, v4}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 147
    new-instance v2, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;

    .end local v2    # "segFIS":Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    mul-long v4, v12, v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;-><init>(Ljava/io/File;JJ)V

    .line 160
    .restart local v2    # "segFIS":Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
    :goto_2
    invoke-virtual {v2}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;->available()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v11, v3, v4}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 161
    invoke-virtual {v11, v2}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 164
    invoke-static {v2}, Lorg/jets3t/service/utils/ServiceUtils;->computeMD5Hash(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-virtual {v11, v3}, Lorg/jets3t/service/model/StorageObject;->setMd5Hash([B)V

    .line 165
    invoke-virtual {v2}, Lorg/jets3t/service/io/RepeatableFileInputStream;->reset()V

    .line 167
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    const-wide/16 v3, 0x1

    add-long/2addr v12, v3

    goto :goto_1

    .line 132
    .end local v2    # "segFIS":Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
    .end local v10    # "multipartPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jets3t/service/model/S3Object;>;"
    .end local v11    # "object":Lorg/jets3t/service/model/S3Object;
    .end local v12    # "offset":J
    .end local v14    # "partCount":J
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 151
    .restart local v2    # "segFIS":Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
    .restart local v10    # "multipartPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/jets3t/service/model/S3Object;>;"
    .restart local v11    # "object":Lorg/jets3t/service/model/S3Object;
    .restart local v12    # "offset":J
    .restart local v14    # "partCount":J
    :cond_2
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    rem-long v6, v8, v3

    .line 153
    .local v6, "partLength":J
    const-wide/16 v3, 0x0

    cmp-long v3, v6, v3

    if-nez v3, :cond_3

    .line 154
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    .line 156
    :cond_3
    invoke-virtual {v11, v6, v7}, Lorg/jets3t/service/model/StorageObject;->setContentLength(J)V

    .line 157
    new-instance v2, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;

    .end local v2    # "segFIS":Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lorg/jets3t/service/utils/MultipartUtils;->maxPartSize:J

    mul-long v4, v12, v3

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;-><init>(Ljava/io/File;JJ)V

    .restart local v2    # "segFIS":Lorg/jets3t/service/io/SegmentedRepeatableFileInputStream;
    goto :goto_2

    .line 169
    .end local v6    # "partLength":J
    .end local v11    # "object":Lorg/jets3t/service/model/S3Object;
    :cond_4
    return-object v10
.end method

.method protected throwServiceEventAdaptorErrorIfPresent(Lorg/jets3t/service/multi/s3/S3ServiceEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Lorg/jets3t/service/multi/s3/S3ServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    instance-of v0, p1, Lorg/jets3t/service/multi/s3/S3ServiceEventAdaptor;

    if-eqz v0, :cond_0

    .line 280
    check-cast p1, Lorg/jets3t/service/multi/s3/S3ServiceEventAdaptor;

    .end local p1    # "eventListener":Lorg/jets3t/service/multi/s3/S3ServiceEventListener;
    invoke-virtual {p1}, Lorg/jets3t/service/multi/StorageServiceEventAdaptor;->throwErrorIfPresent()V

    .line 282
    :cond_0
    return-void
.end method

.method public uploadObjects(Ljava/lang/String;Lorg/jets3t/service/S3Service;Ljava/util/List;Lorg/jets3t/service/multi/s3/S3ServiceEventListener;)V
    .locals 13
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "s3Service"    # Lorg/jets3t/service/S3Service;
    .param p4, "eventListener"    # Lorg/jets3t/service/multi/s3/S3ServiceEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/S3Service;",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;",
            "Lorg/jets3t/service/multi/s3/S3ServiceEventListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 205
    .local p3, "objectsForMultipartUpload":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v4, "multipartUploadList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v10, "uploadAndPartsList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;>;"
    if-nez p4, :cond_2

    .line 215
    new-instance p4, Lorg/jets3t/service/multi/s3/S3ServiceEventAdaptor;

    .end local p4    # "eventListener":Lorg/jets3t/service/multi/s3/S3ServiceEventListener;
    invoke-direct/range {p4 .. p4}, Lorg/jets3t/service/multi/s3/S3ServiceEventAdaptor;-><init>()V

    .line 220
    .restart local p4    # "eventListener":Lorg/jets3t/service/multi/s3/S3ServiceEventListener;
    :cond_2
    new-instance v1, Lorg/jets3t/service/utils/MultipartUtils$1;

    invoke-direct {v1, p0, v4}, Lorg/jets3t/service/utils/MultipartUtils$1;-><init>(Lorg/jets3t/service/utils/MultipartUtils;Ljava/util/List;)V

    .line 233
    .local v1, "captureMultipartUploadObjectsEventAdaptor":Lorg/jets3t/service/multi/StorageServiceEventAdaptor;
    :try_start_0
    new-instance v8, Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    move-object/from16 v0, p4

    invoke-direct {v8, p2, v0}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    .line 235
    .local v8, "threadedS3Service":Lorg/jets3t/service/multi/s3/ThreadedS3Service;
    invoke-virtual {v8, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->addServiceEventListener(Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    .line 239
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v6, "objectsByKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jets3t/service/model/StorageObject;

    .line 242
    .local v5, "object":Lorg/jets3t/service/model/StorageObject;
    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "object":Lorg/jets3t/service/model/StorageObject;
    .end local v6    # "objectsByKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    .end local v8    # "threadedS3Service":Lorg/jets3t/service/multi/s3/ThreadedS3Service;
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/Exception;

    const-string v12, "Multipart upload failed"

    invoke-direct {v11, v12, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "objectsByKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;>;"
    .restart local v8    # "threadedS3Service":Lorg/jets3t/service/multi/s3/ThreadedS3Service;
    :cond_3
    :try_start_1
    move-object/from16 v0, p3

    invoke-virtual {v8, p1, v0}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->multipartStartUploads(Ljava/lang/String;Ljava/util/List;)Z

    .line 247
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/jets3t/service/utils/MultipartUtils;->throwServiceEventAdaptorErrorIfPresent(Lorg/jets3t/service/multi/s3/S3ServiceEventListener;)V

    .line 252
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/jets3t/service/model/MultipartUpload;

    .line 253
    .local v9, "upload":Lorg/jets3t/service/model/MultipartUpload;
    invoke-virtual {v9}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jets3t/service/model/StorageObject;

    .line 254
    .restart local v5    # "object":Lorg/jets3t/service/model/StorageObject;
    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v11

    if-nez v11, :cond_4

    .line 255
    new-instance v11, Lorg/jets3t/service/ServiceException;

    invoke-direct {v11}, Lorg/jets3t/service/ServiceException;-><init>()V

    throw v11

    .line 257
    :cond_4
    invoke-virtual {v9}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lorg/jets3t/service/utils/MultipartUtils;->splitFileIntoObjectsByMaxPartSize(Ljava/lang/String;Ljava/io/File;)Ljava/util/List;

    move-result-object v7

    .line 260
    .local v7, "partObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Object;>;"
    new-instance v11, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;

    invoke-direct {v11, v9, v7}, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;-><init>(Lorg/jets3t/service/model/MultipartUpload;Ljava/util/List;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 265
    .end local v5    # "object":Lorg/jets3t/service/model/StorageObject;
    .end local v7    # "partObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Object;>;"
    .end local v9    # "upload":Lorg/jets3t/service/model/MultipartUpload;
    :cond_5
    invoke-virtual {v8, v10}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->multipartUploadParts(Ljava/util/List;)Z

    .line 266
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/jets3t/service/utils/MultipartUtils;->throwServiceEventAdaptorErrorIfPresent(Lorg/jets3t/service/multi/s3/S3ServiceEventListener;)V

    .line 269
    invoke-virtual {v8, v4}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->multipartCompleteUploads(Ljava/util/List;)Z

    .line 270
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lorg/jets3t/service/utils/MultipartUtils;->throwServiceEventAdaptorErrorIfPresent(Lorg/jets3t/service/multi/s3/S3ServiceEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
