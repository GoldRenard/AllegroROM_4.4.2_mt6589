.class public Lcontribs/mx/S3ObjectMx;
.super Ljava/lang/Object;
.source "S3ObjectMx.java"

# interfaces
.implements Lcontribs/mx/S3ObjectMxMBean;


# static fields
.field private static final COPY:I = 0x5

.field private static final DELETE:I = 0x4

.field private static final GET:I = 0x1

.field private static final HEAD:I = 0x2

.field private static final MAX:I = 0x6

.field private static final PUT:I = 0x3

.field private static final TOTAL:I

.field public static final isEnabled:Z

.field private static objects:Ljava/util/Map;


# instance fields
.field private final counters:[Lcontribs/mx/LongCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "true"

    const-string v1, "jets3t.object.mx"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcontribs/mx/S3ObjectMx;->isEnabled:Z

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcontribs/mx/S3ObjectMx;->objects:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v1, 0x6

    new-array v1, v1, [Lcontribs/mx/LongCounter;

    iput-object v1, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    new-instance v2, Lcontribs/mx/LongCounter;

    invoke-direct {v2}, Lcontribs/mx/LongCounter;-><init>()V

    aput-object v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 137
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcontribs/mx/S3ObjectMx;->increment(ILjava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {p0}, Lcontribs/mx/S3BucketMx;->o_copy(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public static delete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcontribs/mx/S3ObjectMx;->increment(ILjava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcontribs/mx/S3BucketMx;->o_delete(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcontribs/mx/S3ObjectMx;->increment(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Lcontribs/mx/S3BucketMx;->o_get(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private static getInstance(Ljava/lang/String;Ljava/lang/String;)Lcontribs/mx/S3ObjectMx;
    .locals 6
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Type=S3Object,Bucket="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "props":Ljava/lang/String;
    sget-object v4, Lcontribs/mx/S3ObjectMx;->objects:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcontribs/mx/S3ObjectMx;

    .line 93
    .local v2, "object":Lcontribs/mx/S3ObjectMx;
    if-nez v2, :cond_0

    .line 94
    new-instance v2, Lcontribs/mx/S3ObjectMx;

    .end local v2    # "object":Lcontribs/mx/S3ObjectMx;
    invoke-direct {v2}, Lcontribs/mx/S3ObjectMx;-><init>()V

    .line 95
    .restart local v2    # "object":Lcontribs/mx/S3ObjectMx;
    sget-object v4, Lcontribs/mx/S3ObjectMx;->objects:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {v3}, Lcontribs/mx/S3ServiceMx;->getObjectName(Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    .line 98
    .local v1, "name":Ljavax/management/ObjectName;
    :try_start_0
    invoke-static {v2, v1}, Lcontribs/mx/S3ServiceMx;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "name":Ljavax/management/ObjectName;
    :cond_0
    :goto_0
    return-object v2

    .line 99
    .restart local v1    # "name":Ljavax/management/ObjectName;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static head(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcontribs/mx/S3ObjectMx;->increment(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {p0}, Lcontribs/mx/S3BucketMx;->o_head(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static increment(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    sget-boolean v1, Lcontribs/mx/S3ObjectMx;->isEnabled:Z

    if-eqz v1, :cond_0

    .line 110
    invoke-static {p1, p2}, Lcontribs/mx/S3ObjectMx;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcontribs/mx/S3ObjectMx;

    move-result-object v0

    .line 111
    .local v0, "object":Lcontribs/mx/S3ObjectMx;
    iget-object v1, v0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcontribs/mx/LongCounter;->increment()V

    .line 112
    iget-object v1, v0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    aget-object v1, v1, p0

    invoke-virtual {v1}, Lcontribs/mx/LongCounter;->increment()V

    .line 114
    .end local v0    # "object":Lcontribs/mx/S3ObjectMx;
    :cond_0
    return-void
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcontribs/mx/S3ObjectMx;->increment(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {p0}, Lcontribs/mx/S3BucketMx;->o_put(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static registerMBeans(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V
    .locals 2
    .param p0, "bucketName"    # Ljava/lang/String;
    .param p1, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 78
    sget-boolean v1, Lcontribs/mx/S3ObjectMx;->isEnabled:Z

    if-nez v1, :cond_1

    .line 84
    :cond_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 82
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcontribs/mx/S3ObjectMx;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lcontribs/mx/S3ObjectMx;

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getTotalCopyRequests()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalDeleteRequests()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalGetRequests()J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalHeadRequests()J
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalPutRequests()J
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRequests()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcontribs/mx/S3ObjectMx;->counters:[Lcontribs/mx/LongCounter;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v0

    return-wide v0
.end method
