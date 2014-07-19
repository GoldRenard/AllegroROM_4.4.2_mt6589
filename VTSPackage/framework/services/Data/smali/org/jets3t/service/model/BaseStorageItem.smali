.class public abstract Lorg/jets3t/service/model/BaseStorageItem;
.super Ljava/lang/Object;
.source "BaseStorageItem.java"


# static fields
.field public static final METADATA_HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final METADATA_HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final METADATA_HEADER_CONTENT_LANGUAGE:Ljava/lang/String; = "Content-Language"

.field public static final METADATA_HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field public static final METADATA_HEADER_CONTENT_MD5:Ljava/lang/String; = "Content-MD5"

.field public static final METADATA_HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final METADATA_HEADER_CREATION_DATE:Ljava/lang/String; = "Date"

.field public static final METADATA_HEADER_DATE:Ljava/lang/String; = "Date"

.field public static final METADATA_HEADER_ETAG:Ljava/lang/String; = "ETag"

.field public static final METADATA_HEADER_LAST_MODIFIED_DATE:Ljava/lang/String; = "Last-Modified"


# instance fields
.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private owner:Lorg/jets3t/service/model/StorageOwner;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    .line 65
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->name:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    .line 61
    iput-object p1, p0, Lorg/jets3t/service/model/BaseStorageItem;->name:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public addAllMetadata(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "metadataToAdd":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 215
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method protected addMetadata(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lorg/jets3t/service/model/BaseStorageItem;->removeMetadata(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public addMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public addMetadata(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/util/Date;

    .prologue
    .line 192
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    return-void
.end method

.method public addMetadata(Ljava/lang/String;Lorg/jets3t/service/model/StorageOwner;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/jets3t/service/model/StorageOwner;

    .prologue
    .line 204
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/model/BaseStorageItem;->addMetadata(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public containsMetadata(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    iget-object v2, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 140
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lorg/jets3t/service/model/BaseStorageItem;->isMatchingMetadataName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x1

    .line 144
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMetadata(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v2, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lorg/jets3t/service/model/BaseStorageItem;->isMatchingMetadataName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 125
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lorg/jets3t/service/model/StorageOwner;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->owner:Lorg/jets3t/service/model/StorageOwner;

    return-object v0
.end method

.method protected isMatchingMetadataName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "name1"    # Ljava/lang/String;
    .param p2, "name2"    # Ljava/lang/String;

    .prologue
    .line 100
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 108
    :goto_0
    return v0

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public removeMetadata(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "existingItemKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 228
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, p1}, Lorg/jets3t/service/model/BaseStorageItem;->isMatchingMetadataName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "existingItemKey":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "existingItemKey":Ljava/lang/String;
    goto :goto_0

    .line 233
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    if-nez v1, :cond_2

    if-nez p1, :cond_3

    .line 234
    :cond_2
    iget-object v3, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :cond_3
    return-void
.end method

.method public replaceAllMetadata(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/jets3t/service/model/BaseStorageItem;->metadata:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 248
    invoke-virtual {p0, p1}, Lorg/jets3t/service/model/BaseStorageItem;->addAllMetadata(Ljava/util/Map;)V

    .line 249
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lorg/jets3t/service/model/BaseStorageItem;->name:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setOwner(Lorg/jets3t/service/model/StorageOwner;)V
    .locals 0
    .param p1, "owner"    # Lorg/jets3t/service/model/StorageOwner;

    .prologue
    .line 266
    iput-object p1, p0, Lorg/jets3t/service/model/BaseStorageItem;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 267
    return-void
.end method
