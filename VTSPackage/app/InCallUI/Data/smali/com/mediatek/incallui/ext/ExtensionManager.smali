.class public final Lcom/mediatek/incallui/ext/ExtensionManager;
.super Ljava/lang/Object;
.source "ExtensionManager.java"

# interfaces
.implements Lcom/mediatek/incallui/ext/IInCallUIPlugin;


# static fields
.field private static sInstance:Lcom/mediatek/incallui/ext/ExtensionManager;


# instance fields
.field private mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/incallui/ext/ExtensionManager;->sInstance:Lcom/mediatek/incallui/ext/ExtensionManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/incallui/ext/ExtensionManager;->sInstance:Lcom/mediatek/incallui/ext/ExtensionManager;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mediatek/incallui/ext/ExtensionManager;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;-><init>()V

    sput-object v0, Lcom/mediatek/incallui/ext/ExtensionManager;->sInstance:Lcom/mediatek/incallui/ext/ExtensionManager;

    .line 64
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/ext/ExtensionManager;->sInstance:Lcom/mediatek/incallui/ext/ExtensionManager;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    return-void
.end method


# virtual methods
.method public getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    if-nez v0, :cond_0

    .line 131
    const-string v0, "getCallButtonExtension failed, mPluginWrapper is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/PluginWrapper;->getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    if-nez v0, :cond_0

    .line 110
    const-string v0, "getCallCardExtension failed, mPluginWrapper is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/PluginWrapper;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v0

    goto :goto_0
.end method

.method public getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    if-nez v0, :cond_0

    .line 140
    const-string v0, "getInCallUIExtension failed, mPluginWrapper is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/PluginWrapper;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "getNotificationExtension failed, mPluginWrapper is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/PluginWrapper;->getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;

    move-result-object v0

    goto :goto_0
.end method

.method public getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    if-nez v0, :cond_0

    .line 122
    const-string v0, "getCallCardExtension failed, mPluginWrapper is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/PluginWrapper;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v0

    goto :goto_0
.end method

.method public initPlugin(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iget-object v6, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    if-nez v6, :cond_2

    .line 69
    new-instance v6, Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-direct {v6}, Lcom/mediatek/incallui/ext/PluginWrapper;-><init>()V

    iput-object v6, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    .line 71
    const-class v6, Lcom/mediatek/incallui/ext/IInCallUIPlugin;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/content/pm/Signature;

    invoke-static {p1, v6, v7}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v5

    .line 74
    .local v5, "pm":Lcom/mediatek/pluginmanager/PluginManager;, "Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/incallui/ext/IInCallUIPlugin;>;"
    invoke-virtual {v5}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v4

    .line 75
    .local v4, "pluginCount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InCallUI Plug-in, count="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/incallui/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 76
    if-nez v4, :cond_0

    .line 77
    const-string v6, "initPlugin, no installed Plug-ins, use DEFAULT plugin."

    invoke-direct {p0, v6}, Lcom/mediatek/incallui/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 78
    iget-object v6, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    new-instance v7, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;

    invoke-direct {v7}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;-><init>()V

    invoke-virtual {v6, v7}, Lcom/mediatek/incallui/ext/PluginWrapper;->addExtensions(Lcom/mediatek/incallui/ext/IInCallUIPlugin;)V

    .line 98
    .end local v4    # "pluginCount":I
    .end local v5    # "pm":Lcom/mediatek/pluginmanager/PluginManager;, "Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/incallui/ext/IInCallUIPlugin;>;"
    :goto_0
    return-void

    .line 83
    .restart local v4    # "pluginCount":I
    .restart local v5    # "pm":Lcom/mediatek/pluginmanager/PluginManager;, "Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/incallui/ext/IInCallUIPlugin;>;"
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 84
    :try_start_0
    invoke-virtual {v5, v1}, Lcom/mediatek/pluginmanager/PluginManager;->getPlugin(I)Lcom/mediatek/pluginmanager/Plugin;

    move-result-object v3

    .line 85
    .local v3, "plugIn":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/incallui/ext/IInCallUIPlugin;>;"
    if-eqz v3, :cond_1

    .line 86
    invoke-virtual {v3}, Lcom/mediatek/pluginmanager/Plugin;->createObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/incallui/ext/IInCallUIPlugin;

    .line 87
    .local v2, "phonePluginObject":Lcom/mediatek/incallui/ext/IInCallUIPlugin;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create Plugin Object: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/incallui/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 88
    iget-object v6, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-virtual {v6, v2}, Lcom/mediatek/incallui/ext/PluginWrapper;->addExtensions(Lcom/mediatek/incallui/ext/IInCallUIPlugin;)V
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v2    # "phonePluginObject":Lcom/mediatek/incallui/ext/IInCallUIPlugin;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v3    # "plugIn":Lcom/mediatek/pluginmanager/Plugin;, "Lcom/mediatek/pluginmanager/Plugin<Lcom/mediatek/incallui/ext/IInCallUIPlugin;>;"
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    const-string v6, "create plugin object failed"

    invoke-direct {p0, v6}, Lcom/mediatek/incallui/ext/ExtensionManager;->log(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .end local v0    # "e":Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .end local v1    # "i":I
    .end local v4    # "pluginCount":I
    .end local v5    # "pm":Lcom/mediatek/pluginmanager/PluginManager;, "Lcom/mediatek/pluginmanager/PluginManager<Lcom/mediatek/incallui/ext/IInCallUIPlugin;>;"
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initPlugin InCallUI Plug-in, size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/incallui/ext/ExtensionManager;->mPluginWrapper:Lcom/mediatek/incallui/ext/PluginWrapper;

    invoke-virtual {v7}, Lcom/mediatek/incallui/ext/PluginWrapper;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/incallui/ext/ExtensionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
