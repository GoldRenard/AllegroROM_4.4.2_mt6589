.class Lcom/mediatek/settings/deviceinfo/MemoryExts$4;
.super Ljava/lang/Object;
.source "MemoryExts.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$4;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 350
    const-string v0, "flyrea"

    const-string v1, "is sd1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$4;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const-string v1, "/storage/sdcard1"

    # invokes: Lcom/mediatek/settings/deviceinfo/MemoryExts;->setEmmcDefaultStorage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$400(Lcom/mediatek/settings/deviceinfo/MemoryExts;Ljava/lang/String;)V

    .line 352
    return-void
.end method
