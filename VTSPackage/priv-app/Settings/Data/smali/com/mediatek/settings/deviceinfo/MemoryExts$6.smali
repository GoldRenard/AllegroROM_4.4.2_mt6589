.class Lcom/mediatek/settings/deviceinfo/MemoryExts$6;
.super Landroid/os/AsyncTask;
.source "MemoryExts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/deviceinfo/MemoryExts;->doMount(Landroid/os/storage/IMountService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$6;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$6;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 518
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/settings/deviceinfo/MemoryExts$6;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$6;->val$mountService:Landroid/os/storage/IMountService;

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "MemorySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Settings mountVolume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$700()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$6;->val$mountService:Landroid/os/storage/IMountService;

    # getter for: Lcom/mediatek/settings/deviceinfo/MemoryExts;->sClickedMountPoint:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$700()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 531
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 526
    :cond_0
    const-string v0, "MemorySettings"

    const-string v1, "Mount service is null, can\'t mount"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    goto :goto_0
.end method
