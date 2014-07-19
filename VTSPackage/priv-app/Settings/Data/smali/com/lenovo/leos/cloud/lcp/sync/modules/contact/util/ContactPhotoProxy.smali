.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;
.super Ljava/lang/Object;
.source "ContactPhotoProxy.java"


# static fields
.field private static hdPhotoMethod:Ljava/lang/reflect/Method;

.field private static onlySD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->hdPhotoMethod:Ljava/lang/reflect/Method;

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->onlySD:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactPhotoLength(Landroid/content/Context;J)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    .line 70
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->initPhotoMethod()V

    .line 72
    const/4 v4, 0x0

    .line 73
    .local v4, "photoSize":I
    invoke-static {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->openContactPhotoInputStream(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v2

    .line 74
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 76
    const/16 v5, 0x1000

    :try_start_0
    new-array v0, v5, [B

    .line 77
    .local v0, "bf":[B
    const/4 v3, -0x1

    .line 78
    .local v3, "l":I
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-gtz v3, :cond_1

    .line 85
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 91
    .end local v0    # "bf":[B
    .end local v3    # "l":I
    :cond_0
    :goto_1
    return v4

    .line 79
    .restart local v0    # "bf":[B
    .restart local v3    # "l":I
    :cond_1
    add-int/2addr v4, v3

    goto :goto_0

    .line 81
    .end local v0    # "bf":[B
    .end local v3    # "l":I
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 85
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 89
    :goto_2
    throw v5

    .line 86
    :catch_2
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bf":[B
    .restart local v3    # "l":I
    :catch_3
    move-exception v1

    .line 87
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static initPhotoMethod()V
    .locals 2

    .prologue
    .line 28
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->hdPhotoMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->onlySD:Z

    if-eqz v1, :cond_1

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 33
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->trySetHDMethod()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->onlySD:Z

    goto :goto_0
.end method

.method public static openContactPhotoInputStream(Landroid/content/Context;J)Ljava/io/InputStream;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "contactId"    # J

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->initPhotoMethod()V

    .line 56
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, "contactUri":Landroid/net/Uri;
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->hdPhotoMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 59
    :try_start_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->hdPhotoMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 62
    goto :goto_0

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0
.end method

.method private static trySetHDMethod()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 40
    const-class v1, Landroid/provider/ContactsContract$Contacts;

    const-string v2, "openContactPhotoInputStream"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/net/Uri;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, "hdMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->hdPhotoMethod:Ljava/lang/reflect/Method;

    .line 44
    :cond_0
    return-void
.end method
