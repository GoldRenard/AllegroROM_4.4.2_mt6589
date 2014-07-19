.class public Lorg/jets3t/service/model/GSBucketLoggingStatus;
.super Lorg/jets3t/service/model/StorageBucketLoggingStatus;
.source "GSBucketLoggingStatus.java"


# instance fields
.field private predefinedAcl:Lorg/jets3t/service/acl/gs/GSAccessControlList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "targetBucketName"    # Ljava/lang/String;
    .param p2, "logfilePrefix"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public setPredefinedAcl(Lorg/jets3t/service/acl/gs/GSAccessControlList;)V
    .locals 0
    .param p1, "predefinedAcl"    # Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .prologue
    .line 60
    iput-object p1, p0, Lorg/jets3t/service/model/GSBucketLoggingStatus;->predefinedAcl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    .line 61
    return-void
.end method

.method public toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v1, "Logging"

    invoke-static {v1}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    const-string v2, "xmlns"

    const-string v3, "http://s3.amazonaws.com/doc/2006-03-01/"

    invoke-virtual {v1, v2, v3}, Lcom/jamesmurty/utils/XMLBuilder;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 69
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    invoke-virtual {p0}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "LogBucket"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 71
    const-string v1, "LogObjectPrefix"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/GSBucketLoggingStatus;->getLogfilePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 72
    iget-object v1, p0, Lorg/jets3t/service/model/GSBucketLoggingStatus;->predefinedAcl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    if-eqz v1, :cond_0

    .line 73
    const-string v1, "PredefinedAcl"

    invoke-virtual {v0, v1}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/model/GSBucketLoggingStatus;->predefinedAcl:Lorg/jets3t/service/acl/gs/GSAccessControlList;

    invoke-virtual {v2}, Lorg/jets3t/service/acl/gs/GSAccessControlList;->getValueForRESTHeaderACL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    .line 76
    :cond_0
    return-object v0
.end method
