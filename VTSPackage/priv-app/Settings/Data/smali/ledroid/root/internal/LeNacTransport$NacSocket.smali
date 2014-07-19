.class final Lledroid/root/internal/LeNacTransport$NacSocket;
.super Ljava/lang/Object;
.source "LeNacTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/internal/LeNacTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NacSocket"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;,
        Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;
    }
.end annotation


# instance fields
.field private mIpSocketClient:Ljava/net/Socket;

.field private mLocalSocketClient:Landroid/net/LocalSocket;

.field private mNacReader:Ljava/io/BufferedReader;

.field private mNacWriter:Ljava/io/PrintWriter;

.field private mNum:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    .line 63
    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    .line 65
    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;

    .line 66
    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;

    .line 72
    :try_start_0
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport$NacSocket;->tryToConnectByIpSocket()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport$NacSocket;->tryToConnectByLocalSocket()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 87
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$000(Lledroid/root/internal/LeNacTransport$NacSocket;)V
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;

    .prologue
    .line 60
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport$NacSocket;->destroy()V

    return-void
.end method

.method static synthetic access$100(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;

    .prologue
    .line 60
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$102(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;
    .param p1, "x1"    # Ljava/net/Socket;

    .prologue
    .line 60
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    return-object p1
.end method

.method static synthetic access$200(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/io/BufferedReader;
    .locals 1
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;

    .prologue
    .line 60
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic access$202(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;
    .param p1, "x1"    # Ljava/io/BufferedReader;

    .prologue
    .line 60
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;

    return-object p1
.end method

.method static synthetic access$302(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    .locals 0
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 60
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;

    return-object p1
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    .line 112
    :cond_0
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->close()V

    .line 114
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    .line 116
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private tryToConnectByIpSocket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p0}, Lledroid/root/internal/LeNacTransport$NacSocket;->connected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    new-instance v1, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;-><init>(Lledroid/root/internal/LeNacTransport$NacSocket;Lledroid/root/internal/LeNacTransport$1;)V

    .line 193
    .local v1, "thread":Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 196
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 197
    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->err:Ljava/lang/Exception;
    invoke-static {v1}, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->access$500(Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;)Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 198
    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->err:Ljava/lang/Exception;
    invoke-static {v1}, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->access$500(Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;)Ljava/lang/Exception;

    move-result-object v2

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 206
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "thread":Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;
    :cond_0
    return-void
.end method

.method private tryToConnectByLocalSocket()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v1, "nac_server"

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "address":Landroid/net/LocalSocketAddress;
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    .line 211
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 213
    new-instance v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;

    .line 214
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;

    .line 216
    return-void
.end method


# virtual methods
.method protected connected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    if-nez v2, :cond_1

    move v0, v1

    .line 126
    .local v0, "isConnected":Z
    :goto_0
    if-nez v0, :cond_0

    .line 127
    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    if-nez v2, :cond_2

    move v0, v1

    .line 130
    :cond_0
    :goto_1
    return v0

    .line 125
    .end local v0    # "isConnected":Z
    :cond_1
    iget-object v2, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    goto :goto_0

    .line 127
    .restart local v0    # "isConnected":Z
    :cond_2
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mLocalSocketClient:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->isConnected()Z

    move-result v0

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Lledroid/root/internal/LeNacTransport$NacSocket;->destroy()V

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 228
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 229
    return-void
.end method

.method public readLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;-><init>(Lledroid/root/internal/LeNacTransport$NacSocket;Lledroid/root/internal/LeNacTransport$1;)V

    invoke-virtual {v0}, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 224
    return-void
.end method
