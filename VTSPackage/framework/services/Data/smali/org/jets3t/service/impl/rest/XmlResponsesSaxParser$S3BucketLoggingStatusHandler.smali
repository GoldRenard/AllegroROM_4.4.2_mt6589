.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;
.super Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "S3BucketLoggingStatusHandler"
.end annotation


# instance fields
.field private currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

.field private currentPermission:Lorg/jets3t/service/acl/Permission;

.field private targetBucket:Ljava/lang/String;

.field private targetPrefix:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 710
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    .line 711
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->targetBucket:Ljava/lang/String;

    .line 712
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->targetPrefix:Ljava/lang/String;

    .line 713
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 714
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 725
    const-string v1, "TargetBucket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 726
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->targetBucket:Ljava/lang/String;

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    const-string v1, "TargetPrefix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 728
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->targetPrefix:Ljava/lang/String;

    goto :goto_0

    .line 729
    :cond_2
    const-string v1, "LoggingEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 730
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->targetBucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->setTargetBucketName(Ljava/lang/String;)V

    .line 731
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->targetPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->setLogfilePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_3
    const-string v1, "ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 735
    new-instance v1, Lorg/jets3t/service/acl/CanonicalGrantee;

    invoke-direct {v1}, Lorg/jets3t/service/acl/CanonicalGrantee;-><init>()V

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 736
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v1, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_4
    const-string v1, "EmailAddress"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 738
    new-instance v1, Lorg/jets3t/service/acl/EmailAddressGrantee;

    invoke-direct {v1}, Lorg/jets3t/service/acl/EmailAddressGrantee;-><init>()V

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 739
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v1, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 740
    :cond_5
    const-string v1, "URI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 741
    new-instance v1, Lorg/jets3t/service/acl/GroupGrantee;

    invoke-direct {v1}, Lorg/jets3t/service/acl/GroupGrantee;-><init>()V

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    .line 742
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    invoke-interface {v1, p2}, Lorg/jets3t/service/acl/GranteeInterface;->setIdentifier(Ljava/lang/String;)V

    goto :goto_0

    .line 743
    :cond_6
    const-string v1, "DisplayName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 744
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    check-cast v1, Lorg/jets3t/service/acl/CanonicalGrantee;

    invoke-virtual {v1, p2}, Lorg/jets3t/service/acl/CanonicalGrantee;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 745
    :cond_7
    const-string v1, "Permission"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 746
    invoke-static {p2}, Lorg/jets3t/service/acl/Permission;->parsePermission(Ljava/lang/String;)Lorg/jets3t/service/acl/Permission;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    goto :goto_0

    .line 747
    :cond_8
    const-string v1, "Grant"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 748
    new-instance v0, Lorg/jets3t/service/acl/GrantAndPermission;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentGrantee:Lorg/jets3t/service/acl/GranteeInterface;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$S3BucketLoggingStatusHandler;->currentPermission:Lorg/jets3t/service/acl/Permission;

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/acl/GrantAndPermission;-><init>(Lorg/jets3t/service/acl/GranteeInterface;Lorg/jets3t/service/acl/Permission;)V

    .line 750
    .local v0, "grantAndPermission":Lorg/jets3t/service/acl/GrantAndPermission;
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    check-cast v1, Lorg/jets3t/service/model/S3BucketLoggingStatus;

    invoke-virtual {v1, v0}, Lorg/jets3t/service/model/S3BucketLoggingStatus;->addTargetGrant(Lorg/jets3t/service/acl/GrantAndPermission;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 718
    const-string v0, "BucketLoggingStatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Lorg/jets3t/service/model/S3BucketLoggingStatus;

    invoke-direct {v0}, Lorg/jets3t/service/model/S3BucketLoggingStatus;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    .line 721
    :cond_0
    return-void
.end method
