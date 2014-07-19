.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->callBack(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

.field final synthetic val$fileInfoForMisc:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->val$fileInfoForMisc:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 208
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->val$fileInfoForMisc:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$302(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 209
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$402(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;J)J

    .line 210
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    # getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    # getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    .line 212
    .local v1, "info":Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iget-wide v3, v1, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;->mSize:J

    # += operator for: Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mDataSize:J
    invoke-static {v2, v3, v4}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$414(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;J)J

    goto :goto_0

    .line 215
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1$1;->this$2:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;

    iget-object v2, v2, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$1;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 216
    return-void
.end method
