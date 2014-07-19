.class Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;
.super Ljava/lang/Object;
.source "CellConnMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Element"
.end annotation


# instance fields
.field private mReqType:I

.field private mSlot:I

.field final synthetic this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;


# direct methods
.method public constructor <init>(Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 351
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    .line 353
    iput v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    .line 354
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;II)V
    .locals 0
    .param p2, "slot"    # I
    .param p3, "reqType"    # I

    .prologue
    .line 346
    iput-object p1, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->this$1:Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput p2, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    .line 348
    iput p3, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    .line 349
    return-void
.end method


# virtual methods
.method public getReqType()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mReqType:I

    return v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/mediatek/CellConnService/CellConnMgr$WorkerThread$Element;->mSlot:I

    return v0
.end method
