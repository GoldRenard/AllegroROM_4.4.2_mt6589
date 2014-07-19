.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketLoggingStatusHandler"
.end annotation


# instance fields
.field protected bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getBucketLoggingStatus()Lorg/jets3t/service/model/StorageBucketLoggingStatus;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$BucketLoggingStatusHandler;->bucketLoggingStatus:Lorg/jets3t/service/model/StorageBucketLoggingStatus;

    return-object v0
.end method
