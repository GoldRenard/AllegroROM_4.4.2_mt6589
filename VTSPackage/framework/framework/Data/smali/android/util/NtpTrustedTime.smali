.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "NtpTrustedTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating NtpTrustedTime using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 53
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 54
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const-class v10, Landroid/util/NtpTrustedTime;

    monitor-enter v10

    :try_start_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v9, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 59
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 61
    .local v4, "resolver":Landroid/content/ContentResolver;
    const v9, 0x1040030

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "defaultServer":Ljava/lang/String;
    const v9, 0x10e0040

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v1, v9

    .line 66
    .local v1, "defaultTimeout":J
    const-string/jumbo v9, "ntp_server"

    invoke-static {v4, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "secureServer":Ljava/lang/String;
    const-string/jumbo v9, "ntp_timeout"

    invoke-static {v4, v9, v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 71
    .local v7, "timeout":J
    if-eqz v5, :cond_1

    move-object v6, v5

    .line 72
    .local v6, "server":Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/util/NtpTrustedTime;

    invoke-direct {v9, v6, v7, v8}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 75
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "defaultTimeout":J
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v6    # "server":Ljava/lang/String;
    .end local v7    # "timeout":J
    :cond_0
    sget-object v9, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    return-object v9

    .restart local v0    # "defaultServer":Ljava/lang/String;
    .restart local v1    # "defaultTimeout":J
    .restart local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "resolver":Landroid/content/ContentResolver;
    .restart local v5    # "secureServer":Ljava/lang/String;
    .restart local v7    # "timeout":J
    :cond_1
    move-object v6, v0

    .line 71
    goto :goto_0

    .line 57
    .end local v0    # "defaultServer":Ljava/lang/String;
    .end local v1    # "defaultTimeout":J
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resolver":Landroid/content/ContentResolver;
    .end local v5    # "secureServer":Ljava/lang/String;
    .end local v7    # "timeout":J
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 162
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 80
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 133
    :goto_0
    return v4

    .line 85
    :cond_0
    const-string/jumbo v6, "persist.systembgdata.enable"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 86
    .local v0, "bSysBgEnable":Z
    if-nez v0, :cond_1

    .line 88
    const-string v5, "NtpTrustedTime"

    const-string/jumbo v6, "persist.systembgdate.enbale--->false return"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    const/4 v6, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v6, "xtra1.gpsonextra.net"

    aput-object v6, v3, v4

    const-string v6, "0.centos.pool.ntp.org"

    aput-object v6, v3, v5

    const/4 v6, 0x2

    const-string v7, "1.centos.pool.ntp.org"

    aput-object v7, v3, v6

    const/4 v6, 0x3

    const-string v7, "2.centos.pool.ntp.org"

    aput-object v7, v3, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "time.buptnet.edu.cn"

    aput-object v7, v3, v6

    .line 99
    .local v3, "ntpServers":[Ljava/lang/String;
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefresh() from cache miss"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Landroid/net/SntpClient;

    invoke-direct {v1}, Landroid/net/SntpClient;-><init>()V

    .line 101
    .local v1, "client":Landroid/net/SntpClient;
    iget-object v6, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v7, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 103
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 104
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 105
    invoke-virtual {v1}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v9

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 107
    const-string v4, "NtpTrustedTime"

    const-string v6, "client.requestTime mServer is true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 109
    goto :goto_0

    .line 112
    :cond_2
    const-string v6, "NtpTrustedTime"

    const-string v7, "client.requestTime mServer is false"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_4

    .line 117
    aget-object v6, v3, v2

    iget-wide v7, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v7, v7

    invoke-virtual {v1, v6, v7}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    const-string v4, "NtpTrustedTime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "client.requestTime ntpServers[i] is true return"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 122
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 123
    invoke-virtual {v1}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 124
    invoke-virtual {v1}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v9

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    move v4, v5

    .line 125
    goto/16 :goto_0

    .line 116
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 129
    :cond_4
    const-string v5, "NtpTrustedTime"

    const-string v6, "can not getNtpTime"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 147
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 154
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 156
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 173
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
