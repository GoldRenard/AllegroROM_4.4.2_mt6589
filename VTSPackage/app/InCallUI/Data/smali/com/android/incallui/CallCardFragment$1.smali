.class Lcom/android/incallui/CallCardFragment$1;
.super Landroid/os/Handler;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 148
    :goto_0
    return-void

    .line 142
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 143
    .local v0, "resultStrs":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$1;->this$0:Lcom/android/incallui/CallCardFragment;

    # invokes: Lcom/android/incallui/CallCardFragment;->displayLeSafeMessage([Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/android/incallui/CallCardFragment;->access$000(Lcom/android/incallui/CallCardFragment;[Ljava/lang/String;)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method
