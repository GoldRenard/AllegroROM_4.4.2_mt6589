.class Lcom/android/internal/policy/impl/LenovoHeadsetManager$1;
.super Ljava/lang/Object;
.source "LenovoHeadsetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LenovoHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$1;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/LenovoHeadsetManager$1;->this$0:Lcom/android/internal/policy/impl/LenovoHeadsetManager;

    # invokes: Lcom/android/internal/policy/impl/LenovoHeadsetManager;->onHeadsetLongPress()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LenovoHeadsetManager;->access$000(Lcom/android/internal/policy/impl/LenovoHeadsetManager;)V

    .line 129
    return-void
.end method
