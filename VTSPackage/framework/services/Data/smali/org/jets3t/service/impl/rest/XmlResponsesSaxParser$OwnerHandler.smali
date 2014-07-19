.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;
.super Lorg/jets3t/service/impl/rest/SimpleHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OwnerHandler"
.end annotation


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;Lorg/xml/sax/XMLReader;)V
    .locals 0
    .param p2, "xr"    # Lorg/xml/sax/XMLReader;

    .prologue
    .line 1120
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    .line 1121
    invoke-direct {p0, p2}, Lorg/jets3t/service/impl/rest/SimpleHandler;-><init>(Lorg/xml/sax/XMLReader;)V

    .line 1122
    return-void
.end method


# virtual methods
.method public endDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1136
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->displayName:Ljava/lang/String;

    .line 1137
    return-void
.end method

.method public endID(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1132
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->id:Ljava/lang/String;

    .line 1133
    return-void
.end method

.method public endInitiator(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1145
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 1146
    return-void
.end method

.method public endOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1140
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/SimpleHandler;->returnControlToParentHandler()V

    .line 1141
    return-void
.end method

.method public getOwner()Lorg/jets3t/service/model/StorageOwner;
    .locals 2

    .prologue
    .line 1125
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-virtual {v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->newOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    .line 1126
    .local v0, "owner":Lorg/jets3t/service/model/StorageOwner;
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/StorageOwner;->setId(Ljava/lang/String;)V

    .line 1127
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$OwnerHandler;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/StorageOwner;->setDisplayName(Ljava/lang/String;)V

    .line 1128
    return-object v0
.end method
