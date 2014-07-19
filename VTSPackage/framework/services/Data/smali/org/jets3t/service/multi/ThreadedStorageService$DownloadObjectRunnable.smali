.class Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadObjectRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

.field private interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

.field private objectKey:Ljava/lang/String;

.field private progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

.field private restoreLastModifiedDate:Z

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/multi/DownloadPackage;Lorg/jets3t/service/io/BytesProgressWatcher;Z)V
    .locals 2
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "downloadPackage"    # Lorg/jets3t/service/multi/DownloadPackage;
    .param p5, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p6, "restoreLastModifiedDate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1455
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1444
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    .line 1445
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1446
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    .line 1447
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 1448
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 1451
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->result:Ljava/lang/Object;

    .line 1456
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1457
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    .line 1458
    iput-object p4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    .line 1459
    iput-object p5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 1460
    iput-boolean p6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 1461
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Lorg/jets3t/service/multi/DownloadPackage;Lorg/jets3t/service/io/BytesProgressWatcher;Z)V
    .locals 2
    .param p2, "downloadPackage"    # Lorg/jets3t/service/multi/DownloadPackage;
    .param p3, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;
    .param p4, "restoreLastModifiedDate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1465
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1444
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    .line 1445
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1446
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    .line 1447
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 1448
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 1449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 1451
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->result:Ljava/lang/Object;

    .line 1466
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    .line 1467
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 1468
    iput-boolean p4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    .line 1469
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 1

    .prologue
    .line 1605
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    if-eqz v0, :cond_0

    .line 1606
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v0}, Lorg/jets3t/service/io/InterruptableInputStream;->interrupt()V

    .line 1608
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 17

    .prologue
    .line 1472
    const/4 v2, 0x0

    .line 1473
    .local v2, "bufferedInputStream":Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 1474
    .local v4, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v12, 0x0

    .line 1477
    .local v12, "object":Lorg/jets3t/service/model/StorageObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v14, v14, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->bucketName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->objectKey:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v14 .. v16}, Lorg/jets3t/service/StorageService;->getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v12

    .line 1481
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    invoke-virtual {v14, v12}, Lorg/jets3t/service/multi/DownloadPackage;->setObject(Lorg/jets3t/service/model/StorageObject;)V

    .line 1484
    new-instance v14, Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jets3t/service/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 1485
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v14, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    invoke-direct {v3, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1488
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v3, "bufferedInputStream":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v5, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    invoke-virtual {v14}, Lorg/jets3t/service/multi/DownloadPackage;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1491
    .end local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .local v5, "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    .line 1493
    .local v10, "messageDigest":Ljava/security/MessageDigest;
    :try_start_2
    const-string v14, "MD5"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 1501
    :cond_0
    :goto_0
    const/16 v14, 0x400

    :try_start_3
    new-array v1, v14, [B

    .line 1502
    .local v1, "buffer":[B
    const/4 v6, -0x1

    .line 1504
    .local v6, "byteCount":I
    :cond_1
    :goto_1
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v14, -0x1

    if-eq v6, v14, :cond_8

    .line 1505
    const/4 v14, 0x0

    invoke-virtual {v5, v1, v14, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1507
    if-eqz v10, :cond_1

    .line 1508
    const/4 v14, 0x0

    invoke-virtual {v10, v1, v14, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1545
    .end local v1    # "buffer":[B
    .end local v6    # "byteCount":I
    :catchall_0
    move-exception v14

    if-eqz v5, :cond_2

    .line 1546
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 1548
    :cond_2
    if-eqz v3, :cond_3

    .line 1549
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    :cond_3
    throw v14
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1574
    :catch_0
    move-exception v13

    move-object v4, v5

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 1575
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .local v13, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->result:Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1577
    if-eqz v2, :cond_4

    .line 1579
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1586
    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    .line 1588
    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1596
    .end local v13    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_4
    return-void

    .line 1494
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :catch_1
    move-exception v8

    .line 1495
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_8
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1496
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    const-string v15, "Unable to calculate MD5 hash of data received as algorithm is not available"

    invoke-interface {v14, v15, v8}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    .line 1577
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :goto_5
    if-eqz v2, :cond_6

    .line 1579
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 1586
    :cond_6
    :goto_6
    if-eqz v4, :cond_7

    .line 1588
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 1593
    :cond_7
    :goto_7
    throw v14

    .line 1513
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "byteCount":I
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :cond_8
    if-eqz v10, :cond_9

    .line 1514
    :try_start_b
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    .line 1515
    .local v7, "dataMD5Hash":[B
    invoke-static {v7}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;

    move-result-object v9

    .line 1518
    .local v9, "hexMD5OfDownloadedData":Ljava/lang/String;
    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/jets3t/service/utils/ServiceUtils;->isEtagAlsoAnMD5Hash(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_f

    .line 1521
    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getMd5HashAsHex()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1522
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1523
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unable to verify MD5 hash of downloaded data against ETag returned by service because ETag value \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\" is not an MD5 hash value"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", for object key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1545
    .end local v7    # "dataMD5Hash":[B
    .end local v9    # "hexMD5OfDownloadedData":Ljava/lang/String;
    :cond_9
    :goto_8
    if-eqz v5, :cond_a

    .line 1546
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 1548
    :cond_a
    if-eqz v3, :cond_b

    .line 1549
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 1553
    :cond_b
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    invoke-virtual {v14}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/jets3t/service/model/StorageObject;->setDataInputFile(Ljava/io/File;)V

    .line 1558
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->restoreLastModifiedDate:Z

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    invoke-virtual {v14}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v14

    if-eqz v14, :cond_d

    .line 1559
    const-string v14, "jets3t-original-file-date-iso8601"

    invoke-virtual {v12, v14}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1562
    .local v11, "metadataLocalFileDate":Ljava/lang/String;
    if-eqz v11, :cond_d

    .line 1563
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 1564
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Restoring original Last Modified date for object \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' to file \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\': "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1568
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->downloadPackage:Lorg/jets3t/service/multi/DownloadPackage;

    invoke-virtual {v14}, Lorg/jets3t/service/multi/DownloadPackage;->getDataFile()Ljava/io/File;

    move-result-object v14

    invoke-static {v11}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/io/File;->setLastModified(J)Z

    .line 1573
    .end local v11    # "metadataLocalFileDate":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;->result:Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1577
    if-eqz v3, :cond_e

    .line 1579
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    .line 1586
    :cond_e
    :goto_9
    if-eqz v5, :cond_12

    .line 1588
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-object v4, v5

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 1593
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 1530
    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "dataMD5Hash":[B
    .restart local v9    # "hexMD5OfDownloadedData":Ljava/lang/String;
    :cond_f
    :try_start_f
    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 1531
    new-instance v14, Lorg/jets3t/service/ServiceException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Mismatch between MD5 hash of downloaded data ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") and ETag returned by service ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getETag()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") for object key: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1536
    :cond_10
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1537
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Object download was automatically verified, the calculated MD5 hash value matched the ETag provided by service: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_8

    .line 1580
    .end local v7    # "dataMD5Hash":[B
    .end local v9    # "hexMD5OfDownloadedData":Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 1581
    .local v8, "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1582
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    const-string v15, "Unable to close Object input stream"

    invoke-interface {v14, v15, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1589
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 1590
    .restart local v8    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1591
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    const-string v15, "Unable to close download output stream"

    invoke-interface {v14, v15, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_11
    move-object v4, v5

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .line 1593
    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4

    .line 1580
    .end local v1    # "buffer":[B
    .end local v6    # "byteCount":I
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v13    # "t":Ljava/lang/Throwable;
    :catch_4
    move-exception v8

    .line 1581
    .restart local v8    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1582
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    const-string v15, "Unable to close Object input stream"

    invoke-interface {v14, v15, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1589
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    .line 1590
    .restart local v8    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1591
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v14

    const-string v15, "Unable to close download output stream"

    invoke-interface {v14, v15, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1580
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v13    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v8

    .line 1581
    .restart local v8    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1582
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v15

    const-string v16, "Unable to close Object input stream"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1589
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v8

    .line 1590
    .restart local v8    # "e":Ljava/lang/Exception;
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 1591
    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multi/ThreadedStorageService;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v15

    const-string v16, "Unable to close download output stream"

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v8}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1577
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v14

    goto/16 :goto_5

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v14

    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .line 1574
    :catch_8
    move-exception v13

    goto/16 :goto_2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v13

    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .end local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .end local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v6    # "byteCount":I
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :cond_12
    move-object v4, v5

    .end local v5    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    .restart local v4    # "bufferedOutputStream":Ljava/io/BufferedOutputStream;
    move-object v2, v3

    .end local v3    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    .restart local v2    # "bufferedInputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_4
.end method
