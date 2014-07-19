.class public Lorg/jets3t/service/model/NotificationConfig;
.super Ljava/lang/Object;
.source "NotificationConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/model/NotificationConfig$TopicConfig;
    }
.end annotation


# static fields
.field public static final EVENT_REDUCED_REDUNDANCY_LOST_OBJECT:Ljava/lang/String; = "s3:ReducedRedundancyLostObject"


# instance fields
.field private topicConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/NotificationConfig$TopicConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/NotificationConfig;->topicConfigs:Ljava/util/List;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/NotificationConfig$TopicConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "topicConfigs":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/NotificationConfig$TopicConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/model/NotificationConfig;->topicConfigs:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lorg/jets3t/service/model/NotificationConfig;->topicConfigs:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public addTopicConfig(Lorg/jets3t/service/model/NotificationConfig$TopicConfig;)V
    .locals 1
    .param p1, "config"    # Lorg/jets3t/service/model/NotificationConfig$TopicConfig;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jets3t/service/model/NotificationConfig;->topicConfigs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public getTopicConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/NotificationConfig$TopicConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jets3t/service/model/NotificationConfig;->topicConfigs:Ljava/util/List;

    return-object v0
.end method

.method public toXml()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljavax/xml/parsers/FactoryConfigurationError;,
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v3, "NotificationConfiguration"

    invoke-static {v3}, Lcom/jamesmurty/utils/XMLBuilder;->create(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v0

    .line 69
    .local v0, "builder":Lcom/jamesmurty/utils/XMLBuilder;
    iget-object v3, p0, Lorg/jets3t/service/model/NotificationConfig;->topicConfigs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;

    .line 70
    .local v2, "topicConfig":Lorg/jets3t/service/model/NotificationConfig$TopicConfig;
    const-string v3, "TopicConfiguration"

    invoke-virtual {v0, v3}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v3

    const-string v4, "Topic"

    invoke-virtual {v3, v4}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v3

    iget-object v4, v2, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jamesmurty/utils/XMLBuilder;->up()Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v3

    const-string v4, "Event"

    invoke-virtual {v3, v4}, Lcom/jamesmurty/utils/XMLBuilder;->elem(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    move-result-object v3

    iget-object v4, v2, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;->event:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jamesmurty/utils/XMLBuilder;->text(Ljava/lang/String;)Lcom/jamesmurty/utils/XMLBuilder;

    goto :goto_0

    .line 75
    .end local v2    # "topicConfig":Lorg/jets3t/service/model/NotificationConfig$TopicConfig;
    :cond_0
    invoke-virtual {v0}, Lcom/jamesmurty/utils/XMLBuilder;->asString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
