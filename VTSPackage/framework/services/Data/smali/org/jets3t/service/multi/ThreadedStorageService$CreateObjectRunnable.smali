.class Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateObjectRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

.field private object:Lorg/jets3t/service/model/StorageObject;

.field private progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 1
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p4, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    const/4 v0, 0x0

    .line 1316
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1309
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1310
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1311
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 1312
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 1314
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->result:Ljava/lang/Object;

    .line 1317
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1318
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1319
    iput-object p4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 1320
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v0}, Lorg/jets3t/service/io/InterruptableInputStream;->interrupt()V

    .line 1352
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1344
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1324
    :try_start_0
    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v3}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v2

    .line 1326
    .local v2, "underlyingFile":Ljava/io/File;
    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v3}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1327
    new-instance v3, Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v4}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jets3t/service/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 1328
    new-instance v1, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v1, v3, v4}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 1330
    .local v1, "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v3, v1}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 1332
    .end local v1    # "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    :cond_0
    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v3, v3, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->bucketName:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v3, v4, v5}, Lorg/jets3t/service/StorageService;->putObject(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v3

    iput-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->result:Ljava/lang/Object;

    .line 1334
    instance-of v3, v2, Lorg/jets3t/service/io/TempFile;

    if-eqz v3, :cond_1

    .line 1335
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1340
    .end local v2    # "underlyingFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1337
    :catch_0
    move-exception v0

    .line 1338
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
