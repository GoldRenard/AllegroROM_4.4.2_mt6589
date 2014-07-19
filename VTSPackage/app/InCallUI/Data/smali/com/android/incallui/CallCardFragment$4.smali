.class Lcom/android/incallui/CallCardFragment$4;
.super Ljava/lang/Thread;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$4;->val$mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/incallui/CallCardFragment$4;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$4;->val$mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment$4;->val$phoneNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/lesafe/antiInterface/SafeSignSupport;->getCallSign(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "resultStrs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 423
    .local v0, "msg":Landroid/os/Message;
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 424
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$4;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    return-void
.end method
