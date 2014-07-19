.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;
.super Ljava/lang/Object;
.source "SettingDaoImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/SettingDao;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dftValue"    # F

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 38
    :goto_0
    return v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dftValue"    # I

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dftValue"    # J

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dftValue"    # Ljava/lang/String;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriFor(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "dftValue"    # Landroid/net/Uri;

    .prologue
    .line 48
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/dao/impl/SettingDaoImpl;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
