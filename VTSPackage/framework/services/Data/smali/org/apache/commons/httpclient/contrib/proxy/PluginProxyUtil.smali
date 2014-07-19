.class public Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;
.super Ljava/lang/Object;
.source "PluginProxyUtil.java"


# static fields
.field private static final LOG:Lorg/apache/commons/logging/Log;

.field private static final NO_PROXY_HOST:Lorg/apache/http/HttpHost;

.field private static final PLUGIN_PROXY_CONFIG_PROP:Ljava/lang/String; = "javaplugin.proxy.config.list"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const-class v0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    .line 74
    new-instance v0, Lorg/apache/http/HttpHost;

    const-string v1, ""

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->NO_PROXY_HOST:Lorg/apache/http/HttpHost;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static detectProxy(Ljava/net/URL;)Lorg/apache/http/HttpHost;
    .locals 6
    .param p0, "sampleURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;
        }
    .end annotation

    .prologue
    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "result":Lorg/apache/http/HttpHost;
    const-string v3, "java.runtime.version"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "javaVers":Ljava/lang/String;
    sget-object v3, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    sget-object v3, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "About to attempt auto proxy detection under Java version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "invokeFailover":Z
    const-string v3, "1.3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    invoke-static {p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->detectProxySettingsJDK13(Ljava/net/URL;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 109
    if-nez v2, :cond_1

    .line 110
    const/4 v0, 0x1

    .line 124
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 125
    sget-object v3, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    sget-object v3, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Using failover proxy detection..."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 128
    :cond_2
    invoke-static {}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->getPluginProxyConfigSettings()Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 130
    :cond_3
    sget-object v3, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->NO_PROXY_HOST:Lorg/apache/http/HttpHost;

    invoke-virtual {v3, v2}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 131
    const/4 v2, 0x0

    .line 133
    :cond_4
    return-object v2

    .line 112
    :cond_5
    const-string v3, "1.4"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "1.5"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "1.6"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 113
    :cond_6
    invoke-static {p0}, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->detectProxySettingsJDK14_JDK15_JDK16(Ljava/net/URL;)Lorg/apache/http/HttpHost;

    move-result-object v2

    .line 114
    if-nez v2, :cond_1

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 118
    :cond_7
    sget-object v3, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 119
    sget-object v3, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v4, "Sun Plugin reported java version not 1.3.X, 1.4.X, 1.5.X or 1.6.X - trying failover detection..."

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 122
    :cond_8
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static detectProxySettingsJDK13(Ljava/net/URL;)Lorg/apache/http/HttpHost;
    .locals 22
    .param p0, "sampleURL"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v15, 0x0

    .line 152
    .local v15, "result":Lorg/apache/http/HttpHost;
    :try_start_0
    const-string v18, "sun.plugin.protocol.PluginProxyHandler"

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 154
    .local v7, "pluginProxyHandler":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v19, "getDefaultProxyHandler"

    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 157
    .local v3, "getDefaultProxyHandlerMethod":Ljava/lang/reflect/Method;
    const/16 v19, 0x0

    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 159
    .local v10, "proxyHandlerObj":Ljava/lang/Object;
    if-eqz v10, :cond_6

    .line 160
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 161
    .local v9, "proxyHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v18, "getProxyInfo"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/net/URL;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 164
    .local v4, "getProxyInfoMethod":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v4, v10, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 167
    .local v13, "proxyInfoObject":Ljava/lang/Object;
    if-eqz v13, :cond_4

    .line 168
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 169
    .local v12, "proxyInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v19, "getProxy"

    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 171
    .local v5, "getProxyMethod":Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v5, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_1

    const/16 v17, 0x1

    .line 173
    .local v17, "useProxy":Z
    :goto_0
    if-eqz v17, :cond_2

    .line 174
    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v5, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 176
    .local v11, "proxyIP":Ljava/lang/String;
    const-string v19, "getPort"

    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Class;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 178
    .local v6, "getProxyPortMethod":Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    check-cast v18, [Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v6, v13, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 180
    .local v8, "portInteger":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 181
    .local v14, "proxyPort":I
    sget-object v18, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 182
    sget-object v18, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1.3.X: proxy="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " port="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 185
    :cond_0
    new-instance v16, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v16

    invoke-direct {v0, v11, v14}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .end local v15    # "result":Lorg/apache/http/HttpHost;
    .local v16, "result":Lorg/apache/http/HttpHost;
    move-object/from16 v15, v16

    .line 210
    .end local v3    # "getDefaultProxyHandlerMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getProxyInfoMethod":Ljava/lang/reflect/Method;
    .end local v5    # "getProxyMethod":Ljava/lang/reflect/Method;
    .end local v6    # "getProxyPortMethod":Ljava/lang/reflect/Method;
    .end local v7    # "pluginProxyHandler":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "portInteger":Ljava/lang/Integer;
    .end local v9    # "proxyHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "proxyHandlerObj":Ljava/lang/Object;
    .end local v11    # "proxyIP":Ljava/lang/String;
    .end local v12    # "proxyInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "proxyInfoObject":Ljava/lang/Object;
    .end local v14    # "proxyPort":I
    .end local v16    # "result":Lorg/apache/http/HttpHost;
    .end local v17    # "useProxy":Z
    .restart local v15    # "result":Lorg/apache/http/HttpHost;
    :goto_1
    return-object v15

    .line 171
    .restart local v3    # "getDefaultProxyHandlerMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "getProxyInfoMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "getProxyMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "pluginProxyHandler":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v9    # "proxyHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "proxyHandlerObj":Ljava/lang/Object;
    .restart local v12    # "proxyInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "proxyInfoObject":Ljava/lang/Object;
    :cond_1
    const/16 v17, 0x0

    goto :goto_0

    .line 187
    .restart local v17    # "useProxy":Z
    :cond_2
    sget-object v18, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 188
    sget-object v18, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v19, "1.3.X reported NULL for proxyInfo.getProxy (no proxy assumed)"

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 191
    :cond_3
    sget-object v15, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->NO_PROXY_HOST:Lorg/apache/http/HttpHost;

    goto :goto_1

    .line 194
    .end local v5    # "getProxyMethod":Ljava/lang/reflect/Method;
    .end local v12    # "proxyInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v17    # "useProxy":Z
    :cond_4
    sget-object v18, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 195
    sget-object v18, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v19, "NULL proxyInfo in 1.3.X auto proxy detection, (no proxy assumed)"

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 198
    :cond_5
    sget-object v15, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->NO_PROXY_HOST:Lorg/apache/http/HttpHost;

    goto :goto_1

    .line 201
    .end local v4    # "getProxyInfoMethod":Ljava/lang/reflect/Method;
    .end local v9    # "proxyHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "proxyInfoObject":Ljava/lang/Object;
    :cond_6
    new-instance v18, Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;

    const-string v19, "Sun Plugin 1.3.X failed to provide a default proxy handler"

    invoke-direct/range {v18 .. v19}, Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 204
    .end local v3    # "getDefaultProxyHandlerMethod":Ljava/lang/reflect/Method;
    .end local v7    # "pluginProxyHandler":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "proxyHandlerObj":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/RuntimeException;
    throw v2

    .line 206
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 207
    .local v2, "e":Ljava/lang/Exception;
    sget-object v18, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v19, "Sun Plugin 1.3.X proxy detection class not found, will try failover detection"

    invoke-interface/range {v18 .. v19}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static detectProxySettingsJDK14_JDK15_JDK16(Ljava/net/URL;)Lorg/apache/http/HttpHost;
    .locals 17
    .param p0, "sampleURL"    # Ljava/net/URL;

    .prologue
    .line 226
    const/4 v11, 0x0

    .line 230
    .local v11, "result":Lorg/apache/http/HttpHost;
    :try_start_0
    const-string v13, "com.sun.java.browser.net.ProxyService"

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 232
    .local v0, "ProxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "getProxyInfo"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/net/URL;

    aput-object v16, v14, v15

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 235
    .local v4, "getProxyInfoMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-virtual {v4, v13, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 238
    .local v7, "proxyInfoArrayObj":Ljava/lang/Object;
    if-eqz v7, :cond_0

    invoke-static {v7}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v13

    if-nez v13, :cond_2

    .line 240
    :cond_0
    sget-object v13, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 241
    sget-object v13, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v14, "1.4+ reported NULL proxy (no proxy assumed)"

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 243
    :cond_1
    sget-object v11, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->NO_PROXY_HOST:Lorg/apache/http/HttpHost;

    .line 268
    .end local v0    # "ProxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "getProxyInfoMethod":Ljava/lang/reflect/Method;
    .end local v7    # "proxyInfoArrayObj":Ljava/lang/Object;
    :goto_0
    return-object v11

    .line 245
    .restart local v0    # "ProxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "getProxyInfoMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "proxyInfoArrayObj":Ljava/lang/Object;
    :cond_2
    const/4 v13, 0x0

    invoke-static {v7, v13}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    .line 246
    .local v9, "proxyInfoObject":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 247
    .local v8, "proxyInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v14, "getHost"

    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Class;

    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 249
    .local v2, "getHostMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v2, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 251
    .local v6, "proxyIP":Ljava/lang/String;
    const-string v14, "getPort"

    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Class;

    invoke-virtual {v8, v14, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 253
    .local v3, "getPortMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    check-cast v13, [Ljava/lang/Object;

    invoke-virtual {v3, v9, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 255
    .local v5, "portInteger":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 256
    .local v10, "proxyPort":I
    sget-object v13, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v13}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 257
    sget-object v13, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "1.4+ Proxy info get Proxy:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " get Port:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 260
    :cond_3
    new-instance v12, Lorg/apache/http/HttpHost;

    invoke-direct {v12, v6, v10}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v11    # "result":Lorg/apache/http/HttpHost;
    .local v12, "result":Lorg/apache/http/HttpHost;
    move-object v11, v12

    .end local v12    # "result":Lorg/apache/http/HttpHost;
    .restart local v11    # "result":Lorg/apache/http/HttpHost;
    goto :goto_0

    .line 262
    .end local v0    # "ProxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "getHostMethod":Ljava/lang/reflect/Method;
    .end local v3    # "getPortMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getProxyInfoMethod":Ljava/lang/reflect/Method;
    .end local v5    # "portInteger":Ljava/lang/Integer;
    .end local v6    # "proxyIP":Ljava/lang/String;
    .end local v7    # "proxyInfoArrayObj":Ljava/lang/Object;
    .end local v8    # "proxyInfoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "proxyInfoObject":Ljava/lang/Object;
    .end local v10    # "proxyPort":I
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/RuntimeException;
    throw v1

    .line 264
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 265
    .local v1, "e":Ljava/lang/Exception;
    sget-object v13, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v14, "Sun Plugin 1.4+ proxy detection class not found, will try failover detection"

    invoke-interface {v13, v14}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getPluginProxyConfigSettings()Lorg/apache/http/HttpHost;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 283
    const/4 v7, 0x0

    .line 285
    .local v7, "result":Lorg/apache/http/HttpHost;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 286
    .local v3, "properties":Ljava/util/Properties;
    const-string v11, "javaplugin.proxy.config.list"

    invoke-virtual {v3, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, "proxyList":Ljava/lang/String;
    sget-object v11, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v11}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 289
    sget-object v11, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Plugin Proxy Config List Property:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 291
    :cond_0
    if-eqz v5, :cond_1

    move v9, v10

    .line 292
    .local v9, "useProxy":Z
    :cond_1
    if-eqz v9, :cond_6

    .line 293
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 300
    const-string v4, ""

    .line 301
    .local v4, "proxyIP":Ljava/lang/String;
    const-string v11, "HTTP="

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_5

    .line 302
    const-string v11, "HTTP="

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x5

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 308
    :goto_0
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 309
    .local v1, "endOfPort":I
    if-ge v1, v10, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 310
    :cond_2
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v5, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, "portString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 313
    .local v6, "proxyPort":I
    sget-object v10, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 314
    sget-object v10, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "proxy "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " port "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 316
    :cond_3
    new-instance v8, Lorg/apache/http/HttpHost;

    invoke-direct {v8, v4, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .end local v7    # "result":Lorg/apache/http/HttpHost;
    .local v8, "result":Lorg/apache/http/HttpHost;
    move-object v7, v8

    .line 331
    .end local v1    # "endOfPort":I
    .end local v2    # "portString":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v4    # "proxyIP":Ljava/lang/String;
    .end local v5    # "proxyList":Ljava/lang/String;
    .end local v6    # "proxyPort":I
    .end local v8    # "result":Lorg/apache/http/HttpHost;
    .end local v9    # "useProxy":Z
    .restart local v7    # "result":Lorg/apache/http/HttpHost;
    :cond_4
    :goto_1
    return-object v7

    .line 306
    .restart local v3    # "properties":Ljava/util/Properties;
    .restart local v4    # "proxyIP":Ljava/lang/String;
    .restart local v5    # "proxyList":Ljava/lang/String;
    .restart local v9    # "useProxy":Z
    :cond_5
    const/4 v11, 0x0

    const-string v12, ":"

    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 318
    .end local v4    # "proxyIP":Ljava/lang/String;
    :cond_6
    sget-object v10, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    const-string v11, "No configured plugin proxy list"

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 319
    sget-object v7, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->NO_PROXY_HOST:Lorg/apache/http/HttpHost;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 321
    .end local v3    # "properties":Ljava/util/Properties;
    .end local v5    # "proxyList":Ljava/lang/String;
    .end local v9    # "useProxy":Z
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    invoke-interface {v10}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 323
    sget-object v10, Lorg/apache/commons/httpclient/contrib/proxy/PluginProxyUtil;->LOG:Lorg/apache/commons/logging/Log;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during failover auto proxy detection, , e:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 325
    new-instance v10, Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;

    const-string v11, "Encountered unexpected exception while attempting to parse proxy information stored in javaplugin.proxy.config.list"

    invoke-direct {v10, v11, v0}, Lorg/apache/commons/httpclient/contrib/proxy/ProxyDetectionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
.end method
