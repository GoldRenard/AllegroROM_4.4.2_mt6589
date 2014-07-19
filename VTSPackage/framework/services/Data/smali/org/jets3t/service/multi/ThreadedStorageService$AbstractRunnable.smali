.class public abstract Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.super Ljava/lang/Object;
.source "ThreadedStorageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbstractRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method protected constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected forceInterrupt()V
    .locals 0

    .prologue
    .line 1092
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;->forceInterruptCalled()V

    .line 1093
    return-void
.end method

.method public abstract forceInterruptCalled()V
.end method

.method public abstract getResult()Ljava/lang/Object;
.end method
