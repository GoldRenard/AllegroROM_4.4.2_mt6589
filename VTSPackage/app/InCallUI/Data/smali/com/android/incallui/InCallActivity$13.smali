.class Lcom/android/incallui/InCallActivity$13;
.super Ljava/lang/Thread;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->blurScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$13;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1443
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$13;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getBlurWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1444
    .local v0, "blueScreen":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$13;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$300(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xab

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1445
    .local v1, "msg":Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1446
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$13;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$300(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;

    move-result-object v2
    
    

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1447
    return-void
.end method
