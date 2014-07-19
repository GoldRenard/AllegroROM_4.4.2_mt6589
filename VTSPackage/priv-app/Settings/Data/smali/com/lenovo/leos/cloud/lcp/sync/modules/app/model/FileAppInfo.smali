.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
.source "FileAppInfo.java"

# interfaces
.implements Ljava/io/FileFilter;


# static fields
.field private static final APK_NAME_REG:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "FileAppInfo"

.field private static final serialVersionUID:J = -0x1cd331eed3e13ca9L


# instance fields
.field private base:Ljava/lang/String;

.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "([a-zA-Z0-9_\\.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->APK_NAME_REG:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mApplicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    .line 32
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 36
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v0, "app":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 38
    .local v3, "parent":Ljava/io/File;
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->APK_NAME_REG:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 39
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 40
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->base:Ljava/lang/String;

    .line 42
    :cond_0
    const-string v4, "FileAppInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Found file name = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->base:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-virtual {v3, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 45
    .local v1, "list":[Ljava/io/File;
    if-eqz v1, :cond_2

    array-length v4, v1

    if-lez v4, :cond_2

    .line 46
    const/4 v4, 0x0

    aget-object v4, v1, v4

    iput-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->file:Ljava/io/File;

    .line 51
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->pm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 52
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 55
    :cond_1
    return-void

    .line 48
    :cond_2
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Not found "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->base:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apk file!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "pathname"    # Ljava/io/File;

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->base:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public asFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->file:Ljava/io/File;

    return-object v0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->doChecksum(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 75
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    const-string v1, "ERROR"

    goto :goto_0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/FileAppInfo;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
