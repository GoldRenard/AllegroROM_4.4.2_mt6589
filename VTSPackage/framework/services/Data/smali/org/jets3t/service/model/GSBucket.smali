.class public Lorg/jets3t/service/model/GSBucket;
.super Lorg/jets3t/service/model/StorageBucket;
.source "GSBucket.java"


# static fields
.field public static final LOCATION_DEFAULT:Ljava/lang/String;

.field public static final LOCATION_EUROPE:Ljava/lang/String; = "EU"

.field public static final LOCATION_US:Ljava/lang/String; = "US"


# instance fields
.field private acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lorg/jets3t/service/model/GSBucket;->LOCATION_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageBucket;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/GSBucket;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/StorageBucket;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/GSBucket;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageBucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/GSBucket;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 55
    return-void
.end method

.method public static cast([Lorg/jets3t/service/model/StorageBucket;)[Lorg/jets3t/service/model/GSBucket;
    .locals 6
    .param p0, "buckets"    # [Lorg/jets3t/service/model/StorageBucket;

    .prologue
    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/GSBucket;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/jets3t/service/model/StorageBucket;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 84
    .local v1, "bucket":Lorg/jets3t/service/model/StorageBucket;
    check-cast v1, Lorg/jets3t/service/model/GSBucket;

    .end local v1    # "bucket":Lorg/jets3t/service/model/StorageBucket;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/jets3t/service/model/GSBucket;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/GSBucket;

    return-object v5
.end method


# virtual methods
.method public bridge synthetic getAcl()Lorg/jets3t/service/acl/AccessControlList;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/jets3t/service/model/GSBucket;->getAcl()Lorg/jets3t/service/acl/gs/GSAccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getAcl()Lorg/jets3t/service/acl/gs/GSAccessControlList;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lorg/jets3t/service/model/GSBucket;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    return-object v0
.end method

.method public setAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V
    .locals 0
    .param p1, "acl"    # Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/jets3t/service/model/GSBucket;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSBucket [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
