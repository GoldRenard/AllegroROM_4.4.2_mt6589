.class Lcom/android/settings/IccLockSettings$4;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v0}, Lcom/android/settings/IccLockSettings;->access$600(Lcom/android/settings/IccLockSettings;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$4;->this$0:Lcom/android/settings/IccLockSettings;

    # getter for: Lcom/android/settings/IccLockSettings;->mSlotId:I
    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->access$500(Lcom/android/settings/IccLockSettings;)I

    move-result v1

    const v2, -0x7ffffed2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 385
    return-void
.end method
