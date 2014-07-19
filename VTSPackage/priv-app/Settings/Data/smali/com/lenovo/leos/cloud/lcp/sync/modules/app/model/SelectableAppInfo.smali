.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;
.super Ljava/lang/Object;
.source "SelectableAppInfo.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;


# static fields
.field public static final TAG:Ljava/lang/String; = "SelectableAppInfo"


# instance fields
.field protected appDataSize:Ljava/lang/Long;

.field private appInfo:Landroid/content/pm/ApplicationInfo;

.field private appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

.field protected currentProgress:I

.field protected dataBackupTime:Ljava/lang/String;

.field private formatVersionName:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconUrl:Ljava/lang/String;

.field protected id:I

.field private index:I

.field protected isProgressing:Z

.field protected isSelectable:Z

.field private selected:Z

.field public versionAndSize:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppDataSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appDataSize:Ljava/lang/Long;

    return-object v0
.end method

.method public getAppInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getAppStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    return-object v0
.end method

.method public declared-synchronized getAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "ver":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->formatVersionName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 110
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "itms":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .end local v1    # "ver":Ljava/lang/String;
    :goto_0
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->formatVersionName:Ljava/lang/String;

    .line 113
    .end local v0    # "itms":[Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->formatVersionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_1
    monitor-exit p0

    return-object v2

    .line 111
    .restart local v0    # "itms":[Ljava/lang/String;
    .restart local v1    # "ver":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 115
    .end local v0    # "itms":[Ljava/lang/String;
    :cond_2
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 107
    .end local v1    # "ver":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCurrentProgress()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->currentProgress:I

    return v0
.end method

.method public getDataBackupTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->dataBackupTime:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->index:I

    return v0
.end method

.method public getMBSize()D
    .locals 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getMBSize(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->selected:Z

    return v0
.end method

.method public isProgressing()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isProgressing:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isSelectable:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->selected:Z

    return v0
.end method

.method public setAppDataSize(Ljava/lang/Long;)V
    .locals 0
    .param p1, "appDataSize"    # Ljava/lang/Long;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appDataSize:Ljava/lang/Long;

    .line 66
    return-void
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 146
    return-void
.end method

.method public setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;)V
    .locals 0
    .param p1, "appStatus"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appStatus:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    .line 72
    return-void
.end method

.method public setCurrentProgress(I)V
    .locals 0
    .param p1, "currentProgress"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->currentProgress:I

    .line 46
    return-void
.end method

.method public setDataBackupTime(Ljava/lang/String;)V
    .locals 5
    .param p1, "dataBackupTime"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "dateFromString":Ljava/text/DateFormat;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "dateToString":Ljava/text/DateFormat;
    if-eqz p1, :cond_0

    .line 99
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->dataBackupTime:Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Ljava/text/ParseException;
    const-string v3, "SelectableAppInfo"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 138
    return-void
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->index:I

    .line 82
    return-void
.end method

.method public setProgressing(Z)V
    .locals 0
    .param p1, "progressing"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isProgressing:Z

    .line 54
    return-void
.end method

.method public setSelectable(Z)V
    .locals 0
    .param p1, "selectable"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isSelectable:Z

    .line 38
    return-void
.end method

.method public setSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->isSelectable:Z

    if-eqz v0, :cond_0

    .line 120
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->selected:Z

    .line 122
    :cond_0
    return-void
.end method
