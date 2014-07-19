.class public Lorg/jets3t/service/model/StorageBucket;
.super Lorg/jets3t/service/model/BaseStorageItem;
.source "StorageBucket.java"


# instance fields
.field private acl:Lorg/jets3t/service/acl/AccessControlList;

.field private isLocationKnown:Z

.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lorg/jets3t/service/model/BaseStorageItem;-><init>()V

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 32
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->location:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/model/StorageBucket;->isLocationKnown:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/BaseStorageItem;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 32
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->location:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/model/StorageBucket;->isLocationKnown:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/BaseStorageItem;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 32
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->location:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/model/StorageBucket;->isLocationKnown:Z

    .line 51
    iput-object p2, p0, Lorg/jets3t/service/model/StorageBucket;->location:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/model/StorageBucket;->isLocationKnown:Z

    .line 53
    return-void
.end method


# virtual methods
.method public getAcl()Lorg/jets3t/service/acl/AccessControlList;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->acl:Lorg/jets3t/service/acl/AccessControlList;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    const-string v0, "Date"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadata(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lorg/jets3t/service/model/StorageBucket;->location:Ljava/lang/String;

    return-object v0
.end method

.method public isLocationKnown()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lorg/jets3t/service/model/StorageBucket;->isLocationKnown:Z

    return v0
.end method

.method public setAcl(Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 0
    .param p1, "acl"    # Lorg/jets3t/service/acl/AccessControlList;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/jets3t/service/model/StorageBucket;->acl:Lorg/jets3t/service/acl/AccessControlList;

    .line 94
    return-void
.end method

.method public setCreationDate(Ljava/util/Date;)V
    .locals 1
    .param p1, "creationDate"    # Ljava/util/Date;

    .prologue
    .line 75
    const-string v0, "Date"

    invoke-virtual {p0, v0, p1}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/util/Date;)V

    .line 76
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lorg/jets3t/service/model/StorageBucket;->location:Ljava/lang/String;

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/model/StorageBucket;->isLocationKnown:Z

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageBucket [name="

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
