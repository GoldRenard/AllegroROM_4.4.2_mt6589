.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationConfigurationHandler"
.end annotation


# instance fields
.field private config:Lorg/jets3t/service/model/NotificationConfig;

.field private lastEvent:Ljava/lang/String;

.field private lastTopic:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1620
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 1621
    new-instance v0, Lorg/jets3t/service/model/NotificationConfig;

    invoke-direct {v0}, Lorg/jets3t/service/model/NotificationConfig;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->config:Lorg/jets3t/service/model/NotificationConfig;

    .line 1622
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->lastTopic:Ljava/lang/String;

    .line 1623
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->lastEvent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 1631
    const-string v0, "Topic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1632
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->lastTopic:Ljava/lang/String;

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1633
    :cond_1
    const-string v0, "Event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1634
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->lastEvent:Ljava/lang/String;

    .line 1635
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->config:Lorg/jets3t/service/model/NotificationConfig;

    new-instance v1, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->config:Lorg/jets3t/service/model/NotificationConfig;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->lastTopic:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->lastEvent:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;-><init>(Lorg/jets3t/service/model/NotificationConfig;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/jets3t/service/model/NotificationConfig;->addTopicConfig(Lorg/jets3t/service/model/NotificationConfig$TopicConfig;)V

    goto :goto_0

    .line 1637
    :cond_2
    const-string v0, "NotificationConfiguration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public getNotificationConfig()Lorg/jets3t/service/model/NotificationConfig;
    .locals 1

    .prologue
    .line 1626
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$NotificationConfigurationHandler;->config:Lorg/jets3t/service/model/NotificationConfig;

    return-object v0
.end method
