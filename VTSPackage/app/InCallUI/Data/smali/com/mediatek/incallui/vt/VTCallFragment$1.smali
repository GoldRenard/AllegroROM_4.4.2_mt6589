.class Lcom/mediatek/incallui/vt/VTCallFragment$1;
.super Landroid/os/Handler;
.source "VTCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VTCallFragment Handler message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 156
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 173
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$100(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$100(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$100(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$200(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$200(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$1;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$200(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1001
        :pswitch_0
    .end packed-switch
.end method
