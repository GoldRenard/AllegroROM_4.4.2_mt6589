.class Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PutACLRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/S3Bucket;

.field private result:Ljava/lang/Object;

.field private s3Object:Lorg/jets3t/service/model/S3Object;

.field private signedUrl:Ljava/lang/String;

.field private signedUrlAcl:Lorg/jets3t/service/acl/AccessControlList;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 1
    .param p2, "signedAclUrl"    # Ljava/lang/String;
    .param p3, "signedUrlAcl"    # Lorg/jets3t/service/acl/AccessControlList;

    .prologue
    const/4 v0, 0x0

    .line 1827
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 1816
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1817
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    .line 1818
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrl:Ljava/lang/String;

    .line 1819
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrlAcl:Lorg/jets3t/service/acl/AccessControlList;

    .line 1820
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1828
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrl:Ljava/lang/String;

    .line 1829
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrlAcl:Lorg/jets3t/service/acl/AccessControlList;

    .line 1830
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1831
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    .line 1832
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V
    .locals 1
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "s3Object"    # Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v0, 0x0

    .line 1822
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 1816
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1817
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    .line 1818
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrl:Ljava/lang/String;

    .line 1819
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrlAcl:Lorg/jets3t/service/acl/AccessControlList;

    .line 1820
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1823
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1824
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    .line 1825
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1868
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1862
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1836
    :try_start_0
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrl:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 1837
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    if-nez v4, :cond_0

    .line 1838
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v4}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v4

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    invoke-virtual {v4, v5}, Lorg/jets3t/service/StorageService;->putBucketAcl(Lorg/jets3t/service/model/StorageBucket;)V

    .line 1842
    :goto_0
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    iput-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1858
    :goto_1
    return-void

    .line 1840
    :cond_0
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v4}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v4

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v4, v5, v6}, Lorg/jets3t/service/S3Service;->putObjectAcl(Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1852
    :catch_0
    move-exception v0

    .line 1853
    .local v0, "e":Ljava/lang/RuntimeException;
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->result:Ljava/lang/Object;

    .line 1854
    throw v0

    .line 1844
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v4}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v1

    .line 1845
    .local v1, "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrl:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrlAcl:Lorg/jets3t/service/acl/AccessControlList;

    invoke-interface {v1, v4, v5}, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;->putObjectAclWithSignedUrl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1846
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v6}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v2

    .line 1849
    .local v2, "object":Lorg/jets3t/service/model/S3Object;
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->signedUrlAcl:Lorg/jets3t/service/acl/AccessControlList;

    invoke-virtual {v2, v4}, Lorg/jets3t/service/model/S3Object;->setAcl(Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1850
    iput-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->result:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1855
    .end local v1    # "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    .end local v2    # "object":Lorg/jets3t/service/model/S3Object;
    .end local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 1856
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;->result:Ljava/lang/Object;

    goto :goto_1
.end method
