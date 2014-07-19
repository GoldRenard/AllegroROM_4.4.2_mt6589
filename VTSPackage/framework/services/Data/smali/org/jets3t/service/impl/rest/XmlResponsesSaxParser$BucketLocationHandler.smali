.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketLocationHandler"
.end annotation


# instance fields
.field private location:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    .line 808
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 809
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 821
    const-string v0, "LocationConstraint"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 823
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLocationHandler;->location:Ljava/lang/String;

    return-object v0
.end method
