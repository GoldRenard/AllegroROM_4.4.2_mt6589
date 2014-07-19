.class public Lorg/jets3t/service/model/S3BucketLoggingStatus;
.super Lorg/jets3t/service/model/StorageBucketLoggingStatus;
.source "S3BucketLoggingStatus.java"


# instance fields
.field private final targetGrantsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/acl/GrantAndPermission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "targetBucketName"    # Ljava/lang/String;
    .param p2, "logfilePrefix"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    .line 60
    return-void
.end method


# virtual methods
.method public addTargetGrant(Lorg/jets3t/service/acl/GrantAndPermission;)V
    .locals 1
    .param p1, "targetGrant"    # Lorg/jets3t/service/acl/GrantAndPermission;

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getTargetGrants()[Lorg/jets3t/service/acl/GrantAndPermission;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/acl/GrantAndPermission;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/acl/GrantAndPermission;

    return-object v0
.end method

.method public setTargetGrants([Lorg/jets3t/service/acl/GrantAndPermission;)V
    .locals 2
    .param p1, "targetGrants"    # [Lorg/jets3t/service/acl/GrantAndPermission;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    iget-object v0, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetGrants=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method

.method public toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v5, "BucketLoggingStatus"

    invoke-static {v5}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "xmlns"

    const-string v7, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v5, v6, v7}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 89
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    invoke-virtual {p0}, Lorg/jets3t/service/model/S3BucketLoggingStatus;->isLoggingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    const-string v5, "LoggingEnabled"

    invoke-virtual {v0, v5}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "TargetBucket"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jets3t/service/model/S3BucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "TargetPrefix"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jets3t/service/model/S3BucketLoggingStatus;->getLogfilePrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    .line 93
    .local v1, "enabledBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    iget-object v5, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 94
    iget-object v5, p0, Lorg/jets3t/service/model/S3BucketLoggingStatus;->targetGrantsList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 95
    .local v4, "targetGrantsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jets3t/service/acl/GrantAndPermission;>;"
    const-string v5, "TargetGrants"

    invoke-virtual {v1, v5}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v3

    .line 96
    .local v3, "grantsBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jets3t/service/acl/GrantAndPermission;

    .line 98
    .local v2, "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    const-string v5, "Grant"

    invoke-virtual {v3, v5}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/jets3t/service/acl/GrantAndPermission;->getGrantee()Lorg/jets3t/service/acl/GranteeInterface;

    move-result-object v6

    invoke-interface {v6}, Lorg/jets3t/service/acl/GranteeInterface;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->importXMLBuilder(Lcom/jamesmurty/utils/XMLBuilder;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    const-string v6, "Permission"

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/jets3t/service/acl/GrantAndPermission;->getPermission()Lorg/jets3t/service/acl/Permission;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jets3t/service/acl/Permission;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    goto :goto_0

    .line 104
    .end local v1    # "enabledBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v2    # "gap":Lorg/jets3t/service/acl/GrantAndPermission;
    .end local v3    # "grantsBuilder":Lcom/jamesmurty/utils/XMLBuilder;
    .end local v4    # "targetGrantsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jets3t/service/acl/GrantAndPermission;>;"
    :cond_0
    return-object v0
.end method
