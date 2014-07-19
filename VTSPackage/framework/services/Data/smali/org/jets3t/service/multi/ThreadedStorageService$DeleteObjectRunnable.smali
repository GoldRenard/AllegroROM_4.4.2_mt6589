.class Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObjectRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private object:Lorg/jets3t/service/model/StorageObject;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V
    .locals 1
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/jets3t/service/model/StorageObject;

    .prologue
    const/4 v0, 0x0

    .line 1188
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1184
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1185
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1186
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->result:Ljava/lang/Object;

    .line 1189
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1190
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1191
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1195
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, v1, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v3}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/StorageService;->deleteObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1203
    :goto_0
    return-void

    .line 1197
    :catch_0
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->result:Ljava/lang/Object;

    .line 1199
    throw v0

    .line 1200
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
