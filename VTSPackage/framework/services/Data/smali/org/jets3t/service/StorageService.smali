.class public abstract Lorg/jets3t/service/StorageService;
.super Ljava/lang/Object;
.source "StorageService.java"


# static fields
.field public static final BUCKET_STATUS__ALREADY_CLAIMED:I = 0x2

.field public static final BUCKET_STATUS__DOES_NOT_EXIST:I = 0x1

.field public static final BUCKET_STATUS__MY_BUCKET:I

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected credentials:Lorg/jets3t/service/security/ProviderCredentials;

.field private internalErrorRetryMax:I

.field private invokingApplicationDescription:Ljava/lang/String;

.field private isHttpsOnly:Z

.field private isShutdown:Z

.field protected jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

.field protected timeOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/jets3t/service/StorageService;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/StorageService;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method protected constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/StorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method protected constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;)V
    .locals 1
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v0, Lorg/jets3t/service/Constants;->JETS3T_PROPERTIES_FILENAME:Ljava/lang/String;

    invoke-static {v0}, Lorg/jets3t/service/Jets3tProperties;->getInstance(Ljava/lang/String;)Lorg/jets3t/service/Jets3tProperties;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jets3t/service/StorageService;-><init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/jets3t/service/Jets3tProperties;)V

    .line 155
    return-void
.end method

.method protected constructor <init>(Lorg/jets3t/service/security/ProviderCredentials;Ljava/lang/String;Lorg/jets3t/service/Jets3tProperties;)V
    .locals 3
    .param p1, "credentials"    # Lorg/jets3t/service/security/ProviderCredentials;
    .param p2, "invokingApplicationDescription"    # Ljava/lang/String;
    .param p3, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;

    .prologue
    const/4 v2, 0x5

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    .line 83
    iput-object v0, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    .line 85
    iput-object v0, p0, Lorg/jets3t/service/StorageService;->invokingApplicationDescription:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/StorageService;->isHttpsOnly:Z

    .line 87
    iput v2, p0, Lorg/jets3t/service/StorageService;->internalErrorRetryMax:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/StorageService;->isShutdown:Z

    .line 100
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/StorageService;->timeOffset:J

    .line 117
    iput-object p1, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    .line 118
    iput-object p2, p0, Lorg/jets3t/service/StorageService;->invokingApplicationDescription:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    .line 121
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getHttpsOnly()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/StorageService;->isHttpsOnly:Z

    .line 122
    const-string v0, "storage-service.internal-error-retry-max"

    invoke-virtual {p3, v0, v2}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/StorageService;->internalErrorRetryMax:I

    .line 125
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->initializeDefaults()V

    .line 126
    return-void
.end method


# virtual methods
.method protected assertAuthenticatedConnection(Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->isAuthenticatedConnection()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested action cannot be performed with a non-authenticated service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    return-void
.end method

.method protected assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V
    .locals 3
    .param p1, "bucket"    # Lorg/jets3t/service/model/StorageBucket;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 331
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 332
    :cond_0
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be performed with an invalid bucket: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    return-void
.end method

.method protected assertValidObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 360
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be performed with an invalid object key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_1
    return-void
.end method

.method protected assertValidObject(Lorg/jets3t/service/model/StorageObject;Ljava/lang/String;)V
    .locals 3
    .param p1, "object"    # Lorg/jets3t/service/model/StorageObject;
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 346
    :cond_0
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The action "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be performed with an invalid object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_1
    return-void
.end method

.method public abstract checkBucketStatus(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)Ljava/util/Map;
    .locals 10
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceObjectKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationObject"    # Lorg/jets3t/service/model/StorageObject;
    .param p5, "replaceMetadata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 916
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/StorageService;->copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;ZLjava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;ZLjava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 16
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceObjectKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationObject"    # Lorg/jets3t/service/model/StorageObject;
    .param p5, "replaceMetadata"    # Z
    .param p6, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p7, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p8, "ifMatchTags"    # [Ljava/lang/String;
    .param p9, "ifNoneMatchTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            "Z",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 866
    const-string v2, "copyObject"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 867
    if-eqz p5, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/StorageObject;->getModifiableMetadata()Ljava/util/Map;

    move-result-object v8

    .line 870
    .local v8, "destinationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectCopyEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p4 .. p4}, Lorg/jets3t/service/model/StorageObject;->getServerSideEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v2 .. v15}, Lorg/jets3t/service/StorageService;->copyObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 867
    .end local v8    # "destinationMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method protected abstract copyObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 444
    invoke-virtual {p0, p1, v0, v0}, Lorg/jets3t/service/StorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    return-object v0
.end method

.method public createBucket(Lorg/jets3t/service/model/StorageBucket;)Lorg/jets3t/service/model/StorageBucket;
    .locals 3
    .param p1, "bucket"    # Lorg/jets3t/service/model/StorageBucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 466
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/StorageBucket;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jets3t/service/model/StorageBucket;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/jets3t/service/StorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    return-object v0
.end method

.method protected createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "location"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jets3t/service/StorageService;->createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createBucketImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/util/Map;)Lorg/jets3t/service/model/StorageBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/acl/AccessControlList;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/jets3t/service/model/StorageBucket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public deleteBucket(Ljava/lang/String;)V
    .locals 0
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-virtual {p0, p1}, Lorg/jets3t/service/StorageService;->deleteBucketImpl(Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method public deleteBucket(Lorg/jets3t/service/model/StorageBucket;)V
    .locals 1
    .param p1, "bucket"    # Lorg/jets3t/service/model/StorageBucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 768
    const-string v0, "Delete bucket"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/StorageService;->deleteBucketImpl(Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method protected abstract deleteBucketImpl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1056
    const-string v0, "deleteObject"

    invoke-virtual {p0, p2, v0}, Lorg/jets3t/service/StorageService;->assertValidObject(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectDeleteEvent(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    .line 1058
    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/StorageService;->deleteObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method protected abstract deleteObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public getAccountOwner()Lorg/jets3t/service/model/StorageOwner;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 580
    const-string v0, "List all buckets to find account owner"

    invoke-virtual {p0, v0}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getAccountOwnerImpl()Lorg/jets3t/service/model/StorageOwner;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getAccountOwnerImpl()Lorg/jets3t/service/model/StorageOwner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public getBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 726
    const-string v2, "Get Bucket"

    invoke-virtual {p0, v2}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->listAllBuckets()[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 730
    .local v0, "existingBuckets":[Lorg/jets3t/service/model/StorageBucket;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 731
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 732
    aget-object v2, v0, v1

    .line 735
    :goto_1
    return-object v2

    .line 730
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getBucketAcl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1270
    invoke-virtual {p0, p1}, Lorg/jets3t/service/StorageService;->getBucketAclImpl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getBucketAclImpl(Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public getCurrentTimeWithOffset()Ljava/util/Date;
    .locals 5

    .prologue
    .line 1283
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lorg/jets3t/service/StorageService;->timeOffset:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected abstract getDisableDnsBuckets()Z
.end method

.method protected abstract getEnableServerSideEncryption()Z
.end method

.method protected abstract getEnableStorageClasses()Z
.end method

.method public abstract getEndpoint()Ljava/lang/String;
.end method

.method protected abstract getHttpPort()I
.end method

.method protected abstract getHttpsOnly()Z
.end method

.method protected abstract getHttpsPort()I
.end method

.method public getInternalErrorRetryMax()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/jets3t/service/StorageService;->internalErrorRetryMax:I

    return v0
.end method

.method public getInvokingApplicationDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->invokingApplicationDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->jets3tProperties:Lorg/jets3t/service/Jets3tProperties;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 525
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lorg/jets3t/service/StorageService;->getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Lorg/jets3t/service/model/StorageObject;
    .locals 10
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p4, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifMatchTags"    # [Ljava/lang/String;
    .param p6, "ifNoneMatchTags"    # [Ljava/lang/String;
    .param p7, "byteRangeStart"    # Ljava/lang/Long;
    .param p8, "byteRangeEnd"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectGetEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lorg/jets3t/service/StorageService;->getObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAcl(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1211
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jets3t/service/StorageService;->getObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public getObjectDetails(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 7
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 548
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lorg/jets3t/service/StorageService;->getObjectDetails(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public getObjectDetails(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .locals 8
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "ifModifiedSince"    # Ljava/util/Calendar;
    .param p4, "ifUnmodifiedSince"    # Ljava/util/Calendar;
    .param p5, "ifMatchTags"    # [Ljava/lang/String;
    .param p6, "ifNoneMatchTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1092
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectHeadEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/StorageService;->getObjectDetailsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getObjectDetailsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method protected abstract getObjectImpl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public getOrCreateBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0, p1}, Lorg/jets3t/service/StorageService;->getBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 751
    .local v0, "bucket":Lorg/jets3t/service/model/StorageBucket;
    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0, p1}, Lorg/jets3t/service/StorageService;->createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 755
    :cond_0
    return-object v0
.end method

.method public getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    return-object v0
.end method

.method public abstract getResourceParameterNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRestHeaderPrefix()Ljava/lang/String;
.end method

.method public abstract getRestMetadataPrefix()Ljava/lang/String;
.end method

.method protected abstract getSignatureIdentifier()Ljava/lang/String;
.end method

.method protected abstract getVirtualPath()Ljava/lang/String;
.end method

.method protected abstract getXmlResponseSaxParser()Lorg/jets3t/service/impl/rest/XmlResponsesSaxParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method protected initializeDefaults()V
    .locals 2

    .prologue
    .line 131
    const-string v0, "networkaddress.cache.ttl"

    const-string v1, "300"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    const-string v0, "networkaddress.cache.negative.ttl"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jets3t/service/mx/MxDelegate;->init()V

    .line 137
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jets3t/service/mx/MxDelegate;->registerS3ServiceMBean()V

    .line 138
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jets3t/service/mx/MxDelegate;->registerS3ServiceExceptionMBean()V

    .line 139
    return-void
.end method

.method public isAuthenticatedConnection()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jets3t/service/StorageService;->credentials:Lorg/jets3t/service/security/ProviderCredentials;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isBucketAccessible(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public isHttpsOnly()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lorg/jets3t/service/StorageService;->isHttpsOnly:Z

    return v0
.end method

.method public isObjectInBucket(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 485
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/StorageService;->getObjectDetails(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    return v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    const/16 v2, 0x194

    invoke-virtual {v0}, Lorg/jets3t/service/ServiceException;->getResponseCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    const-string v2, "NoSuchKey"

    invoke-virtual {v0}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "NoSuchBucket"

    invoke-virtual {v0}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 491
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 493
    :cond_2
    const-string v2, "AccessDenied"

    invoke-virtual {v0}, Lorg/jets3t/service/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 499
    throw v0
.end method

.method public isShutdown()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lorg/jets3t/service/StorageService;->isShutdown:Z

    return v0
.end method

.method public listAllBuckets()[Lorg/jets3t/service/model/StorageBucket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 562
    const-string v1, "List all buckets"

    invoke-virtual {p0, v1}, Lorg/jets3t/service/StorageService;->assertAuthenticatedConnection(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->listAllBucketsImpl()[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    .line 564
    .local v0, "buckets":[Lorg/jets3t/service/model/StorageBucket;
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageBucketMBeans([Lorg/jets3t/service/model/StorageBucket;)V

    .line 565
    return-object v0
.end method

.method protected listAllBucketsImpl()[Lorg/jets3t/service/model/StorageBucket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jets3t/service/StorageService;->listAllBucketsImpl(Ljava/util/Map;)[Lorg/jets3t/service/model/StorageBucket;

    move-result-object v0

    return-object v0
.end method

.method protected abstract listAllBucketsImpl(Ljava/util/Map;)[Lorg/jets3t/service/model/StorageBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[",
            "Lorg/jets3t/service/model/StorageBucket;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public listObjects(Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 388
    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/StorageService;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Lorg/jets3t/service/model/StorageObject;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 423
    const-wide/16 v4, 0x3e8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/StorageService;->listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public listObjects(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageBucketListEvent(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p0 .. p5}, Lorg/jets3t/service/StorageService;->listObjectsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    .line 624
    .local v0, "objects":[Lorg/jets3t/service/model/StorageObject;
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectMBean(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V

    .line 625
    return-object v0
.end method

.method public listObjectsChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/jets3t/service/StorageObjectsChunk;
    .locals 9
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .param p6, "priorLastKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageBucketListEvent(Ljava/lang/String;)V

    .line 662
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/jets3t/service/StorageService;->listObjectsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lorg/jets3t/service/StorageObjectsChunk;

    move-result-object v8

    .line 664
    .local v8, "chunk":Lorg/jets3t/service/StorageObjectsChunk;
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {v8}, Lorg/jets3t/service/StorageObjectsChunk;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectMBean(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V

    .line 665
    return-object v8
.end method

.method public listObjectsChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lorg/jets3t/service/StorageObjectsChunk;
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J
    .param p6, "priorLastKey"    # Ljava/lang/String;
    .param p7, "completeListing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageBucketListEvent(Ljava/lang/String;)V

    .line 706
    invoke-virtual/range {p0 .. p7}, Lorg/jets3t/service/StorageService;->listObjectsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lorg/jets3t/service/StorageObjectsChunk;

    move-result-object v0

    .line 708
    .local v0, "chunk":Lorg/jets3t/service/StorageObjectsChunk;
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jets3t/service/StorageObjectsChunk;->getObjects()[Lorg/jets3t/service/model/StorageObject;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectMBean(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V

    .line 709
    return-object v0
.end method

.method protected abstract listObjectsChunkedImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)Lorg/jets3t/service/StorageObjectsChunk;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method protected abstract listObjectsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public moveObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)Ljava/util/Map;
    .locals 3
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "sourceObjectKey"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "destinationObject"    # Lorg/jets3t/service/model/StorageObject;
    .param p5, "replaceMetadata"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 965
    invoke-virtual/range {p0 .. p5}, Lorg/jets3t/service/StorageService;->copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)Ljava/util/Map;

    move-result-object v0

    .line 969
    .local v0, "copyResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/StorageService;->deleteObject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-object v0

    .line 970
    :catch_0
    move-exception v1

    .line 971
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "DeleteException"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected abstract newBucket()Lorg/jets3t/service/model/StorageBucket;
.end method

.method protected abstract newObject()Lorg/jets3t/service/model/StorageObject;
.end method

.method public putBucketAcl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1230
    if-nez p2, :cond_0

    .line 1231
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The bucket \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not include ACL information"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1234
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/StorageService;->putBucketAclImpl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1235
    return-void
.end method

.method public putBucketAcl(Lorg/jets3t/service/model/StorageBucket;)V
    .locals 2
    .param p1, "bucket"    # Lorg/jets3t/service/model/StorageBucket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1251
    const-string v0, "Put Bucket Access Control List"

    invoke-virtual {p0, p1, v0}, Lorg/jets3t/service/StorageService;->assertValidBucket(Lorg/jets3t/service/model/StorageBucket;Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p1}, Lorg/jets3t/service/model/BaseStorageItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jets3t/service/model/StorageBucket;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/StorageService;->putBucketAcl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1253
    return-void
.end method

.method protected abstract putBucketAclImpl(Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public putObject(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create Object in bucket "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/jets3t/service/StorageService;->assertValidObject(Lorg/jets3t/service/model/StorageObject;Ljava/lang/String;)V

    .line 812
    invoke-static {}, Lorg/jets3t/service/mx/MxDelegate;->getInstance()Lorg/jets3t/service/mx/MxDelegate;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/jets3t/service/mx/MxDelegate;->registerStorageObjectPutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0, p1, p2}, Lorg/jets3t/service/StorageService;->putObjectImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v0

    return-object v0
.end method

.method public putObjectAcl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKey"    # Ljava/lang/String;
    .param p3, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1184
    if-nez p3, :cond_0

    .line 1185
    new-instance v0, Lorg/jets3t/service/ServiceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The object \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' does not include ACL information"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1188
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jets3t/service/StorageService;->putObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method public putObjectAcl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1160
    const-string v0, "Put Object Access Control List"

    invoke-virtual {p0, p2, v0}, Lorg/jets3t/service/StorageService;->assertValidObject(Lorg/jets3t/service/model/StorageObject;Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jets3t/service/StorageService;->putObjectAcl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V

    .line 1162
    return-void
.end method

.method protected abstract putObjectAclImpl(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method protected abstract putObjectImpl(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method public renameMetadataKeys(Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1297
    .local p1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1299
    .local v0, "convertedMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_1

    .line 1300
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1301
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1302
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1304
    .local v4, "value":Ljava/lang/Object;
    sget-object v5, Lorg/jets3t/service/utils/RestUtils;->HTTP_HEADER_METADATA_NAMES:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getRestHeaderPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1307
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->getRestMetadataPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1309
    :cond_0
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1312
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public renameObject(Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Ljava/util/Map;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "sourceObjectKey"    # Ljava/lang/String;
    .param p3, "destinationObject"    # Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1011
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/StorageService;->moveObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/StorageService;->isShutdown:Z

    .line 178
    invoke-virtual {p0}, Lorg/jets3t/service/StorageService;->shutdownImpl()V

    .line 179
    return-void
.end method

.method protected abstract shutdownImpl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation
.end method

.method protected sleepOnInternalError(I)V
    .locals 8
    .param p1, "internalErrorCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 276
    iget v2, p0, Lorg/jets3t/service/StorageService;->internalErrorRetryMax:I

    if-gt p1, v2, :cond_1

    .line 277
    const-wide/16 v2, 0x32

    int-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-long v4, v4

    mul-long v0, v2, v4

    .line 278
    .local v0, "delayMs":J
    sget-object v2, Lorg/jets3t/service/StorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    sget-object v2, Lorg/jets3t/service/StorageService;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Internal Server error(s), will retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 282
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 287
    return-void

    .line 284
    .end local v0    # "delayMs":J
    :cond_1
    new-instance v2, Lorg/jets3t/service/ServiceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered too many Internal Server errors ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), aborting request."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public updateObjectMetadata(Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)Ljava/util/Map;
    .locals 6
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "object"    # Lorg/jets3t/service/model/StorageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jets3t/service/model/StorageObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1039
    invoke-virtual {p2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/StorageService;->copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
