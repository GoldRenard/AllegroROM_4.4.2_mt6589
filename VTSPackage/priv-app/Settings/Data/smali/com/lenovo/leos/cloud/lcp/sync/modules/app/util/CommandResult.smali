.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
.super Ljava/lang/Object;
.source "CommandResult.java"


# instance fields
.field public final exitValue:Ljava/lang/Integer;

.field public final standardError:Ljava/lang/String;

.field public final standardOutput:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "exitValueIn"    # Ljava/lang/Integer;

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "exitValueIn"    # Ljava/lang/Integer;
    .param p2, "stdoutIn"    # Ljava/lang/String;
    .param p3, "stderrIn"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->exitValue:Ljava/lang/Integer;

    .line 16
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->standardOutput:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->standardError:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public success()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->exitValue:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;->exitValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
