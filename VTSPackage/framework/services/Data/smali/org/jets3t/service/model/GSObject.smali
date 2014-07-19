.class public Lorg/jets3t/service/model/GSObject;
.super Lorg/jets3t/service/model/StorageObject;
.source "GSObject.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageObject;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/io/File;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dataString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 82
    return-void
.end method

.method public static cast([Lorg/jets3t/service/model/StorageObject;)[Lorg/jets3t/service/model/GSObject;
    .locals 6
    .param p0, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/GSObject;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/jets3t/service/model/StorageObject;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 141
    .local v3, "object":Lorg/jets3t/service/model/StorageObject;
    check-cast v3, Lorg/jets3t/service/model/GSObject;

    .end local v3    # "object":Lorg/jets3t/service/model/StorageObject;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/jets3t/service/model/GSObject;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/jets3t/service/model/GSObject;

    return-object v5
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lorg/jets3t/service/model/GSObject;

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/model/GSObject;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "clone":Lorg/jets3t/service/model/GSObject;
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    .line 130
    iget-object v1, p0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    iput-object v1, v0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 131
    iget-boolean v1, p0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    iput-boolean v1, v0, Lorg/jets3t/service/model/StorageObject;->isMetadataComplete:Z

    .line 132
    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    iput-object v1, v0, Lorg/jets3t/service/model/StorageObject;->dataInputFile:Ljava/io/File;

    .line 133
    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/BaseStorageItem;->setOwner(Lorg/jets3t/service/model/StorageOwner;)V

    .line 134
    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/StorageObject;->addAllMetadata(Ljava/util/Map;)V

    .line 135
    return-object v0
.end method

.method public bridge synthetic getAcl()Lorg/jets3t/service/acl/AccessControlList;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lorg/jets3t/service/model/GSObject;->getAcl()Lorg/jets3t/service/acl/gs/GSAccessControlList;

    move-result-object v0

    return-object v0
.end method

.method public getAcl()Lorg/jets3t/service/acl/gs/GSAccessControlList;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    return-object v0
.end method

.method public setAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V
    .locals 0
    .param p1, "acl"    # Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/jets3t/service/model/GSObject;->acl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSObject [key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageObject;->getLastModifiedDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataInputStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/model/StorageObject;->dataInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
