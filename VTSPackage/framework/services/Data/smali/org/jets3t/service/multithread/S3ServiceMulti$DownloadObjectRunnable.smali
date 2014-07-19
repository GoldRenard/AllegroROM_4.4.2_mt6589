.class Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadObjectRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/S3Bucket;

.field private downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

.field private interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

.field private objectKey:Ljava/lang/String;

.field private progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

.field private restoreLastModifiedDate:Z

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Lorg/jets3t/service/multithread/DownloadPackage;Lorg/jets3t/service/io/BytesProgressWatcher;Z)V
    .locals 2
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "downloadPackage"    # Lorg/jets3t/service/multithread/DownloadPackage;
    .param p5, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p6, "restoreLastModifiedDate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2279
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2268
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    .line 2269
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2270
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    .line 2271
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 2272
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 2275
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->result:Ljava/lang/Object;

    .line 2280
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2281
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    .line 2282
    iput-object p4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    .line 2283
    iput-object p5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2284
    iput-boolean p6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 2285
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/DownloadPackage;Lorg/jets3t/service/io/BytesProgressWatcher;Z)V
    .locals 2
    .param p2, "downloadPackage"    # Lorg/jets3t/service/multithread/DownloadPackage;
    .param p3, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p4, "restoreLastModifiedDate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2289
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2268
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    .line 2269
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2270
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    .line 2271
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 2272
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 2275
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->result:Ljava/lang/Object;

    .line 2290
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    .line 2291
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2292
    iput-boolean p4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 2293
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    if-eqz v0, :cond_0

    .line 2433
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v0}, Lorg/jets3t/service/io/InterruptableInputStream;->interrupt()V

    .line 2435
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2427
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 19

    .prologue
    .line 2296
    const/4 v3, 0x0

    .line 2297
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 2298
    .local v5, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v14, 0x0

    .line 2301
    .local v14, "object":Lorg/jets3t/service/model/S3Object;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/multithread/DownloadPackage;->isSignedDownload()Z

    move-result v16

    if-nez v16, :cond_6

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    move-object/from16 v16, v0

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static/range {v16 .. v16}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lorg/jets3t/service/S3Service;->getObject(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v14

    .line 2309
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/jets3t/service/multi/DownloadPackage;->setObject(Lorg/jets3t/service/model/StorageObject;)V

    .line 2312
    new-instance v16, Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/jets3t/service/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 2313
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v16, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    move-object/from16 v18, v0

    invoke-direct/range {v16 .. v18}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2316
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v4, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/multi/DownloadPackage;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 2319
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .local v6, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 2321
    .local v12, "messageDigest":Ljava/security/MessageDigest;
    :try_start_2
    const-string v16, "MD5"

    invoke-static/range {v16 .. v16}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v12

    .line 2329
    :cond_0
    :goto_1
    const/16 v16, 0x400

    :try_start_3
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 2330
    .local v2, "buffer":[B
    const/4 v7, -0x1

    .line 2332
    .local v7, "byteCount":I
    :cond_1
    :goto_2
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v7, v0, :cond_9

    .line 2333
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v2, v0, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 2335
    if-eqz v12, :cond_1

    .line 2336
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v2, v0, v7}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2372
    .end local v2    # "buffer":[B
    .end local v7    # "byteCount":I
    :catchall_0
    move-exception v16

    if-eqz v6, :cond_2

    .line 2373
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 2375
    :cond_2
    if-eqz v4, :cond_3

    .line 2376
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_3
    throw v16
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2401
    :catch_0
    move-exception v15

    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 2402
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v12    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v15, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->result:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2404
    if-eqz v3, :cond_4

    .line 2406
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 2413
    :cond_4
    :goto_4
    if-eqz v5, :cond_5

    .line 2415
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 2423
    .end local v15    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_5
    return-void

    .line 2304
    :cond_6
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    move-object/from16 v16, v0

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static/range {v16 .. v16}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v10

    .line 2305
    .local v10, "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/multithread/DownloadPackage;->getSignedUrl()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;->getObjectWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v14

    goto/16 :goto_0

    .line 2322
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .end local v10    # "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v12    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v9

    .line 2323
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_9
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2324
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    const-string v17, "Unable to calculate MD5 hash of data received as algorithm is not available"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    .line 2404
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_1
    move-exception v16

    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v12    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_6
    if-eqz v3, :cond_7

    .line 2406
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 2413
    :cond_7
    :goto_7
    if-eqz v5, :cond_8

    .line 2415
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 2420
    :cond_8
    :goto_8
    throw v16

    .line 2341
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "byteCount":I
    .restart local v12    # "messageDigest":Ljava/security/MessageDigest;
    :cond_9
    if-eqz v12, :cond_a

    .line 2342
    :try_start_c
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 2343
    .local v8, "dataMD5Hash":[B
    invoke-static {v8}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;

    move-result-object v11

    .line 2346
    .local v11, "hexMD5OfDownloadedData":Ljava/lang/String;
    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/jets3t/service/utils/ServiceUtils;->isEtagAlsoAnMD5Hash(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_10

    .line 2348
    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsHex()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_a

    .line 2349
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2350
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unable to verify MD5 hash of downloaded data against ETag returned by service because ETag value \""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\" is not an MD5 hash value"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", for object key: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 2372
    .end local v8    # "dataMD5Hash":[B
    .end local v11    # "hexMD5OfDownloadedData":Ljava/lang/String;
    :cond_a
    :goto_9
    if-eqz v6, :cond_b

    .line 2373
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 2375
    :cond_b
    if-eqz v4, :cond_c

    .line 2376
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    .line 2380
    :cond_c
    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/jets3t/service/model/StorageObject;->setDataInputFile(Ljava/io/File;)V

    .line 2385
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v16

    if-eqz v16, :cond_e

    .line 2386
    const-string v16, "jets3t-original-file-date-iso8601"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2389
    .local v13, "metadataLocalFileDate":Ljava/lang/String;
    if-eqz v13, :cond_e

    .line 2390
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_d

    .line 2391
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Restoring original Last Modified date for object \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\' to file \'"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\': "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2395
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multithread/DownloadPackage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v16

    invoke-static {v13}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Ljava/io/File;->setLastModified(J)Z

    .line 2400
    .end local v13    # "metadataLocalFileDate":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;->result:Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 2404
    if-eqz v4, :cond_f

    .line 2406
    :try_start_e
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    .line 2413
    :cond_f
    :goto_a
    if-eqz v6, :cond_13

    .line 2415
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 2420
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .line 2357
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v8    # "dataMD5Hash":[B
    .restart local v11    # "hexMD5OfDownloadedData":Ljava/lang/String;
    :cond_10
    :try_start_10
    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11

    .line 2358
    new-instance v16, Lorg/jets3t/service/S3ServiceException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Mismatch between MD5 hash of downloaded data ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") and ETag returned by S3 ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ") for object key: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 2363
    :cond_11
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 2364
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Object download was automatically verified, the calculated MD5 hash value matched the ETag provided by S3: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_9

    .line 2407
    .end local v8    # "dataMD5Hash":[B
    .end local v11    # "hexMD5OfDownloadedData":Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 2408
    .local v9, "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v16

    if-eqz v16, :cond_f

    .line 2409
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    const-string v17, "Unable to close Object input stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 2416
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 2417
    .restart local v9    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v16

    if-eqz v16, :cond_12

    .line 2418
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    const-string v17, "Unable to close download output stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_12
    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 2420
    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .line 2407
    .end local v2    # "buffer":[B
    .end local v7    # "byteCount":I
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v15    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v9

    .line 2408
    .restart local v9    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 2409
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    const-string v17, "Unable to close Object input stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 2416
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 2417
    .restart local v9    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 2418
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v16

    const-string v17, "Unable to close download output stream"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 2407
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v9

    .line 2408
    .restart local v9    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 2409
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v17

    const-string v18, "Unable to close Object input stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 2416
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 2417
    .restart local v9    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 2418
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v17

    const-string v18, "Unable to close download output stream"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2404
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v16

    goto/16 :goto_6

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v16

    move-object v3, v4

    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .line 2401
    :catch_8
    move-exception v15

    goto/16 :goto_3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v15

    move-object v3, v4

    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "byteCount":I
    .restart local v12    # "messageDigest":Ljava/security/MessageDigest;
    :cond_13
    move-object v5, v6

    .end local v6    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_5
.end method
