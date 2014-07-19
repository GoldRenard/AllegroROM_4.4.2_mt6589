.class final Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;
.super Ljava/lang/Thread;
.source "LeNacTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/internal/LeNacTransport$NacSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SocketReaderThread"
.end annotation


# instance fields
.field private mReadLine:Ljava/lang/String;

.field final synthetic this$0:Lledroid/root/internal/LeNacTransport$NacSocket;


# direct methods
.method private constructor <init>(Lledroid/root/internal/LeNacTransport$NacSocket;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lledroid/root/internal/LeNacTransport$NacSocket;Lledroid/root/internal/LeNacTransport$1;)V
    .locals 0
    .param p1, "x0"    # Lledroid/root/internal/LeNacTransport$NacSocket;
    .param p2, "x1"    # Lledroid/root/internal/LeNacTransport$1;

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;-><init>(Lledroid/root/internal/LeNacTransport$NacSocket;)V

    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 180
    :goto_0
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Thread;->join(J)V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;->mReadLine:Ljava/lang/String;

    return-object v0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;->mReadLine:Ljava/lang/String;

    .line 167
    :try_start_0
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;->this$0:Lledroid/root/internal/LeNacTransport$NacSocket;

    # getter for: Lledroid/root/internal/LeNacTransport$NacSocket;->mNacReader:Ljava/io/BufferedReader;
    invoke-static {v0}, Lledroid/root/internal/LeNacTransport$NacSocket;->access$200(Lledroid/root/internal/LeNacTransport$NacSocket;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lledroid/root/internal/LeNacTransport$NacSocket$SocketReaderThread;->mReadLine:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    goto :goto_0
.end method
