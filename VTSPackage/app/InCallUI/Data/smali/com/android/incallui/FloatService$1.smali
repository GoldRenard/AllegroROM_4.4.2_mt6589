.class Lcom/android/incallui/FloatService$1;
.super Ljava/lang/Object;
.source "FloatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/FloatService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/FloatService;


# direct methods
.method constructor <init>(Lcom/android/incallui/FloatService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/incallui/FloatService$1;->this$0:Lcom/android/incallui/FloatService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/incallui/FloatService$1;->this$0:Lcom/android/incallui/FloatService;

    invoke-virtual {v0}, Lcom/android/incallui/FloatService;->updateCallTime()V

    .line 77
    return-void
.end method
