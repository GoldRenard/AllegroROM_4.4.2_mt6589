.class public Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;
.super Ljava/lang/Object;
.source "KeyguardPluginFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardPluginFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCardInfoExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICardInfoExt;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    const-class v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/mediatek/keyguard/ext/ICardInfoExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1.0.0"

    const-string v5, "class"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v4, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICardInfoExt;

    .line 21
    .local v0, "cardInfoExt":Lcom/mediatek/keyguard/ext/ICardInfoExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardInfoExt cardInfoExt= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    monitor-exit v3

    return-object v0

    .line 22
    .end local v0    # "cardInfoExt":Lcom/mediatek/keyguard/ext/ICardInfoExt;
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCardInfoExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultCardInfoExt;-><init>()V

    .line 24
    .restart local v0    # "cardInfoExt":Lcom/mediatek/keyguard/ext/ICardInfoExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardInfoExt get DefaultCardInfoExt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    .end local v0    # "cardInfoExt":Lcom/mediatek/keyguard/ext/ICardInfoExt;
    .end local v1    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getCarrierTextExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const-class v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1.0.0"

    const-string v5, "class"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v4, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/ICarrierTextExt;

    .line 63
    .local v0, "carrierTextExt":Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarrierTextExt carrierTextExt= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit v3

    return-object v0

    .line 64
    .end local v0    # "carrierTextExt":Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultCarrierTextExt;-><init>()V

    .line 66
    .restart local v0    # "carrierTextExt":Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarrierTextExt get DefaultCarrierTextExt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "carrierTextExt":Lcom/mediatek/keyguard/ext/ICarrierTextExt;
    .end local v1    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getDualClock(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IDualClock;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const-class v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/mediatek/keyguard/ext/IDualClock;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1.0.0"

    const-string v5, "class"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v4, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/keyguard/ext/IDualClock;

    .line 35
    .local v0, "dualClock":Lcom/mediatek/keyguard/ext/IDualClock;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDualClock dualClock= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :goto_0
    monitor-exit v3

    return-object v0

    .line 36
    .end local v0    # "dualClock":Lcom/mediatek/keyguard/ext/IDualClock;
    :catch_0
    move-exception v1

    .line 37
    .local v1, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    new-instance v0, Lcom/mediatek/keyguard/ext/DefaultDualClock;

    invoke-direct {v0}, Lcom/mediatek/keyguard/ext/DefaultDualClock;-><init>()V

    .line 38
    .restart local v0    # "dualClock":Lcom/mediatek/keyguard/ext/IDualClock;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDualClock get DefaultDualClock = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 33
    .end local v0    # "dualClock":Lcom/mediatek/keyguard/ext/IDualClock;
    .end local v1    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getEmergencyButtonExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const-class v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1.0.0"

    const-string v5, "class"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v4, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;

    .line 49
    .local v1, "emergencyButtonExt":Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyButtonExt emergencyButtonExt= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    monitor-exit v3

    return-object v1

    .line 50
    .end local v1    # "emergencyButtonExt":Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    new-instance v1, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;

    invoke-direct {v1}, Lcom/mediatek/keyguard/ext/DefaultEmergencyButtonExt;-><init>()V

    .line 52
    .restart local v1    # "emergencyButtonExt":Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyButtonExt get DefaultEmergencyButtonExt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v1    # "emergencyButtonExt":Lcom/mediatek/keyguard/ext/IEmergencyButtonExt;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getKeyguardUtilExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1.0.0"

    const-string v5, "class"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v4, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;

    .line 77
    .local v1, "keyguardUtilExt":Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyguardUtilExt keyguardUtilExt= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_0
    monitor-exit v3

    return-object v1

    .line 78
    .end local v1    # "keyguardUtilExt":Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    new-instance v1, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;

    invoke-direct {v1}, Lcom/mediatek/keyguard/ext/DefaultKeyguardUtilExt;-><init>()V

    .line 80
    .restart local v1    # "keyguardUtilExt":Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKeyguardUtilExt get DefaultKeyguardUtilExt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 75
    .end local v0    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v1    # "keyguardUtilExt":Lcom/mediatek/keyguard/ext/IKeyguardUtilExt;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getLockScreenExt(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/ILockScreenExt;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-class v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/mediatek/keyguard/ext/ILockScreenExt;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1.0.0"

    const-string v5, "class"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v4, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/keyguard/ext/ILockScreenExt;

    .line 105
    .local v1, "lockScreenExt":Lcom/mediatek/keyguard/ext/ILockScreenExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLockScreenExt lockScreenExt= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :goto_0
    monitor-exit v3

    return-object v1

    .line 106
    .end local v1    # "lockScreenExt":Lcom/mediatek/keyguard/ext/ILockScreenExt;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    new-instance v1, Lcom/mediatek/keyguard/ext/DefaultLockScreenExt;

    invoke-direct {v1}, Lcom/mediatek/keyguard/ext/DefaultLockScreenExt;-><init>()V

    .line 108
    .restart local v1    # "lockScreenExt":Lcom/mediatek/keyguard/ext/ILockScreenExt;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLockScreenExt get DefaultLockScreenExt = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v1    # "lockScreenExt":Lcom/mediatek/keyguard/ext/ILockScreenExt;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized getOperatorSIMString(Landroid/content/Context;)Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-class v3, Lcom/mediatek/keyguard/ext/KeyguardPluginFactory;

    monitor-enter v3

    :try_start_0
    const-class v2, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "1.0.0"

    const-string v5, "class"

    const/4 v6, 0x0

    new-array v6, v6, [Landroid/content/pm/Signature;

    invoke-static {p0, v2, v4, v5, v6}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/keyguard/ext/IOperatorSIMString;

    .line 91
    .local v1, "operatorSIMString":Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorSIMString operatorSIMString= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_0
    monitor-exit v3

    return-object v1

    .line 92
    .end local v1    # "operatorSIMString":Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_1
    new-instance v1, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;

    invoke-direct {v1}, Lcom/mediatek/keyguard/ext/DefaultOperatorSIMString;-><init>()V

    .line 94
    .restart local v1    # "operatorSIMString":Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    const-string v2, "KeyguardPluginFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOperatorSIMString get DefaultOperatorSIMString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    .end local v0    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v1    # "operatorSIMString":Lcom/mediatek/keyguard/ext/IOperatorSIMString;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
