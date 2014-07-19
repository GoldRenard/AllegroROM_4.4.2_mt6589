.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultipleDeleteResultHandler"
.end annotation


# instance fields
.field private deleteMarkerVersion:Ljava/lang/String;

.field private deletedObjectResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode:Ljava/lang/String;

.field private errorResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;",
            ">;"
        }
    .end annotation
.end field

.field private inDeleted:Z

.field private inError:Z

.field private key:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private result:Lorg/jets3t/service/model/MultipleDeleteResult;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

.field private version:Ljava/lang/String;

.field private withDeleteMarker:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    .line 1642
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 1643
    new-instance v0, Lorg/jets3t/service/model/MultipleDeleteResult;

    invoke-direct {v0}, Lorg/jets3t/service/model/MultipleDeleteResult;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->result:Lorg/jets3t/service/model/MultipleDeleteResult;

    .line 1645
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->deletedObjectResults:Ljava/util/List;

    .line 1647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->errorResults:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1669
    const-string v0, "Key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->key:Ljava/lang/String;

    .line 1701
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    const-string v0, "VersionId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1672
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->version:Ljava/lang/String;

    goto :goto_0

    .line 1673
    :cond_2
    const-string v0, "DeleteMarker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1674
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->withDeleteMarker:Ljava/lang/Boolean;

    goto :goto_0

    .line 1675
    :cond_3
    const-string v0, "DeleteMarkerVersionId"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1676
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->deleteMarkerVersion:Ljava/lang/String;

    goto :goto_0

    .line 1677
    :cond_4
    const-string v0, "Code"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1678
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->errorCode:Ljava/lang/String;

    goto :goto_0

    .line 1679
    :cond_5
    const-string v0, "Message"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1680
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->message:Ljava/lang/String;

    goto :goto_0

    .line 1683
    :cond_6
    const-string v0, "Deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1684
    iget-object v6, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->deletedObjectResults:Ljava/util/List;

    new-instance v0, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->result:Lorg/jets3t/service/model/MultipleDeleteResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->key:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->version:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->withDeleteMarker:Ljava/lang/Boolean;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->deleteMarkerVersion:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/jets3t/service/model/MultipleDeleteResult$DeletedObjectResult;-><init>(Lorg/jets3t/service/model/MultipleDeleteResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1686
    iput-boolean v8, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->inDeleted:Z

    .line 1687
    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->message:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->errorCode:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->deleteMarkerVersion:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->version:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->key:Ljava/lang/String;

    .line 1688
    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->withDeleteMarker:Ljava/lang/Boolean;

    goto :goto_0

    .line 1689
    :cond_7
    const-string v0, "Error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1690
    iget-object v6, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->errorResults:Ljava/util/List;

    new-instance v0, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->result:Lorg/jets3t/service/model/MultipleDeleteResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->key:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->version:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->errorCode:Ljava/lang/String;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->message:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lorg/jets3t/service/model/MultipleDeleteResult$ErrorResult;-><init>(Lorg/jets3t/service/model/MultipleDeleteResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1692
    iput-boolean v8, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->inError:Z

    .line 1693
    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->message:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->errorCode:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->deleteMarkerVersion:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->version:Ljava/lang/String;

    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->key:Ljava/lang/String;

    .line 1694
    iput-object v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->withDeleteMarker:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1697
    :cond_8
    const-string v0, "DeleteResult"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1698
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->result:Lorg/jets3t/service/model/MultipleDeleteResult;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->deletedObjectResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/MultipleDeleteResult;->setDeletedObjectResults(Ljava/util/List;)V

    .line 1699
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->result:Lorg/jets3t/service/model/MultipleDeleteResult;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->errorResults:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/MultipleDeleteResult;->setErrorResults(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public getMultipleDeleteResult()Lorg/jets3t/service/model/MultipleDeleteResult;
    .locals 1

    .prologue
    .line 1655
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->result:Lorg/jets3t/service/model/MultipleDeleteResult;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1660
    const-string v0, "Deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1661
    iput-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->inDeleted:Z

    .line 1665
    :cond_0
    :goto_0
    return-void

    .line 1662
    :cond_1
    const-string v0, "Error"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1663
    iput-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$MultipleDeleteResultHandler;->inError:Z

    goto :goto_0
.end method
