.class public final Lcom/mediatek/hotknot/HotKnotActivityManager;
.super Lcom/mediatek/hotknot/IHotKnotCallback$Stub;
.source "HotKnotActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;,
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field static final TAG:Ljava/lang/String; = "HotKnot"

.field private static mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/mediatek/hotknot/HotKnotAdapter;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    .line 201
    return-void
.end method


# virtual methods
.method checkMomPermission()Z
    .locals 5

    .prologue
    .line 334
    sget-object v2, Lcom/mediatek/hotknot/HotKnotActivityManager;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    if-nez v2, :cond_0

    .line 335
    const-string v2, "mobile"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/hotknot/HotKnotActivityManager;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    .line 340
    :cond_0
    :try_start_0
    sget-object v2, Lcom/mediatek/hotknot/HotKnotActivityManager;->mMobileManagerService:Lcom/mediatek/common/mom/IMobileManagerService;

    const-string v3, "sub-permission.HOTKNOT_BIND"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 341
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 342
    const/4 v2, 0x0

    .line 349
    .end local v1    # "result":I
    :goto_0
    return v2

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "HotKnot"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public createMessage()Lcom/mediatek/hotknot/HotKnotMessage;
    .locals 4

    .prologue
    .line 358
    monitor-enter p0

    .line 359
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 360
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    monitor-exit p0

    .line 370
    :cond_0
    :goto_0
    return-object v1

    .line 362
    :cond_1
    iget-object v0, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 363
    .local v0, "hotKnotCallback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    iget-object v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 364
    .local v1, "message":Lcom/mediatek/hotknot/HotKnotMessage;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;->createHotKnotMessage()Lcom/mediatek/hotknot/HotKnotMessage;

    move-result-object v1

    goto :goto_0

    .line 364
    .end local v0    # "hotKnotCallback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .end local v1    # "message":Lcom/mediatek/hotknot/HotKnotMessage;
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 191
    .local v0, "activityState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->destroy()V

    .line 193
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    .end local v0    # "activityState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 154
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 158
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .param p1, "clientId"    # I

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 182
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 186
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    .locals 3
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 70
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .line 71
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .line 75
    .end local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 173
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-boolean v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 177
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 172
    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 164
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Activity;)V

    .line 166
    .restart local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_0
    monitor-exit p0

    return-object v0

    .line 163
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getClientId()I
    .locals 3

    .prologue
    .line 439
    const/4 v0, -0x1

    .line 440
    .local v0, "clientId":I
    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 442
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v1, :cond_0

    .line 443
    iget v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I

    .line 445
    :cond_0
    monitor-exit p0

    .line 446
    return v0

    .line 445
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUris()[Landroid/net/Uri;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 397
    monitor-enter p0

    .line 398
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v5

    .line 399
    .local v5, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v5, :cond_1

    monitor-exit p0

    move-object v7, v8

    .line 432
    :cond_0
    :goto_0
    return-object v7

    .line 400
    :cond_1
    iget-object v7, v5, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 401
    .local v7, "uris":[Landroid/net/Uri;
    iget-object v1, v5, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 402
    .local v1, "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    if-eqz v7, :cond_2

    .line 406
    move-object v0, v7

    .local v0, "arr$":[Landroid/net/Uri;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 407
    .local v6, "uri":Landroid/net/Uri;
    const-string v9, "HotKnot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  uri.toString: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "arr$":[Landroid/net/Uri;
    .end local v1    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "uris":[Landroid/net/Uri;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 410
    .restart local v1    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .restart local v5    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .restart local v7    # "uris":[Landroid/net/Uri;
    :cond_2
    const-string v9, "HotKnot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state.uriCallback:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-eqz v1, :cond_0

    .line 413
    invoke-interface {v1}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;->createHotKnotBeamUris()[Landroid/net/Uri;

    move-result-object v7

    .line 414
    if-eqz v7, :cond_0

    .line 415
    move-object v0, v7

    .restart local v0    # "arr$":[Landroid/net/Uri;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 416
    .restart local v6    # "uri":Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 417
    const-string v9, "HotKnot"

    const-string v10, "Uri not allowed to be null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 418
    goto :goto_0

    .line 420
    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 421
    .local v4, "scheme":Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v9, "file"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "content"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 423
    :cond_4
    const-string v9, "HotKnot"

    const-string v10, "Uri needs to have either scheme file or scheme content"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 425
    goto/16 :goto_0

    .line 415
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    .locals 1
    .param p1, "state"    # Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .prologue
    .line 328
    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 454
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 507
    monitor-enter p0

    .line 508
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 509
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v1, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotKnot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_0
    if-eqz v0, :cond_1

    .line 512
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    .line 514
    :cond_1
    monitor-exit p0

    .line 515
    return-void

    .line 514
    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 482
    monitor-enter p0

    .line 483
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 484
    .local v0, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v2, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPause() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    .line 490
    :goto_0
    return-void

    .line 486
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 487
    iget-object v1, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 488
    .local v1, "token":Landroid/os/Binder;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 489
    monitor-exit p0

    goto :goto_0

    .end local v0    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v1    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 467
    monitor-enter p0

    .line 468
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 469
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v3, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HotKnot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    if-nez v1, :cond_1

    monitor-exit p0

    .line 476
    :goto_0
    return-void

    .line 471
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 472
    iget-object v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 473
    .local v2, "token":Landroid/os/Binder;
    invoke-virtual {p0, v1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 474
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 474
    .end local v0    # "isRequest":Z
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v2    # "token":Landroid/os/Binder;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 502
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 460
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 496
    return-void
.end method

.method public onHotKnotComplete(II)V
    .locals 5
    .param p1, "clientId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 380
    .local v1, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v1, :cond_1

    monitor-exit p0

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    iget-object v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 383
    .local v0, "callback":Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    const-string v2, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onHotKnotComplete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz v0, :cond_0

    .line 388
    invoke-interface {v0, p2}, Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;->onHotKnotComplete(I)V

    goto :goto_0

    .line 383
    .end local v0    # "callback":Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    .end local v1    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 80
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .end local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Application;)V

    .line 82
    .restart local v0    # "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->register()V

    .line 85
    return-void
.end method

.method requestHotKnotServiceCallback(Z)V
    .locals 1
    .param p1, "request"    # Z

    .prologue
    .line 321
    :try_start_0
    sget-object v0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    if-eqz p1, :cond_0

    .end local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :goto_0
    invoke-interface {v0, p0}, Lcom/mediatek/hotknot/IHotKnotAdapter;->setHotKnotCallback(Lcom/mediatek/hotknot/IHotKnotCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_1
    return-void

    .line 321
    .restart local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 322
    .end local p0    # "this":Lcom/mediatek/hotknot/HotKnotActivityManager;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 273
    if-eqz p2, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 275
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    monitor-enter p0

    .line 281
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 282
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 283
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 284
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 285
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHotKnotContent:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 285
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 286
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .prologue
    .line 296
    if-eqz p2, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    monitor-enter p0

    .line 304
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 305
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 306
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 307
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 308
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHotKnotContentCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 308
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 309
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "message"    # Lcom/mediatek/hotknot/HotKnotMessage;
    .param p3, "flags"    # I

    .prologue
    .line 206
    if-eqz p2, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 215
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 216
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 217
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 218
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 219
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHotKnotMessage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 219
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 221
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .param p3, "flags"    # I

    .prologue
    .line 232
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->checkMomPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 234
    const-string v3, "HotKnot"

    const-string v4, "MOM permission is denied"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    monitor-enter p0

    .line 240
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 241
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 242
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 243
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 244
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 245
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setHotKnotMessageCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 245
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 246
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .prologue
    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 258
    .local v2, "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 259
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 260
    .local v1, "isResumed":Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 261
    .local v0, "isRequest":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOnHotKnotCompleteCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 268
    :cond_0
    return-void

    .line 261
    .end local v0    # "isRequest":Z
    .end local v1    # "isResumed":Z
    .end local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 262
    .restart local v0    # "isRequest":Z
    .restart local v1    # "isResumed":Z
    .restart local v2    # "state":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .param p1, "app"    # Landroid/app/Application;

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 89
    .local v0, "appState":Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 90
    const-string v1, "HotKnot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->unregister()V

    goto :goto_0
.end method
