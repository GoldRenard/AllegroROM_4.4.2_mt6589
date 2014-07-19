.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VersioningConfigurationHandler"
.end annotation


# instance fields
.field private mfaStatus:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

.field private versioningStatus:Lorg/jets3t/service/model/S3BucketVersioningStatus;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 933
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 934
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->versioningStatus:Lorg/jets3t/service/model/S3BucketVersioningStatus;

    .line 935
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->status:Ljava/lang/String;

    .line 936
    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->mfaStatus:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    .line 944
    const-string v0, "Status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->status:Ljava/lang/String;

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    const-string v0, "MfaDelete"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 947
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->mfaStatus:Ljava/lang/String;

    goto :goto_0

    .line 948
    :cond_2
    const-string v0, "VersioningConfiguration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    new-instance v0, Lorg/jets3t/service/model/S3BucketVersioningStatus;

    const-string v1, "Enabled"

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Enabled"

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->mfaStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/jets3t/service/model/S3BucketVersioningStatus;-><init>(ZZ)V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->versioningStatus:Lorg/jets3t/service/model/S3BucketVersioningStatus;

    goto :goto_0
.end method

.method public getVersioningStatus()Lorg/jets3t/service/model/S3BucketVersioningStatus;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$VersioningConfigurationHandler;->versioningStatus:Lorg/jets3t/service/model/S3BucketVersioningStatus;

    return-object v0
.end method
