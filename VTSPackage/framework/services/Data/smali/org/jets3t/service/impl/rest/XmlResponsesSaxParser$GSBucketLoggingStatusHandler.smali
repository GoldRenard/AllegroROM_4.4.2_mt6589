.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$GSBucketLoggingStatusHandler;
.super Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GSBucketLoggingStatusHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$GSBucketLoggingStatusHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0, p1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;-><init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 773
    const-string v0, "LogBucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->setTargetBucketName(Ljava/lang/String;)V

    .line 797
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    const-string v0, "LogObjectPrefix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    invoke-virtual {v0, p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->setLogfilePrefix(Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_2
    const-string v0, "PredefinedAcl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    check-cast v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    sget-object v1, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PRIVATE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->setPredefinedAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V

    goto :goto_0

    .line 781
    :cond_3
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 782
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    check-cast v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    sget-object v1, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->setPredefinedAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V

    goto :goto_0

    .line 784
    :cond_4
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 785
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    check-cast v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    sget-object v1, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_PUBLIC_READ_WRITE:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->setPredefinedAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V

    goto :goto_0

    .line 787
    :cond_5
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 788
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    check-cast v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    sget-object v1, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_AUTHENTICATED_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->setPredefinedAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V

    goto :goto_0

    .line 790
    :cond_6
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 791
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    check-cast v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    sget-object v1, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_READ:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->setPredefinedAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V

    goto/16 :goto_0

    .line 793
    :cond_7
    sget-object v0, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    check-cast v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    sget-object v1, Lorg/jets3t/service/acl/gs/GSAccessControlList;->REST_CANNED_BUCKET_OWNER_FULL_CONTROL:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->setPredefinedAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 766
    const-string v0, "Logging"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    new-instance v0, Lorg/jets3t/service/model/GSBucketLoggingStatus;

    invoke-direct {v0}, Lorg/jets3t/service/model/GSBucketLoggingStatus;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    .line 769
    :cond_0
    return-void
.end method
