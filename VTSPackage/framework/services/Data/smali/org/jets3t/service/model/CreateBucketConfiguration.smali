.class public Lorg/jets3t/service/model/CreateBucketConfiguration;
.super Ljava/lang/Object;
.source "CreateBucketConfiguration.java"


# instance fields
.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/CreateBucketConfiguration;->location:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/model/CreateBucketConfiguration;->location:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/jets3t/service/model/CreateBucketConfiguration;->location:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jets3t/service/model/CreateBucketConfiguration;->location:Ljava/lang/String;

    return-object v0
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lorg/jets3t/service/model/CreateBucketConfiguration;->location:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toXml()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 67
    const-string v1, "CreateBucketConfiguration"

    invoke-static {v1}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v1, v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "LocationConstraint"

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/model/CreateBucketConfiguration;->location:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 70
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    invoke-virtual {v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
