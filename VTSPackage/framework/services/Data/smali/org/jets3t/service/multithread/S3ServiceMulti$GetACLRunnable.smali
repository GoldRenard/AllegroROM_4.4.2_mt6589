.class Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetACLRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/S3Bucket;

.field private object:Lorg/jets3t/service/model/S3Object;

.field private result:Ljava/lang/Object;

.field private signedAclUrl:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;)V
    .locals 1
    .param p2, "signedAclUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1885
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 1875
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1876
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1877
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->signedAclUrl:Ljava/lang/String;

    .line 1878
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->result:Ljava/lang/Object;

    .line 1886
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->signedAclUrl:Ljava/lang/String;

    .line 1887
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1888
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1889
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V
    .locals 1
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "object"    # Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v0, 0x0

    .line 1880
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 1875
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1876
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1877
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->signedAclUrl:Ljava/lang/String;

    .line 1878
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->result:Ljava/lang/Object;

    .line 1881
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 1882
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1883
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1922
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1893
    :try_start_0
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->signedAclUrl:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1894
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v4}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v4

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v6}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jets3t/service/S3Service;->getObjectAcl(Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v0

    .line 1895
    .local v0, "acl":Lorg/jets3t/service/acl/AccessControlList;
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v4, v0}, Lorg/jets3t/service/model/S3Object;->setAcl(Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1896
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    iput-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->result:Ljava/lang/Object;

    .line 1912
    .end local v0    # "acl":Lorg/jets3t/service/acl/AccessControlList;
    :goto_0
    return-void

    .line 1898
    :cond_0
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v4}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v2

    .line 1899
    .local v2, "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->signedAclUrl:Ljava/lang/String;

    invoke-interface {v2, v4}, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;->getObjectAclWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v0

    .line 1900
    .restart local v0    # "acl":Lorg/jets3t/service/acl/AccessControlList;
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->signedAclUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1901
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v6}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v4

    iput-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 1903
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v4, v0}, Lorg/jets3t/service/model/S3Object;->setAcl(Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1904
    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->object:Lorg/jets3t/service/model/S3Object;

    iput-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1906
    .end local v0    # "acl":Lorg/jets3t/service/acl/AccessControlList;
    .end local v2    # "handler":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 1907
    .local v1, "e":Ljava/lang/RuntimeException;
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->result:Ljava/lang/Object;

    .line 1908
    throw v1

    .line 1909
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 1910
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
