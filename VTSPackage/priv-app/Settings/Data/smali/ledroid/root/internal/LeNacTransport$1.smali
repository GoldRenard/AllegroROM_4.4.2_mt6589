.class Lledroid/root/internal/LeNacTransport$1;
.super Ljava/lang/Object;
.source "LeNacTransport.java"

# interfaces
.implements Lledroid/root/ShellCommand$ShellCommandResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lledroid/root/internal/LeNacTransport;->prepare()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lledroid/root/internal/LeNacTransport;

.field final synthetic val$testr:Ljava/io/File;


# direct methods
.method constructor <init>(Lledroid/root/internal/LeNacTransport;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lledroid/root/internal/LeNacTransport$1;->this$0:Lledroid/root/internal/LeNacTransport;

    iput-object p2, p0, Lledroid/root/internal/LeNacTransport$1;->val$testr:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShellCommandResponse(ILjava/lang/String;)V
    .locals 2
    .param p1, "exeId"    # I
    .param p2, "reply"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 255
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$1;->val$testr:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lledroid/root/internal/LeNacTransport$1;->this$0:Lledroid/root/internal/LeNacTransport;

    # setter for: Lledroid/root/internal/LeNacTransport;->mNacCanWork:Z
    invoke-static {v0, v1}, Lledroid/root/internal/LeNacTransport;->access$702(Lledroid/root/internal/LeNacTransport;Z)Z

    .line 258
    :cond_0
    return-void
.end method
