.class public Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;
.super Ljava/lang/Object;
.source "VTCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogCancelTimer"
.end annotation


# instance fields
.field private final mSeconds:I

.field private final mTimer:Ljava/util/Timer;

.field private mVTMTAskDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method public constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;ILandroid/app/AlertDialog;)V
    .locals 1
    .param p2, "seconds"    # I
    .param p3, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 754
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mTimer:Ljava/util/Timer;

    .line 755
    iput p2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mSeconds:I

    .line 756
    iput-object p3, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;

    .line 757
    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Ljava/util/Timer;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mTimer:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 763
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)V

    iget v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mSeconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 773
    return-void
.end method
