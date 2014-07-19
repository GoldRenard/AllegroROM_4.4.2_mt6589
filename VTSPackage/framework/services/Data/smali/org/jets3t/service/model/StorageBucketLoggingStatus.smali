.class public abstract Lorg/jets3t/service/model/StorageBucketLoggingStatus;
.super Ljava/lang/Object;
.source "StorageBucketLoggingStatus.java"


# instance fields
.field private logfilePrefix:Ljava/lang/String;

.field private targetBucketName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->targetBucketName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->logfilePrefix:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "targetBucketName"    # Ljava/lang/String;
    .param p2, "logfilePrefix"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->targetBucketName:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->logfilePrefix:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->targetBucketName:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->logfilePrefix:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getLogfilePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->logfilePrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetBucketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->targetBucketName:Ljava/lang/String;

    return-object v0
.end method

.method public isLoggingEnabled()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->targetBucketName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->logfilePrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogfilePrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "logfilePrefix"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->logfilePrefix:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setTargetBucketName(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetBucketName"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->targetBucketName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoggingStatus enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->isLoggingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", targetBucketName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getTargetBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", logfilePrefix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->getLogfilePrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    return-object v0
.end method

.method public abstract toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation
.end method

.method public toXml()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p0}, Lorg/jets3t/service/model/StorageBucketLoggingStatus;->toXMLBuilder()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jets3t/service/ServiceException;

    const-string v2, "Failed to build XML document for ACL"

    invoke-direct {v1, v2, v0}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
