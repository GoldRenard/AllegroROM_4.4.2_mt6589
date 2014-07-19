.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/APKUtil;
.super Ljava/lang/Object;
.source "APKUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APKUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;
        }
    .end annotation

    .prologue
    .line 24
    const-string v5, "android.content.res.AssetManager"

    .line 27
    .local v5, "pathAssetManager":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 28
    .local v2, "assetMagCls":Ljava/lang/Class;
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 29
    .local v3, "assetMagCt":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    .local v0, "assetMag":Ljava/lang/Object;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/Class;

    .line 31
    .local v8, "typeArgs":[Ljava/lang/Class;
    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v8, v10

    .line 32
    const-string v10, "addAssetPath"

    invoke-virtual {v2, v10, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 33
    .local v1, "assetMagAddAssetPathMtd":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v9, v10, [Ljava/lang/Object;

    .line 34
    .local v9, "valueArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object p1, v9, v10

    .line 35
    invoke-virtual {v1, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 37
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v10, 0x3

    new-array v8, v10, [Ljava/lang/Class;

    .line 38
    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v8, v10

    .line 39
    const/4 v10, 0x1

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v8, v10

    .line 40
    const/4 v10, 0x2

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v8, v10

    .line 41
    const-class v10, Landroid/content/res/Resources;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 42
    .local v7, "resCt":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/Object;

    .line 43
    const/4 v10, 0x0

    aput-object v0, v9, v10

    .line 44
    const/4 v10, 0x1

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    aput-object v11, v9, v10

    .line 45
    const/4 v10, 0x2

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    aput-object v11, v9, v10

    .line 46
    invoke-virtual {v7, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "res":Landroid/content/res/Resources;
    check-cast v6, Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_6

    .line 47
    .restart local v6    # "res":Landroid/content/res/Resources;
    return-object v6

    .line 48
    .end local v0    # "assetMag":Ljava/lang/Object;
    .end local v1    # "assetMagAddAssetPathMtd":Ljava/lang/reflect/Method;
    .end local v2    # "assetMagCls":Ljava/lang/Class;
    .end local v3    # "assetMagCt":Ljava/lang/reflect/Constructor;
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "resCt":Ljava/lang/reflect/Constructor;
    .end local v8    # "typeArgs":[Ljava/lang/Class;
    .end local v9    # "valueArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 49
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    const-string v10, "APKUtil"

    const-string v11, "ClassNotFoundException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;

    invoke-direct {v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 51
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v4

    .line 52
    .local v4, "e":Ljava/lang/SecurityException;
    const-string v10, "APKUtil"

    const-string v11, "SecurityException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;

    invoke-direct {v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 54
    .end local v4    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v4

    .line 55
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const-string v10, "APKUtil"

    const-string v11, "NoSuchMethodException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;

    invoke-direct {v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 57
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v4

    .line 58
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string v10, "APKUtil"

    const-string v11, "IllegalArgumentException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;

    invoke-direct {v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 60
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v4

    .line 61
    .local v4, "e":Ljava/lang/IllegalAccessException;
    const-string v10, "APKUtil"

    const-string v11, "IllegalAccessException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;

    invoke-direct {v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 63
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 64
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v10, "APKUtil"

    const-string v11, "InvocationTargetException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;

    invoke-direct {v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw v10

    .line 66
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v4

    .line 67
    .local v4, "e":Ljava/lang/InstantiationException;
    const-string v10, "APKUtil"

    const-string v11, "InstantiationException"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;

    invoke-direct {v10, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ApkParseException;-><init>(Ljava/lang/Exception;)V

    throw v10
.end method
