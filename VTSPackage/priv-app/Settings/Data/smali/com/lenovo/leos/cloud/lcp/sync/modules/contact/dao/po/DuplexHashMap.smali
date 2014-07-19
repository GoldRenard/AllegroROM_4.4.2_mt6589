.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;
.super Ljava/lang/Object;
.source "DuplexHashMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5395a492e0a72917L


# instance fields
.field private k2vMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private v2kMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    .line 7
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 64
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 66
    return-void
.end method

.method public clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 80
    .local v1, "clonedObj":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-object v1, v0

    .line 81
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    .line 82
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    iput-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-object v1

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->clone()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByKey(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->removeByValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-void
.end method

.method public removeByKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "v":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_0
    return-object v0
.end method

.method public removeByValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TK;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "k":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->k2vMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public valueMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TV;TK;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;, "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->v2kMap:Ljava/util/Map;

    return-object v0
.end method
