.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;
.source "LocalAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;
    }
.end annotation


# static fields
.field public static final PACKAGE_KEY:Ljava/lang/String; = "pk"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "pn"

.field public static final TAG:Ljava/lang/String; = "LocalAppInfo"

.field public static final VERSION_CODE:Ljava/lang/String; = "vc"


# instance fields
.field protected context:Landroid/content/Context;

.field protected mAppInfo:Landroid/content/pm/ApplicationInfo;

.field protected packageInfo:Landroid/content/pm/PackageInfo;

.field protected pm:Landroid/content/pm/PackageManager;

.field protected res:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mApplicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->pm:Landroid/content/pm/PackageManager;

    .line 71
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->context:Landroid/content/Context;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apkFile"    # Ljava/io/File;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 94
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 95
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;

    const/16 v2, 0x194

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "the package could not be successfully parsed."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo$ParsedAppInfoException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 97
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 98
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 99
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 100
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->pm:Landroid/content/pm/PackageManager;

    .line 102
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;-><init>()V

    .line 77
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->pm:Landroid/content/pm/PackageManager;

    .line 79
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->context:Landroid/content/Context;

    .line 80
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;)V

    .line 81
    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->id:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->id:I

    .line 82
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getDataBackupTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->dataBackupTime:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public static doChecksum(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_0
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/zip/Adler32;

    invoke-direct {v4}, Ljava/util/zip/Adler32;-><init>()V

    invoke-direct {v1, v3, v4}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0    # "cis":Ljava/util/zip/CheckedInputStream;
    .local v1, "cis":Ljava/util/zip/CheckedInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ByteArrayUtil;->int2ByteArray(I)[B

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ByteArrayUtil;->base16([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 177
    new-array v4, v6, [Ljava/io/Closeable;

    .line 178
    aput-object v1, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v0, v1

    .line 180
    .end local v1    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v0    # "cis":Ljava/util/zip/CheckedInputStream;
    :goto_0
    return-object v3

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    new-array v3, v6, [Ljava/io/Closeable;

    .line 178
    aput-object v0, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 180
    const-string v3, "ERROR"

    goto :goto_0

    .line 177
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    new-array v4, v6, [Ljava/io/Closeable;

    .line 178
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 179
    throw v3

    .line 177
    .end local v0    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v1    # "cis":Ljava/util/zip/CheckedInputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v0    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_2

    .line 175
    .end local v0    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v1    # "cis":Ljava/util/zip/CheckedInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "cis":Ljava/util/zip/CheckedInputStream;
    .restart local v0    # "cis":Ljava/util/zip/CheckedInputStream;
    goto :goto_1
.end method

.method public static isAvailable(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5
    .param p0, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 45
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "app":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newAppInfo(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mApplicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->isAvailable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 58
    :goto_0
    return-object v1

    .line 54
    :cond_0
    :try_start_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    goto :goto_0
.end method

.method private parseToMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const-string v2, ""

    .line 235
    :goto_0
    return-object v2

    .line 225
    :cond_0
    const/4 v1, 0x0

    .line 227
    .local v1, "md5":Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 233
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 235
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/ByteArrayUtil;->base16([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 230
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public asFile()Ljava/io/File;
    .locals 2

    .prologue
    .line 251
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public asJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    .local v0, "bean":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "pn"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v2, "vc"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    const-string v2, "pk"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPKMD5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-object v0

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->doChecksum(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 189
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->pm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPKMD5()Ljava/lang/String;
    .locals 5

    .prologue
    .line 205
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getSignatures(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v2

    .line 207
    .local v2, "signs":[Landroid/content/pm/Signature;
    const/4 v1, 0x0

    .line 208
    .local v1, "pk":Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 209
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/PublicKeyUtil;->getPublickKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    :goto_0
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->parseToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .end local v1    # "pk":Ljava/lang/String;
    .end local v2    # "signs":[Landroid/content/pm/Signature;
    :goto_1
    return-object v3

    .line 211
    .restart local v1    # "pk":Ljava/lang/String;
    .restart local v2    # "signs":[Landroid/content/pm/Signature;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getAPKPublicKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 214
    .end local v1    # "pk":Ljava/lang/String;
    .end local v2    # "signs":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 217
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 4

    .prologue
    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->pm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSize()J
    .locals 3

    .prologue
    .line 165
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "app":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public loadIcon(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 131
    return-void
.end method

.method public setPackageInfo(Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 146
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->res:Landroid/content/res/Resources;

    .line 154
    return-void
.end method
