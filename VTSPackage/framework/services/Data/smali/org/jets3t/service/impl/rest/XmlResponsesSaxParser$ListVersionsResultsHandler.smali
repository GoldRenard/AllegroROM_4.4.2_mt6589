.class public Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;
.super Lorg/jets3t/service/impl/rest/DefaultXmlHandler;
.source "XmlResponsesSaxParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListVersionsResultsHandler"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private final commonPrefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private etag:Ljava/lang/String;

.field private insideCommonPrefixes:Z

.field private isLatest:Z

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;",
            ">;"
        }
    .end annotation
.end field

.field private key:Ljava/lang/String;

.field private keyMarker:Ljava/lang/String;

.field private lastModified:Ljava/util/Date;

.field private listingTruncated:Z

.field private nextMarker:Ljava/lang/String;

.field private nextVersionIdMarker:Ljava/lang/String;

.field private owner:Lorg/jets3t/service/model/StorageOwner;

.field private requestMaxKeys:J

.field private requestPrefix:Ljava/lang/String;

.field private size:J

.field private storageClass:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

.field private versionId:Ljava/lang/String;

.field private versionIdMarker:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 956
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-direct {p0}, Lorg/jets3t/service/impl/rest/DefaultXmlHandler;-><init>()V

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->items:Ljava/util/List;

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->commonPrefixes:Ljava/util/List;

    .line 961
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->key:Ljava/lang/String;

    .line 962
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->versionId:Ljava/lang/String;

    .line 963
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->isLatest:Z

    .line 964
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->lastModified:Ljava/util/Date;

    .line 965
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 967
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->etag:Ljava/lang/String;

    .line 968
    iput-wide v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->size:J

    .line 969
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->storageClass:Ljava/lang/String;

    .line 971
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->insideCommonPrefixes:Z

    .line 974
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->bucketName:Ljava/lang/String;

    .line 975
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->requestPrefix:Ljava/lang/String;

    .line 976
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->keyMarker:Ljava/lang/String;

    .line 977
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->versionIdMarker:Ljava/lang/String;

    .line 978
    iput-wide v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->requestMaxKeys:J

    .line 979
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->listingTruncated:Z

    .line 980
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->nextMarker:Ljava/lang/String;

    .line 981
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->nextVersionIdMarker:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "elementText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1040
    const-string v1, "Name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1041
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->bucketName:Ljava/lang/String;

    .line 1042
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    # getter for: Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->access$000()Lorg/apache/commons/logging/Log;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Examining listing for bucket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->bucketName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1113
    :cond_0
    :goto_0
    return-void

    .line 1045
    :cond_1
    iget-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->insideCommonPrefixes:Z

    if-nez v1, :cond_2

    const-string v1, "Prefix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1046
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->requestPrefix:Ljava/lang/String;

    goto :goto_0

    .line 1047
    :cond_2
    const-string v1, "KeyMarker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1048
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->keyMarker:Ljava/lang/String;

    goto :goto_0

    .line 1049
    :cond_3
    const-string v1, "NextKeyMarker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1050
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->nextMarker:Ljava/lang/String;

    goto :goto_0

    .line 1051
    :cond_4
    const-string v1, "VersionIdMarker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1052
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->versionIdMarker:Ljava/lang/String;

    goto :goto_0

    .line 1053
    :cond_5
    const-string v1, "NextVersionIdMarker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1054
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->nextVersionIdMarker:Ljava/lang/String;

    goto :goto_0

    .line 1055
    :cond_6
    const-string v1, "MaxKeys"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1056
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->requestMaxKeys:J

    goto :goto_0

    .line 1057
    :cond_7
    const-string v1, "IsTruncated"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1058
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 1059
    .local v11, "isTruncatedStr":Ljava/lang/String;
    const-string v1, "false"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1060
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->listingTruncated:Z

    goto :goto_0

    .line 1061
    :cond_8
    const-string v1, "true"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1062
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->listingTruncated:Z

    goto :goto_0

    .line 1064
    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for IsTruncated field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1069
    .end local v11    # "isTruncatedStr":Ljava/lang/String;
    :cond_a
    const-string v1, "Version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1070
    new-instance v0, Lorg/jets3t/service/model/S3Version;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->versionId:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->isLatest:Z

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->lastModified:Ljava/util/Date;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    check-cast v5, Lorg/jets3t/service/model/S3Owner;

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->etag:Ljava/lang/String;

    iget-wide v7, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->size:J

    iget-object v9, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->storageClass:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lorg/jets3t/service/model/S3Version;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;Ljava/lang/String;JLjava/lang/String;)V

    .line 1072
    .local v0, "item":Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1073
    .end local v0    # "item":Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    :cond_b
    const-string v1, "DeleteMarker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1074
    new-instance v0, Lorg/jets3t/service/model/S3DeleteMarker;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->key:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->versionId:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->isLatest:Z

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->lastModified:Ljava/util/Date;

    iget-object v5, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    check-cast v5, Lorg/jets3t/service/model/S3Owner;

    invoke-direct/range {v0 .. v5}, Lorg/jets3t/service/model/S3DeleteMarker;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Lorg/jets3t/service/model/S3Owner;)V

    .line 1076
    .restart local v0    # "item":Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->items:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1079
    .end local v0    # "item":Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    :cond_c
    const-string v1, "Key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1080
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->key:Ljava/lang/String;

    goto/16 :goto_0

    .line 1081
    :cond_d
    const-string v1, "VersionId"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1082
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->versionId:Ljava/lang/String;

    goto/16 :goto_0

    .line 1083
    :cond_e
    const-string v1, "IsLatest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1084
    const-string v1, "true"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->isLatest:Z

    goto/16 :goto_0

    .line 1085
    :cond_f
    const-string v1, "LastModified"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1087
    :try_start_0
    invoke-static {p2}, Lorg/jets3t/service/utils/ServiceUtils;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->lastModified:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1088
    :catch_0
    move-exception v10

    .line 1089
    .local v10, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-ISO8601 date for LastModified in bucket\'s versions listing output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1093
    .end local v10    # "e":Ljava/text/ParseException;
    :cond_10
    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1094
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->etag:Ljava/lang/String;

    goto/16 :goto_0

    .line 1095
    :cond_11
    const-string v1, "Size"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1096
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->size:J

    goto/16 :goto_0

    .line 1097
    :cond_12
    const-string v1, "StorageClass"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1098
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->storageClass:Ljava/lang/String;

    goto/16 :goto_0

    .line 1101
    :cond_13
    const-string v1, "ID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1102
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->this$0:Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;

    invoke-virtual {v1}, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;->newOwner()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 1103
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v1, p2}, Lorg/jets3t/service/model/StorageOwner;->setId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1104
    :cond_14
    const-string v1, "DisplayName"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1105
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    invoke-virtual {v1, p2}, Lorg/jets3t/service/model/StorageOwner;->setDisplayName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1108
    :cond_15
    iget-boolean v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->insideCommonPrefixes:Z

    if-eqz v1, :cond_16

    const-string v1, "Prefix"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1109
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1110
    :cond_16
    const-string v1, "CommonPrefixes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1111
    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->insideCommonPrefixes:Z

    goto/16 :goto_0
.end method

.method public getCommonPrefixes()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->commonPrefixes:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->commonPrefixes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getItems()[Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;
    .locals 2

    .prologue
    .line 997
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->items:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/model/BaseVersionOrDeleteMarker;

    return-object v0
.end method

.method public getKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->keyMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextKeyMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->nextMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getNextVersionIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->nextVersionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestMaxKeys()J
    .locals 2

    .prologue
    .line 1025
    iget-wide v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->requestMaxKeys:J

    return-wide v0
.end method

.method public getRequestPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->requestPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionIdMarker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->versionIdMarker:Ljava/lang/String;

    return-object v0
.end method

.method public isListingTruncated()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->listingTruncated:Z

    return v0
.end method

.method public startElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1030
    const-string v0, "Owner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->owner:Lorg/jets3t/service/model/StorageOwner;

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    const-string v0, "CommonPrefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser$ListVersionsResultsHandler;->insideCommonPrefixes:Z

    goto :goto_0
.end method
