.class public Lcontribs/mx/S3ServiceExceptionMx;
.super Ljava/lang/Object;
.source "S3ServiceExceptionMx.java"

# interfaces
.implements Ljavax/management/DynamicMBean;


# static fields
.field private static final E_DESCR:I = 0x1

.field private static final E_NAME:I

.field private static instance:Lcontribs/mx/S3ServiceExceptionMx;


# instance fields
.field private counters:Ljava/util/Map;

.field private info:Ljavax/management/MBeanInfo;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcontribs/mx/S3ServiceExceptionMx;->counters:Ljava/util/Map;

    .line 76
    sget-object v0, Lcontribs/mx/S3ServiceErrorCodeTable;->TABLE:[[Ljava/lang/String;

    .line 77
    .local v0, "errors":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcontribs/mx/S3ServiceExceptionMx;->counters:Ljava/util/Map;

    aget-object v3, v0, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    new-instance v4, Lcontribs/mx/LongCounter;

    invoke-direct {v4}, Lcontribs/mx/LongCounter;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_0
    return-void
.end method

.method private getCounter(Ljava/lang/String;)Lcontribs/mx/LongCounter;
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcontribs/mx/S3ServiceExceptionMx;->counters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcontribs/mx/LongCounter;

    return-object v0
.end method

.method public static getInstance()Lcontribs/mx/S3ServiceExceptionMx;
    .locals 3

    .prologue
    .line 61
    sget-object v2, Lcontribs/mx/S3ServiceExceptionMx;->instance:Lcontribs/mx/S3ServiceExceptionMx;

    if-nez v2, :cond_0

    .line 62
    const-string v2, "Type=S3ServiceException"

    invoke-static {v2}, Lcontribs/mx/S3ServiceMx;->getObjectName(Ljava/lang/String;)Ljavax/management/ObjectName;

    move-result-object v1

    .line 64
    .local v1, "name":Ljavax/management/ObjectName;
    new-instance v2, Lcontribs/mx/S3ServiceExceptionMx;

    invoke-direct {v2}, Lcontribs/mx/S3ServiceExceptionMx;-><init>()V

    sput-object v2, Lcontribs/mx/S3ServiceExceptionMx;->instance:Lcontribs/mx/S3ServiceExceptionMx;

    .line 66
    :try_start_0
    sget-object v2, Lcontribs/mx/S3ServiceExceptionMx;->instance:Lcontribs/mx/S3ServiceExceptionMx;

    invoke-static {v2, v1}, Lcontribs/mx/S3ServiceMx;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    sget-object v2, Lcontribs/mx/S3ServiceExceptionMx;->instance:Lcontribs/mx/S3ServiceExceptionMx;

    return-object v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static increment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcontribs/mx/S3ServiceErrorCodeTable;->TABLE:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcontribs/mx/S3ServiceExceptionMx;->increment(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static increment(Ljava/lang/String;)V
    .locals 2
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcontribs/mx/S3ServiceExceptionMx;->getInstance()Lcontribs/mx/S3ServiceExceptionMx;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcontribs/mx/S3ServiceExceptionMx;->incrementCounter(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerMBean()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcontribs/mx/S3ServiceExceptionMx;->getInstance()Lcontribs/mx/S3ServiceExceptionMx;

    .line 58
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcontribs/mx/S3ServiceExceptionMx;->getCounter(Ljava/lang/String;)Lcontribs/mx/LongCounter;

    move-result-object v0

    .line 99
    .local v0, "counter":Lcontribs/mx/LongCounter;
    if-nez v0, :cond_0

    .line 100
    new-instance v1, Ljavax/management/AttributeNotFoundException;

    invoke-direct {v1, p1}, Ljavax/management/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1
.end method

.method public getAttributes([Ljava/lang/String;)Ljavax/management/AttributeList;
    .locals 8
    .param p1, "attributes"    # [Ljava/lang/String;

    .prologue
    .line 106
    new-instance v2, Ljavax/management/AttributeList;

    invoke-direct {v2}, Ljavax/management/AttributeList;-><init>()V

    .line 107
    .local v2, "list":Ljavax/management/AttributeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p1

    if-ge v1, v6, :cond_1

    .line 108
    aget-object v3, p1, v1

    .line 110
    .local v3, "name":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcontribs/mx/S3ServiceExceptionMx;->getCounter(Ljava/lang/String;)Lcontribs/mx/LongCounter;

    move-result-object v0

    .line 111
    .local v0, "counter":Lcontribs/mx/LongCounter;
    if-nez v0, :cond_0

    .line 112
    const-wide/16 v4, -0x1

    .line 117
    .local v4, "value":J
    :goto_1
    new-instance v6, Ljavax/management/Attribute;

    new-instance v7, Ljava/lang/Long;

    invoke-direct {v7, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v6, v3, v7}, Ljavax/management/Attribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Ljavax/management/AttributeList;->add(Ljavax/management/Attribute;)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    .end local v4    # "value":J
    :cond_0
    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->getValue()J

    move-result-wide v4

    .restart local v4    # "value":J
    goto :goto_1

    .line 119
    .end local v0    # "counter":Lcontribs/mx/LongCounter;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "value":J
    :cond_1
    return-object v2
.end method

.method public getMBeanInfo()Ljavax/management/MBeanInfo;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 123
    iget-object v0, p0, Lcontribs/mx/S3ServiceExceptionMx;->info:Ljavax/management/MBeanInfo;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcontribs/mx/S3ServiceExceptionMx;->info:Ljavax/management/MBeanInfo;

    .line 146
    :goto_0
    return-object v0

    .line 126
    :cond_0
    sget-object v9, Lcontribs/mx/S3ServiceErrorCodeTable;->TABLE:[[Ljava/lang/String;

    .line 127
    .local v9, "errors":[[Ljava/lang/String;
    array-length v0, v9

    new-array v7, v0, [Ljavax/management/MBeanAttributeInfo;

    .line 128
    .local v7, "attrs":[Ljavax/management/MBeanAttributeInfo;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v0, v9

    if-ge v10, v0, :cond_1

    .line 129
    aget-object v8, v9, v10

    .line 130
    .local v8, "error":[Ljava/lang/String;
    new-instance v0, Ljavax/management/MBeanAttributeInfo;

    aget-object v1, v8, v5

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, v8, v4

    move v6, v5

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanAttributeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    aput-object v0, v7, v10

    .line 128
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 138
    .end local v8    # "error":[Ljava/lang/String;
    :cond_1
    new-instance v0, Ljavax/management/MBeanInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "S3ServiceException MBean"

    move-object v3, v7

    move-object v4, v11

    move-object v5, v11

    move-object v6, v11

    invoke-direct/range {v0 .. v6}, Ljavax/management/MBeanInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljavax/management/MBeanAttributeInfo;[Ljavax/management/MBeanConstructorInfo;[Ljavax/management/MBeanOperationInfo;[Ljavax/management/MBeanNotificationInfo;)V

    iput-object v0, p0, Lcontribs/mx/S3ServiceExceptionMx;->info:Ljavax/management/MBeanInfo;

    .line 146
    iget-object v0, p0, Lcontribs/mx/S3ServiceExceptionMx;->info:Ljavax/management/MBeanInfo;

    goto :goto_0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcontribs/mx/S3ServiceExceptionMx;->getCounter(Ljava/lang/String;)Lcontribs/mx/LongCounter;

    move-result-object v0

    .line 84
    .local v0, "counter":Lcontribs/mx/LongCounter;
    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcontribs/mx/LongCounter;

    .end local v0    # "counter":Lcontribs/mx/LongCounter;
    invoke-direct {v0}, Lcontribs/mx/LongCounter;-><init>()V

    .line 86
    .restart local v0    # "counter":Lcontribs/mx/LongCounter;
    iget-object v1, p0, Lcontribs/mx/S3ServiceExceptionMx;->counters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcontribs/mx/LongCounter;->increment()V

    .line 89
    return-void
.end method

.method public invoke(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;
    .param p3, "signature"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setAttribute(Ljavax/management/Attribute;)V
    .locals 1
    .param p1, "attribute"    # Ljavax/management/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/AttributeNotFoundException;,
            Ljavax/management/InvalidAttributeValueException;,
            Ljavax/management/MBeanException;,
            Ljavax/management/ReflectionException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public setAttributes(Ljavax/management/AttributeList;)Ljavax/management/AttributeList;
    .locals 1
    .param p1, "attributes"    # Ljavax/management/AttributeList;

    .prologue
    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
