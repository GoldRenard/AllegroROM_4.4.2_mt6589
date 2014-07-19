.class public interface abstract Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
.super Ljava/lang/Object;
.source "SignedUrlHandler.java"


# virtual methods
.method public abstract deleteObjectWithSignedUrl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public abstract getObjectAclWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public abstract getObjectDetailsWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public abstract getObjectWithSignedUrl(Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public abstract putObjectAclWithSignedUrl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public abstract putObjectWithSignedUrl(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/S3Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method
