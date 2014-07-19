.class public Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
.super Ljava/lang/Object;
.source "GatekeeperMessage.java"


# static fields
.field public static final APP_PROPERTY_GATEKEEPER_ERROR_CODE:Ljava/lang/String; = "gatekeeperErrorCode"

.field public static final DELIM:Ljava/lang/String; = "|"

.field public static final LIST_OBJECTS_IN_BUCKET_FLAG:Ljava/lang/String; = "list-objects-in-bucket"

.field public static final PROPERTY_CLIENT_VERSION_ID:Ljava/lang/String; = "clientVersionId"

.field public static final PROPERTY_PRIOR_FAILURE_MESSAGE:Ljava/lang/String; = "priorFailureMessage"

.field public static final PROPERTY_TRANSACTION_ID:Ljava/lang/String; = "transactionId"

.field public static final SUMMARY_DOCUMENT_METADATA_FLAG:Ljava/lang/String; = "jets3t-uploader-summary-doc"

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private applicationProperties:Ljava/util/Properties;

.field private messageProperties:Ljava/util/Properties;

.field private signatureRequestList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->applicationProperties:Ljava/util/Properties;

    .line 89
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->messageProperties:Ljava/util/Properties;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->signatureRequestList:Ljava/util/List;

    .line 96
    return-void
.end method

.method public static decodeFromProperties(Ljava/util/Map;)Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
    .locals 17
    .param p0, "postProperties"    # Ljava/util/Map;

    .prologue
    .line 269
    sget-object v14, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 270
    sget-object v14, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    const-string v15, "Decoding GatekeeperMessage from properties"

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 273
    :cond_0
    new-instance v1, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;

    invoke-direct {v1}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;-><init>()V

    .line 275
    .local v1, "gatekeeperMessage":Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v11, "signatureRequestMap":Ljava/util/Map;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 278
    .local v9, "propsIter":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 279
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 281
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 283
    .local v13, "value":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 284
    .local v8, "propertyValue":Ljava/lang/String;
    instance-of v14, v13, [Ljava/lang/String;

    if-eqz v14, :cond_2

    .line 285
    check-cast v13, [Ljava/lang/String;

    .end local v13    # "value":Ljava/lang/Object;
    check-cast v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v8, v13, v14

    .line 290
    :goto_1
    const-string v14, "application"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 291
    const-string v14, "|"

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v7, v8}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addApplicationProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v7    # "propertyName":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/Object;
    :cond_2
    move-object v8, v13

    .line 287
    check-cast v8, Ljava/lang/String;

    goto :goto_1

    .line 293
    .end local v13    # "value":Ljava/lang/Object;
    :cond_3
    const-string v14, "message"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 294
    const-string v14, "|"

    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 295
    .restart local v7    # "propertyName":Ljava/lang/String;
    invoke-virtual {v1, v7, v8}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addMessageProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 296
    .end local v7    # "propertyName":Ljava/lang/String;
    :cond_4
    const-string v14, "request"

    invoke-virtual {v4, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 297
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v14, "|"

    invoke-direct {v12, v4, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 299
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, "objectIndexStr":Ljava/lang/String;
    const/4 v3, 0x0

    .line 302
    .local v3, "isMetadata":Z
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 303
    .restart local v7    # "propertyName":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 304
    const/4 v3, 0x1

    .line 305
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 308
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 309
    .local v5, "objectIndex":Ljava/lang/Integer;
    const/4 v10, 0x0

    .line 311
    .local v10, "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    invoke-interface {v11, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 312
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    check-cast v10, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    .line 318
    .restart local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    :goto_2
    if-eqz v3, :cond_7

    .line 319
    invoke-virtual {v10, v7, v8}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->addObjectMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 314
    :cond_6
    new-instance v10, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    .end local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    invoke-direct {v10}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;-><init>()V

    .line 315
    .restart local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    invoke-interface {v11, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 321
    :cond_7
    const-string v14, "signatureType"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 322
    invoke-virtual {v10, v8}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->setSignatureType(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    :cond_8
    const-string v14, "objectKey"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 324
    invoke-virtual {v10, v8}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->setObjectKey(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    :cond_9
    const-string v14, "bucketName"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 326
    invoke-virtual {v10, v8}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->setBucketName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 327
    :cond_a
    const-string v14, "signedUrl"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 328
    invoke-virtual {v10, v8}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->signRequest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 329
    :cond_b
    const-string v14, "declineReason"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 330
    invoke-virtual {v10, v8}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->declineRequest(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :cond_c
    sget-object v14, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 333
    sget-object v14, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring unrecognised SignatureRequest property: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 338
    .end local v3    # "isMetadata":Z
    .end local v5    # "objectIndex":Ljava/lang/Integer;
    .end local v6    # "objectIndexStr":Ljava/lang/String;
    .end local v7    # "propertyName":Ljava/lang/String;
    .end local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    .end local v12    # "st":Ljava/util/StringTokenizer;
    :cond_d
    sget-object v14, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v14}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 339
    sget-object v14, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Ignoring unrecognised property name: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 344
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "propertyValue":Ljava/lang/String;
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v14

    if-ge v2, v14, :cond_f

    .line 345
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 346
    .restart local v5    # "objectIndex":Ljava/lang/Integer;
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    .line 347
    .restart local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    invoke-virtual {v1, v10}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addSignatureRequest(Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;)V

    .line 344
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 350
    .end local v5    # "objectIndex":Ljava/lang/Integer;
    .end local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    :cond_f
    return-object v1
.end method

.method private encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 188
    if-eqz p3, :cond_0

    .line 189
    instance-of v0, p3, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 190
    check-cast p3, Ljava/util/Date;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lorg/jets3t/service/utils/ServiceUtils;->formatIso8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :goto_0
    sget-object v0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encoded property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 198
    :cond_0
    return-void

    .line 192
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public addApplicationProperties(Ljava/util/Map;)V
    .locals 1
    .param p1, "propertiesMap"    # Ljava/util/Map;

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->applicationProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 150
    return-void
.end method

.method public addApplicationProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;

    .prologue
    .line 140
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->applicationProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public addMessageProperties(Ljava/util/Map;)V
    .locals 1
    .param p1, "propertiesMap"    # Ljava/util/Map;

    .prologue
    .line 176
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->messageProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 177
    return-void
.end method

.method public addMessageProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->messageProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public addSignatureRequest(Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;)V
    .locals 1
    .param p1, "signatureRequest"    # Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    .prologue
    .line 105
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->signatureRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public addSignatureRequests([Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;)V
    .locals 2
    .param p1, "signatureRequests"    # [Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    .prologue
    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 115
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->addSignatureRequest(Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public encodeToProperties()Ljava/util/Properties;
    .locals 15

    .prologue
    .line 208
    sget-object v13, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 209
    sget-object v13, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->log:Lorg/apache/commons/logging/Log;

    const-string v14, "Encoding GatekeeperMessage to properties"

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 212
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 213
    .local v0, "encodedProperties":Ljava/util/Properties;
    const/4 v3, 0x0

    .line 215
    .local v3, "iter":Ljava/util/Iterator;
    const-string v8, "application"

    .line 216
    .local v8, "prefix":Ljava/lang/String;
    iget-object v13, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->applicationProperties:Ljava/util/Properties;

    invoke-virtual {v13}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 217
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 218
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 219
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 221
    .local v12, "value":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v0, v13, v12}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 224
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_1
    const-string v8, "message"

    .line 225
    iget-object v13, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->messageProperties:Ljava/util/Properties;

    invoke-virtual {v13}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 226
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 227
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 228
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 230
    .restart local v12    # "value":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v0, v13, v12}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 233
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_2
    const-string v8, "request"

    .line 234
    invoke-virtual {p0}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->getSignatureRequests()[Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    move-result-object v11

    .line 235
    .local v11, "requests":[Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v13, v11

    if-ge v2, v13, :cond_4

    .line 236
    aget-object v10, v11, v2

    .line 237
    .local v10, "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, "propertyPrefix":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "signatureType"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getSignatureType()Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v0, v13, v14}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    .line 240
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "objectKey"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v0, v13, v14}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "bucketName"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getBucketName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v0, v13, v14}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    .line 242
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "signedUrl"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getSignedUrl()Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v0, v13, v14}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    .line 243
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "declineReason"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getDeclineReason()Ljava/lang/String;

    move-result-object v14

    invoke-direct {p0, v0, v13, v14}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    .line 245
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "metadata|"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 246
    invoke-virtual {v10}, Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;->getObjectMetadata()Ljava/util/Map;

    move-result-object v5

    .line 247
    .local v5, "metadata":Ljava/util/Map;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 248
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 249
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    .local v6, "metadataName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 252
    .local v7, "metadataValue":Ljava/lang/Object;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v0, v13, v7}, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->encodeProperty(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 235
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v6    # "metadataName":Ljava/lang/String;
    .end local v7    # "metadataValue":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 256
    .end local v5    # "metadata":Ljava/util/Map;
    .end local v9    # "propertyPrefix":Ljava/lang/String;
    .end local v10    # "request":Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    :cond_4
    return-object v0
.end method

.method public getApplicationProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->applicationProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getMessageProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->messageProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getSignatureRequests()[Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->signatureRequestList:Ljava/util/List;

    iget-object v1, p0, Lorg/jets3t/service/utils/gatekeeper/GatekeeperMessage;->signatureRequestList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    check-cast v0, [Lorg/jets3t/service/utils/gatekeeper/SignatureRequest;

    return-object v0
.end method
