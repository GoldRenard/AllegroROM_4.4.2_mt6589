.class public Lcontribs/mx/S3ServiceMx;
.super Ljava/lang/Object;
.source "S3ServiceMx.java"

# interfaces
.implements Lcontribs/mx/S3ServiceMxMBean;


# static fields
.field static final DOMAIN:Ljava/lang/String; = "jets3t"

.field private static instance:Lcontribs/mx/S3ServiceMx;


# instance fields
.field bucketCounter:Lcontribs/mx/S3BucketMx;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcontribs/mx/S3BucketMx;

    invoke-direct {v0}, Lcontribs/mx/S3BucketMx;-><init>()V

    iput-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    .line 40
    return-void
.end method

.method static getInstance()Lcontribs/mx/S3ServiceMx;
    .locals 4

    .prologue
    .line 76
    sget-object v3, Lcontribs/mx/S3ServiceMx;->instance:Lcontribs/mx/S3ServiceMx;

    if-nez v3, :cond_0

    .line 77
    const-string v2, "Type=S3Service"

    .line 79
    .local v2, "props":Ljava/lang/String;
    new-instance v3, Lcontribs/mx/S3ServiceMx;

    invoke-direct {v3}, Lcontribs/mx/S3ServiceMx;-><init>()V

    sput-object v3, Lcontribs/mx/S3ServiceMx;->instance:Lcontribs/mx/S3ServiceMx;

    .line 80
    invoke-static {v2}, Lcontribs/mx/S3ServiceMx;->getObjectName(Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    .line 82
    .local v1, "name":Ljavax/management/ObjectName;
    :try_start_0
    sget-object v3, Lcontribs/mx/S3ServiceMx;->instance:Lcontribs/mx/S3ServiceMx;

    invoke-static {v3, v1}, Lcontribs/mx/S3ServiceMx;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_0
    sget-object v3, Lcontribs/mx/S3ServiceMx;->instance:Lcontribs/mx/S3ServiceMx;

    return-object v3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getMBeanServer()Ljavax/management/MBeanServer;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {v1}, Ljavax/management/MBeanServerFactory;->findMBeanServer(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 53
    .local v0, "servers":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 56
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/management/MBeanServer;

    goto :goto_0
.end method

.method static getObjectName(Ljava/lang/String;)Ljavax/management/ObjectName;
    .locals 4
    .param p0, "props"    # Ljava/lang/String;

    .prologue
    .line 44
    :try_start_0
    new-instance v1, Ljavax/management/ObjectName;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jets3t:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/management/MalformedObjectNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljavax/management/MalformedObjectNameException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "name"    # Ljavax/management/ObjectName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/InstanceAlreadyExistsException;,
            Ljavax/management/MBeanRegistrationException;,
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcontribs/mx/S3ServiceMx;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v0

    .line 65
    .local v0, "server":Ljavax/management/MBeanServer;
    if-nez v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    move-result-object v1

    goto :goto_0
.end method

.method public static registerMBean()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lcontribs/mx/S3ServiceMx;->getInstance()Lcontribs/mx/S3ServiceMx;

    .line 73
    return-void
.end method


# virtual methods
.method public getTotalListRequests()J
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-virtual {v0}, Lcontribs/mx/S3BucketMx;->getTotalListRequests()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectCopyRequests()J
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-virtual {v0}, Lcontribs/mx/S3BucketMx;->getTotalObjectCopyRequests()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectDeleteRequests()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-virtual {v0}, Lcontribs/mx/S3BucketMx;->getTotalObjectDeleteRequests()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectGetRequests()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-virtual {v0}, Lcontribs/mx/S3BucketMx;->getTotalObjectGetRequests()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectHeadRequests()J
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-virtual {v0}, Lcontribs/mx/S3BucketMx;->getTotalObjectHeadRequests()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalObjectPutRequests()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-virtual {v0}, Lcontribs/mx/S3BucketMx;->getTotalObjectPutRequests()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalRequests()J
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcontribs/mx/S3ServiceMx;->bucketCounter:Lcontribs/mx/S3BucketMx;

    invoke-virtual {v0}, Lcontribs/mx/S3BucketMx;->getTotalRequests()J

    move-result-wide v0

    return-wide v0
.end method
