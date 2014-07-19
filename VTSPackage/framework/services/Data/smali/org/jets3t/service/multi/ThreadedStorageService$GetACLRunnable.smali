.class Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetACLRunnable"
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

    .line 1150
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1146
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->bucketName:Ljava/lang/String;

    .line 1147
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1148
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->result:Ljava/lang/Object;

    .line 1151
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->bucketName:Ljava/lang/String;

    .line 1152
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 1153
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1177
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 1157
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v2, v2, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->bucketName:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v4}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jets3t/service/StorageService;->getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v0

    .line 1159
    .local v0, "acl":Lorg/jets3t/service/acl/AccessControlList;
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v2, v0}, Lorg/jets3t/service/model/StorageObject;->setAcl(Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1160
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    iput-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1167
    .end local v0    # "acl":Lorg/jets3t/service/acl/AccessControlList;
    :goto_0
    return-void

    .line 1161
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->result:Ljava/lang/Object;

    .line 1163
    throw v1

    .line 1164
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1165
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
