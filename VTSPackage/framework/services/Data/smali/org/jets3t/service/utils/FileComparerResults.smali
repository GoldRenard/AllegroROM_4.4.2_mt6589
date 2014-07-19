.class public Lorg/jets3t/service/utils/FileComparerResults;
.super Ljava/lang/Object;
.source "FileComparerResults.java"


# instance fields
.field public alreadySynchronisedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public alreadySynchronisedLocalPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onlyOnClientKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public onlyOnServerKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public updatedOnClientKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public updatedOnServerKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/jets3t/service/utils/FileComparerResults;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "onlyOnServerKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "updatedOnServerKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "updatedOnClientKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "onlyOnClientKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "alreadySynchronisedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "alreadySynchronisedLocalPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    .line 53
    iput-object p2, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnServerKeys:Ljava/util/List;

    .line 54
    iput-object p3, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnClientKeys:Ljava/util/List;

    .line 55
    iput-object p4, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    .line 56
    iput-object p5, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedKeys:Ljava/util/List;

    .line 57
    iput-object p6, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedLocalPaths:Ljava/util/List;

    .line 58
    return-void
.end method


# virtual methods
.method public getCountOfItemsCompared()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnServerKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnClientKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public merge(Lorg/jets3t/service/utils/FileComparerResults;)V
    .locals 2
    .param p1, "resultsToAdd"    # Lorg/jets3t/service/utils/FileComparerResults;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnServerKeys:Ljava/util/List;

    iget-object v1, p1, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnServerKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 67
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnClientKeys:Ljava/util/List;

    iget-object v1, p1, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnClientKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedKeys:Ljava/util/List;

    iget-object v1, p1, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedLocalPaths:Ljava/util/List;

    iget-object v1, p1, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedLocalPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    iget-object v1, p1, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnServerKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 75
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnClientKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 76
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedLocalPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    iget-object v1, p1, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnServerKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 84
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnClientKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 85
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 86
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v0, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedLocalPaths:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onlyOnServerKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnServerKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedOnServerKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnServerKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatedOnClientKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->updatedOnClientKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", onlyOnClientKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->onlyOnClientKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alreadySynchronisedKeys: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedKeys:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alreadySynchronisedLocalPaths: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jets3t/service/utils/FileComparerResults;->alreadySynchronisedLocalPaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
