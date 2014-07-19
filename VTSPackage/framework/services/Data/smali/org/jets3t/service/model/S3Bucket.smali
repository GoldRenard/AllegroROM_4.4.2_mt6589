.class public Lorg/jets3t/service/model/S3Bucket;
.super Lorg/jets3t/service/model/StorageBucket;
.source "S3Bucket.java"


# static fields
.field public static final LOCATION_ASIA_PACIFIC:Ljava/lang/String; = "ap-southeast-1"

.field public static final LOCATION_ASIA_PACIFIC_NORTHEAST:Ljava/lang/String; = "ap-northeast-1"

.field public static final LOCATION_ASIA_PACIFIC_SINGAPORE:Ljava/lang/String; = "ap-southeast-1"

.field public static final LOCATION_ASIA_PACIFIC_SOUTHEAST:Ljava/lang/String; = "ap-southeast-1"

.field public static final LOCATION_ASIA_PACIFIC_TOKYO:Ljava/lang/String; = "ap-northeast-1"

.field public static final LOCATION_EUROPE:Ljava/lang/String; = "EU"

.field public static final LOCATION_GOVCLOUD_FIPS_US_WEST:Ljava/lang/String; = "s3-fips-us-gov-west-1"

.field public static final LOCATION_GOVCLOUD_US_WEST:Ljava/lang/String; = "s3-us-gov-west-1"

.field public static final LOCATION_SOUTH_AMERICA_EAST:Ljava/lang/String; = "sa-east-1"

.field public static final LOCATION_SOUTH_AMERICA_SAO_PAULO:Ljava/lang/String; = "sa-east-1"

.field public static final LOCATION_US:Ljava/lang/String;

.field public static final LOCATION_US_STANDARD:Ljava/lang/String;

.field public static final LOCATION_US_WEST:Ljava/lang/String; = "us-west-1"

.field public static final LOCATION_US_WEST_NORTHERN_CALIFORNIA:Ljava/lang/String; = "us-west-1"

.field public static final LOCATION_US_WEST_OREGON:Ljava/lang/String; = "us-west-2"


# instance fields
.field private isRequesterPaysKnown:Z

.field private requesterPays:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lorg/jets3t/service/model/S3Bucket;->LOCATION_US:Ljava/lang/String;

    .line 31
    sput-object v0, Lorg/jets3t/service/model/S3Bucket;->LOCATION_US_STANDARD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageBucket;-><init>()V

    .line 60
    iput-boolean v0, p0, Lorg/jets3t/service/model/S3Bucket;->requesterPays:Z

    .line 61
    iput-boolean v0, p0, Lorg/jets3t/service/model/S3Bucket;->isRequesterPaysKnown:Z

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/model/StorageBucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-boolean v1, p0, Lorg/jets3t/service/model/S3Bucket;->requesterPays:Z

    .line 61
    iput-boolean v1, p0, Lorg/jets3t/service/model/S3Bucket;->isRequesterPaysKnown:Z

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageBucket;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-boolean v0, p0, Lorg/jets3t/service/model/S3Bucket;->requesterPays:Z

    .line 61
    iput-boolean v0, p0, Lorg/jets3t/service/model/S3Bucket;->isRequesterPaysKnown:Z

    .line 89
    return-void
.end method

.method public static cast([Lorg/jets3t/service/model/StorageBucket;)[Lorg/jets3t/service/model/S3Bucket;
    .locals 6
    .param p0, "buckets"    # [Lorg/jets3t/service/model/StorageBucket;

    .prologue
    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/S3Bucket;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/jets3t/service/model/StorageBucket;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 141
    .local v1, "bucket":Lorg/jets3t/service/model/StorageBucket;
    check-cast v1, Lorg/jets3t/service/model/S3Bucket;

    .end local v1    # "bucket":Lorg/jets3t/service/model/StorageBucket;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/jets3t/service/model/S3Bucket;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/S3Bucket;

    return-object v5
.end method


# virtual methods
.method public isRequesterPays()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lorg/jets3t/service/model/S3Bucket;->requesterPays:Z

    return v0
.end method

.method public isRequesterPaysKnown()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lorg/jets3t/service/model/S3Bucket;->isRequesterPaysKnown:Z

    return v0
.end method

.method public setRequesterPays(Z)V
    .locals 1
    .param p1, "requesterPays"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Lorg/jets3t/service/model/S3Bucket;->requesterPays:Z

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/model/S3Bucket;->isRequesterPaysKnown:Z

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S3Bucket [name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageBucket;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",creationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageBucket;->getCreationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
