.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/BackupLocationHelper;
.super Ljava/lang/Object;
.source "BackupLocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/BackupLocationHelper$BackupLocationChangeListener;
    }
.end annotation


# static fields
.field public static final IS_LOCATION_EXTERNAL:Ljava/lang/String; = "is_location_external"

.field public static final IS_RESTORE_FIRST:Ljava/lang/String; = "is_restore_first"

.field private static final SDK_9_VERSION_2_3:I = 0x9

.field public static final SD_BACKUP_LOCATION:Ljava/lang/String; = "sdcard_backup_location"

.field private static final TAG:Ljava/lang/String; = "BackupLocationHelper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSdcardExternal(Ljava/lang/String;)Z
    .locals 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 27
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 28
    .local v3, "systemPath":Ljava/lang/String;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x9

    if-lt v4, v7, :cond_2

    .line 30
    :try_start_0
    const-class v4, Landroid/os/Environment;

    const-string v7, "isExternalStorageRemovable"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    .local v1, "enMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 32
    const/4 v4, 0x0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 34
    .local v2, "isExternal":Z
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    .end local v1    # "enMethod":Ljava/lang/reflect/Method;
    .end local v2    # "isExternal":Z
    :goto_0
    return v2

    .line 34
    .restart local v1    # "enMethod":Ljava/lang/reflect/Method;
    .restart local v2    # "isExternal":Z
    :cond_0
    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    goto :goto_0

    .line 36
    .end local v1    # "enMethod":Ljava/lang/reflect/Method;
    .end local v2    # "isExternal":Z
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BackupLocationHelper"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v2, v6

    .line 40
    goto :goto_0
.end method
