.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;
.super Ljava/lang/Object;
.source "SettingDao.java"


# static fields
.field public static final GLOBAL_URI:Landroid/net/Uri;

.field public static final SECURE_URI:Landroid/net/Uri;

.field public static final SYSTEM_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->SYSTEM_URI:Landroid/net/Uri;

    .line 8
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->GLOBAL_URI:Landroid/net/Uri;

    .line 9
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;->SECURE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public abstract getFloat(Ljava/lang/String;F)F
.end method

.method public abstract getInt(Ljava/lang/String;)I
.end method

.method public abstract getInt(Ljava/lang/String;I)I
.end method

.method public abstract getLong(Ljava/lang/String;J)J
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUriFor(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract putFloat(Ljava/lang/String;F)Z
.end method

.method public abstract putInt(Ljava/lang/String;I)Z
.end method

.method public abstract putLong(Ljava/lang/String;J)Z
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Z
.end method
