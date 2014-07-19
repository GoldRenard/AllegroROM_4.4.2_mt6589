.class public Lcom/android/server/am/ANRManager$BinderDumpThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BinderDumpThread"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/server/am/ANRManager;

.field private mPid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ANRManager;I)V
    .locals 0

    .prologue
    .line 1408
    iput-object p1, p0, Lcom/android/server/am/ANRManager$BinderDumpThread;->a:Lcom/android/server/am/ANRManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1409
    iput p2, p0, Lcom/android/server/am/ANRManager$BinderDumpThread;->mPid:I

    .line 1410
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1413
    iget-object v0, p0, Lcom/android/server/am/ANRManager$BinderDumpThread;->a:Lcom/android/server/am/ANRManager;

    iget v1, p0, Lcom/android/server/am/ANRManager$BinderDumpThread;->mPid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager;->dumpBinderInfo(I)V

    .line 1414
    return-void
.end method
