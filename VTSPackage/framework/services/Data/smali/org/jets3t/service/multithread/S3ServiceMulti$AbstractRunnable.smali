.class abstract Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.super Ljava/lang/Object;
.source "S3ServiceMulti.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method private constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;)V
    .locals 0

    .prologue
    .line 1801
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jets3t/service/multithread/S3ServiceMulti;
    .param p2, "x1"    # Lorg/jets3t/service/multithread/S3ServiceMulti$1;

    .prologue
    .line 1801
    invoke-direct {p0, p1}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;)V

    return-void
.end method


# virtual methods
.method protected forceInterrupt()V
    .locals 0

    .prologue
    .line 1808
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;->forceInterruptCalled()V

    .line 1809
    return-void
.end method

.method public abstract forceInterruptCalled()V
.end method

.method public abstract getResult()Ljava/lang/Object;
.end method
