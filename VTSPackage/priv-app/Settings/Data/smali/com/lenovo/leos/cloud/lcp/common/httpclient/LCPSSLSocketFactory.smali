.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
.super Ljava/lang/Object;
.source "LCPSSLSocketFactory.java"

# interfaces
.implements Lorg/apache/http/conn/scheme/LayeredSocketFactory;


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field public static final SSL:Ljava/lang/String; = "SSL"

.field public static final SSLV2:Ljava/lang/String; = "SSLv2"

.field public static final STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private static final TAG:Ljava/lang/String; = "LCPSSLSocketFactory"

.field public static final TLS:Ljava/lang/String; = "TLS"


# instance fields
.field private hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

.field private final nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

.field private final socketfactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final sslcontext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    new-instance v0, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/AllowAllHostnameVerifier;-><init>()V

    .line 183
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 187
    new-instance v0, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;-><init>()V

    .line 186
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 190
    new-instance v0, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/StrictHostnameVerifier;-><init>()V

    .line 189
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V
    .locals 3
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "keystore"    # Ljava/security/KeyStore;
    .param p3, "keystorePassword"    # Ljava/lang/String;
    .param p4, "truststore"    # Ljava/security/KeyStore;
    .param p5, "random"    # Ljava/security/SecureRandom;
    .param p6, "nameResolver"    # Lorg/apache/http/conn/scheme/HostNameResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "keymanagers":[Ljavax/net/ssl/KeyManager;
    if-eqz p2, :cond_0

    .line 222
    invoke-static {p2, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 224
    :cond_0
    const/4 v1, 0x0

    .line 225
    .local v1, "trustmanagers":[Ljavax/net/ssl/TrustManager;
    if-eqz p4, :cond_1

    .line 226
    invoke-static {p4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    .line 228
    :cond_1
    if-nez p1, :cond_2

    const-string p1, "TLS"

    .end local p1    # "algorithm":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 229
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2, v0, v1, p5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 230
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 231
    iput-object p6, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 252
    const-string v1, "TLS"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 246
    const-string v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 247
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "keystorePassword"    # Ljava/lang/String;
    .param p3, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 240
    const-string v1, "TLS"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;-><init>(Ljava/lang/String;Ljava/security/KeyStore;Ljava/lang/String;Ljava/security/KeyStore;Ljava/security/SecureRandom;Lorg/apache/http/conn/scheme/HostNameResolver;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2
    .param p1, "socketfactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 258
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->sslcontext:Ljavax/net/ssl/SSLContext;

    .line 259
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 260
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    .line 261
    return-void
.end method

.method private static createKeyManagers(Ljava/security/KeyStore;Ljava/lang/String;)[Ljavax/net/ssl/KeyManager;
    .locals 3
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .param p1, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 277
    if-nez p0, :cond_0

    .line 278
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-static {v1}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0

    .line 282
    .local v0, "kmfactory":Ljavax/net/ssl/KeyManagerFactory;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p0, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 283
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    return-object v1

    .line 282
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static createTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .param p0, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p0, :cond_0

    .line 289
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Keystore may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 292
    :cond_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 293
    .local v0, "tmfactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 294
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1
.end method

.method public static getSocketFactory()Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    .locals 9

    .prologue
    .line 151
    const/4 v3, 0x0

    .line 153
    .local v3, "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    :try_start_0
    const-string v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 154
    .local v0, "context":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljavax/net/ssl/X509TrustManager;

    const/4 v7, 0x0

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory$1;

    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory$1;-><init>()V

    aput-object v8, v6, v7

    .line 166
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 154
    invoke-virtual {v0, v5, v6, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 168
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .end local v3    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    .local v4, "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    :try_start_1
    sget-object v5, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 176
    .end local v0    # "context":Ljavax/net/ssl/SSLContext;
    .end local v4    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    .local v2, "noale":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    :goto_0
    return-object v3

    .line 171
    .end local v2    # "noale":Ljava/security/NoSuchAlgorithmException;
    :catch_0
    move-exception v2

    .line 172
    .restart local v2    # "noale":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const-string v5, "LCPSSLSocketFactory"

    const-string v6, "create SSLFactory error"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v2    # "noale":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    const-string v5, "LCPSSLSocketFactory"

    const-string v6, "create SSLFactory error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    .restart local v0    # "context":Ljavax/net/ssl/SSLContext;
    .restart local v4    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    :catch_2
    move-exception v1

    move-object v3, v4

    .end local v4    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    .restart local v3    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    goto :goto_2

    .line 171
    .end local v3    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    .restart local v4    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    .restart local v3    # "sessionFactory":Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;
    goto :goto_1
.end method


# virtual methods
.method public connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;
    .locals 9
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "localAddress"    # Ljava/net/InetAddress;
    .param p5, "localPort"    # I
    .param p6, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    if-nez p2, :cond_0

    .line 318
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Target host may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 320
    :cond_0
    if-nez p6, :cond_1

    .line 321
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Parameters may not be null."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    :cond_1
    if-eqz p1, :cond_5

    move-object v5, p1

    .line 324
    :goto_0
    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 327
    .local v5, "sslsock":Ljavax/net/ssl/SSLSocket;
    if-nez p4, :cond_2

    if-lez p5, :cond_4

    .line 329
    :cond_2
    new-instance v2, Ljava/net/InetSocketAddress;

    if-gez p5, :cond_3

    const/4 p5, 0x0

    .end local p5    # "localPort":I
    :cond_3
    invoke-direct {v2, p4, p5}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 330
    .local v2, "isa":Ljava/net/InetSocketAddress;
    invoke-virtual {v5, v2}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 333
    .end local v2    # "isa":Ljava/net/InetSocketAddress;
    :cond_4
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getConnectionTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 334
    .local v0, "connTimeout":I
    invoke-static {p6}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v4

    .line 337
    .local v4, "soTimeout":I
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    if-eqz v7, :cond_6

    .line 338
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->nameResolver:Lorg/apache/http/conn/scheme/HostNameResolver;

    invoke-interface {v7, p2}, Lorg/apache/http/conn/scheme/HostNameResolver;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v3, v7, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 343
    .local v3, "remoteAddress":Ljava/net/InetSocketAddress;
    :goto_1
    invoke-virtual {v5, v3, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 345
    invoke-virtual {v5, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 347
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v7, p2, v5}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    return-object v5

    .line 325
    .end local v0    # "connTimeout":I
    .end local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    .end local v4    # "soTimeout":I
    .end local v5    # "sslsock":Ljavax/net/ssl/SSLSocket;
    .restart local p5    # "localPort":I
    :cond_5
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v5

    goto :goto_0

    .line 340
    .end local p5    # "localPort":I
    .restart local v0    # "connTimeout":I
    .restart local v4    # "soTimeout":I
    .restart local v5    # "sslsock":Ljavax/net/ssl/SSLSocket;
    :cond_6
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "remoteAddress":Ljava/net/InetSocketAddress;
    goto :goto_1

    .line 349
    :catch_0
    move-exception v1

    .line 352
    .local v1, "iox":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 356
    :goto_2
    throw v1

    .line 353
    :catch_1
    move-exception v6

    .line 354
    .local v6, "x":Ljava/lang/Exception;
    const-string v7, "LCPSSLSocketFactory"

    const-string v8, "connectSocket exception when sslsock.close(), should not happened!"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->socketfactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 410
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-interface {v1, p2, v0}, Lorg/apache/http/conn/ssl/X509HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V

    .line 412
    return-object v0
.end method

.method public getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    return-object v0
.end method

.method public isSecure(Ljava/net/Socket;)Z
    .locals 2
    .param p1, "sock"    # Ljava/net/Socket;

    .prologue
    .line 379
    if-nez p1, :cond_0

    .line 380
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    instance-of v0, p1, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_1

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 385
    const-string v1, "Socket not created by this factory."

    .line 384
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 388
    :cond_1
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    .locals 2
    .param p1, "hostnameVerifier"    # Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .prologue
    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Hostname verifier may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->hostnameVerifier:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 420
    return-void
.end method
