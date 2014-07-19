.class public Lorg/jets3t/service/model/NotificationConfig$TopicConfig;
.super Ljava/lang/Object;
.source "NotificationConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/model/NotificationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TopicConfig"
.end annotation


# instance fields
.field protected event:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/model/NotificationConfig;

.field protected topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/model/NotificationConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "topic"    # Ljava/lang/String;
    .param p3, "event"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;->this$0:Lorg/jets3t/service/model/NotificationConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;->topic:Ljava/lang/String;

    .line 84
    iput-object p3, p0, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;->event:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public getEvent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jets3t/service/model/NotificationConfig$TopicConfig;->topic:Ljava/lang/String;

    return-object v0
.end method
