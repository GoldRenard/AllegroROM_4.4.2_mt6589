.class Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutACLRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/StorageBucket;

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

    .line 1109
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1100
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucket:Lorg/jets3t/service/model/StorageBucket;

    .line 1101
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucketName:Ljava/lang/String;

    .line 1102
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1103
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1110
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucketName:Ljava/lang/String;

    .line 1111
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1112
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Lorg/jets3t/service/model/StorageBucket;)V
    .locals 1
    .param p2, "bucket"    # Lorg/jets3t/service/model/StorageBucket;

    .prologue
    const/4 v0, 0x0

    .line 1105
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1100
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucket:Lorg/jets3t/service/model/StorageBucket;

    .line 1101
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucketName:Ljava/lang/String;

    .line 1102
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1103
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1106
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucket:Lorg/jets3t/service/model/StorageBucket;

    .line 1107
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1139
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1116
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    if-nez v1, :cond_0

    .line 1117
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, v1, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucket:Lorg/jets3t/service/model/StorageBucket;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/StorageService;->putBucketAcl(Lorg/jets3t/service/model/StorageBucket;)V

    .line 1118
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucket:Lorg/jets3t/service/model/StorageBucket;

    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1129
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, v1, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/StorageService;->putObjectAcl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V

    .line 1121
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1123
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1125
    throw v0

    .line 1126
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1127
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
