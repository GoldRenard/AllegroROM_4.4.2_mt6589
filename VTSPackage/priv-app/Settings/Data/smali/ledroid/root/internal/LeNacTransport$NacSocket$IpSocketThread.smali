.class final Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;
.super Ljava/lang/Thread;
.source "LeNacTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/internal/LeNacTransport$NacSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IpSocketThread"
.end annotation


# instance fields
.field private err:Ljava/lang/Exception;

.field final synthetic this$0:Lledroid/root/internal/LeNacTransport$NacSocket;


# direct methods
.method private constructor <init>(Lledroid/root/internal/LeNacTransport$NacSocket;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->err:Ljava/lang/Exception;

    return-void
.end method

.method synthetic constructor <init>(Lledroid/root/internal/LeNacTransport$NacSocket;Lledroid/root/internal/LeNacTransport$1;)V
    .locals 0
    .param p1, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;
    .param p2, "x1"    # Lledroid/root/internal/LeNacTransport$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;-><init>(Lledroid/root/internal/LeNacTransport$NacSocket;)V

    return-void
.end method

.method static synthetic access$500(Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;

    .prologue
    .line 133
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->err:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    :try_start_0
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    new-instance v2, Ljava/net/Socket;

    const-string v3, "127.0.0.1"

    const/16 v4, 0x7531

    invoke-direct {v2, v3, v4}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    # setter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;
    invoke-static {v1, v2}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$102(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/net/Socket;)Ljava/net/Socket;

    .line 142
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;
    invoke-static {v4}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$100(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    # setter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;
    invoke-static {v1, v2}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$202(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 143
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    new-instance v2, Ljava/io/PrintWriter;

    iget-object v3, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;
    invoke-static {v3}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$100(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    # setter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;
    invoke-static {v1, v2}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$302(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;
    invoke-static {v1}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$100(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;
    invoke-static {v1}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$100(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    :try_start_1
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;
    invoke-static {v1}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$100(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 151
    :cond_0
    :goto_1
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # setter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mIpSocketClient:Ljava/net/Socket;
    invoke-static {v1, v5}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$102(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/net/Socket;)Ljava/net/Socket;

    .line 153
    :cond_1
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # setter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;
    invoke-static {v1, v5}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$202(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/io/BufferedReader;)Ljava/io/BufferedReader;

    .line 154
    iget-object v1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # setter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mNacWriter:Ljava/io/PrintWriter;
    invoke-static {v1, v5}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$302(Lledroid/root/internal/LeNacTransport$NacSocket;Ljava/io/PrintWriter;)Ljava/io/PrintWriter;

    .line 155
    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket$IpSocketThread;->err:Ljava/lang/Exception;

    goto :goto_0

    .line 149
    :catch_1
    move-exception v1

    goto :goto_1
.end method
