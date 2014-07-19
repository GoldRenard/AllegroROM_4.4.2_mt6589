.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListAllMyBucketsHandler"
.end annotation


# instance fields
.field private final buckets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/StorageBucket;",
            ">;"
        }
    .end annotation
.end field

.field private bucketsOwner:Lorg/jets3t/service/model/StorageOwner;

.field private currentBucket:Lorg/jets3t/service/model/StorageBucket;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 629
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 630
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->bucketsOwner:Lorg/jets3t/service/model/StorageOwner;

    .line 631
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->currentBucket:Lorg/jets3t/service/model/StorageBucket;

    .line 633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->buckets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 663
    const-string v1, "ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->bucketsOwner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v1, p2}, Lorg/jets3t/service/model/StorageOwner;->setId(Ljava/lang/String;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    const-string v1, "DisplayName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->bucketsOwner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v1, p2}, Lorg/jets3t/service/model/StorageOwner;->setDisplayName(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :cond_2
    const-string v1, "Bucket"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 670
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new bucket from listing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->currentBucket:Lorg/jets3t/service/model/StorageBucket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 673
    :cond_3
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->currentBucket:Lorg/jets3t/service/model/StorageBucket;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->bucketsOwner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/model/BaseStorageItem;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    .line 674
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->buckets:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->currentBucket:Lorg/jets3t/service/model/StorageBucket;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 675
    :cond_4
    const-string v1, "Name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 676
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->currentBucket:Lorg/jets3t/service/model/StorageBucket;

    invoke-virtual {v1, p2}, Lorg/jets3t/service/model/BaseStorageItem;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_5
    const-string v1, "CreationDate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".000Z"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 680
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->currentBucket:Lorg/jets3t/service/model/StorageBucket;

    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/model/StorageBucket;->setCreationDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-ISO8601 date for CreationDate in list buckets output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBuckets()[Lorg/jets3t/service/model/StorageBucket;
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->buckets:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->buckets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/StorageBucket;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/model/StorageBucket;

    return-object v0
.end method

.method public getOwner()Lorg/jets3t/service/model/StorageOwner;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->bucketsOwner:Lorg/jets3t/service/model/StorageOwner;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 653
    const-string v0, "Bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->newBucket()Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->currentBucket:Lorg/jets3t/service/model/StorageBucket;

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-virtual {v0}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->newOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListAllMyBucketsHandler;->bucketsOwner:Lorg/jets3t/service/model/StorageOwner;

    goto :goto_0
.end method
