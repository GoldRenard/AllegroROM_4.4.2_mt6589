.class Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteObjectRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/S3Bucket;

.field private object:Lorg/jets3t/service/model/S3Object;

.field private result:Ljava/lang/Object;

.field private signedDeleteUrl:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;)V
    .locals 1
    .param p2, "signedDeleteUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1940
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 1929
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1930
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1931
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->signedDeleteUrl:Ljava/lang/String;

    .line 1932
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->result:Ljava/lang/Object;

    .line 1941
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->signedDeleteUrl:Ljava/lang/String;

    .line 1942
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1943
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1944
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V
    .locals 1
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "object"    # Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v0, 0x0

    .line 1934
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 1929
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1930
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1931
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->signedDeleteUrl:Ljava/lang/String;

    .line 1932
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->result:Ljava/lang/Object;

    .line 1935
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->signedDeleteUrl:Ljava/lang/String;

    .line 1936
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1937
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1938
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1974
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1968
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 1948
    :try_start_0
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->signedDeleteUrl:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1949
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v3}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jets3t/service/S3Service;->deleteObject(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)V

    .line 1950
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->result:Ljava/lang/Object;

    .line 1964
    :goto_0
    return-void

    .line 1952
    :cond_0
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v3}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v1

    .line 1953
    .local v1, "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->signedDeleteUrl:Ljava/lang/String;

    invoke-interface {v1, v3}, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;->deleteObjectWithSignedUrl(Ljava/lang/String;)V

    .line 1954
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->signedDeleteUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1955
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v5}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v3

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1958
    .end local v1    # "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 1959
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->result:Ljava/lang/Object;

    .line 1960
    throw v0

    .line 1961
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1962
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
