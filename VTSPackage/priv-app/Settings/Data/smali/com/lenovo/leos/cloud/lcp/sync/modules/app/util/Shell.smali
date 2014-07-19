.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract runWaitFor(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract runWaitFor(Landroid/content/Context;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/CommandResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shellUsable(Landroid/content/Context;)Z
.end method
