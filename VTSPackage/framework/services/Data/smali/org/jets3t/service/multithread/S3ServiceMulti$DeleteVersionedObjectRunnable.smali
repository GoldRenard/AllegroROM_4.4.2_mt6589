.class Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteVersionedObjectRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private multiFactorAuthCode:Ljava/lang/String;

.field private multiFactorSerialNumber:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

.field private versionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "versionId"    # Ljava/lang/String;
    .param p3, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p4, "multiFactorAuthCode"    # Ljava/lang/String;
    .param p5, "bucketName"    # Ljava/lang/String;
    .param p6, "objectKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1991
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 1981
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->versionId:Ljava/lang/String;

    .line 1982
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->multiFactorSerialNumber:Ljava/lang/String;

    .line 1983
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->multiFactorAuthCode:Ljava/lang/String;

    .line 1984
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1985
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->objectKey:Ljava/lang/String;

    .line 1986
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->result:Ljava/lang/Object;

    .line 1992
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->versionId:Ljava/lang/String;

    .line 1993
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->multiFactorSerialNumber:Ljava/lang/String;

    .line 1994
    iput-object p4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->multiFactorAuthCode:Ljava/lang/String;

    .line 1995
    iput-object p5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1996
    iput-object p6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->objectKey:Ljava/lang/String;

    .line 1997
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 2021
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2015
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 2001
    :try_start_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->versionId:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->multiFactorSerialNumber:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->multiFactorAuthCode:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->bucketName:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->objectKey:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->deleteVersionedObjectWithMFA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    new-instance v0, Lorg/jets3t/service/model/S3Version;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->objectKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->versionId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/model/S3Version;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2011
    :goto_0
    return-void

    .line 2005
    :catch_0
    move-exception v6

    .line 2006
    .local v6, "e":Ljava/lang/RuntimeException;
    iput-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->result:Ljava/lang/Object;

    .line 2007
    throw v6

    .line 2008
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v6

    .line 2009
    .local v6, "e":Ljava/lang/Exception;
    iput-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
