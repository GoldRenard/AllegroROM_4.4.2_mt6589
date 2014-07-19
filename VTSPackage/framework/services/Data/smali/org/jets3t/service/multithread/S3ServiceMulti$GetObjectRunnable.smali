.class Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetObjectRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/S3Bucket;

.field private headOnly:Z

.field private objectKey:Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field private signedGetOrHeadUrl:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "signedGetOrHeadUrl"    # Ljava/lang/String;
    .param p3, "headOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2222
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2208
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2209
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->objectKey:Ljava/lang/String;

    .line 2210
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    .line 2211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->headOnly:Z

    .line 2213
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;

    .line 2223
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    .line 2224
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2225
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->objectKey:Ljava/lang/String;

    .line 2226
    iput-boolean p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->headOnly:Z

    .line 2227
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "headOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2215
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2208
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2209
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->objectKey:Ljava/lang/String;

    .line 2210
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    .line 2211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->headOnly:Z

    .line 2213
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;

    .line 2216
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    .line 2217
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2218
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->objectKey:Ljava/lang/String;

    .line 2219
    iput-boolean p4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->headOnly:Z

    .line 2220
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 2259
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2253
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 2231
    :try_start_0
    iget-boolean v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->headOnly:Z

    if-eqz v2, :cond_1

    .line 2232
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2233
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->objectKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/jets3t/service/S3Service;->getObjectDetails(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;

    .line 2249
    :goto_0
    return-void

    .line 2235
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v0

    .line 2236
    .local v0, "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;->getObjectDetailsWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2246
    .end local v0    # "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    :catch_0
    move-exception v1

    .line 2247
    .local v1, "se":Lorg/jets3t/service/ServiceException;
    new-instance v2, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v2, v1}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    iput-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0

    .line 2239
    .end local v1    # "se":Lorg/jets3t/service/ServiceException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 2240
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->objectKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/jets3t/service/S3Service;->getObject(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0

    .line 2242
    :cond_2
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v0

    .line 2243
    .restart local v0    # "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->signedGetOrHeadUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;->getObjectWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v2

    iput-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;->result:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/jets3t/service/ServiceException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
