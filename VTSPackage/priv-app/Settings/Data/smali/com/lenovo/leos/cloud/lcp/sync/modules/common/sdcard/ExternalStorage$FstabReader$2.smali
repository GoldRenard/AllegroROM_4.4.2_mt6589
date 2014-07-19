.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$2;
.super Ljava/lang/Object;
.source "ExternalStorage.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->findFstabFiles()[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$2;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 372
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$2;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->fstabFileSubfix:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
