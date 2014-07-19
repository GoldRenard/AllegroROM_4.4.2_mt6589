.class Lcom/lenovo/widetouch/WideTouchService$1;
.super Ljava/lang/Object;
.source "WideTouchService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/widetouch/WideTouchService;->bindTouchWindowService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method constructor <init>(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 176
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lenovo.widetouch.TOUCH_WINDOW_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v1, "service":Landroid/content/Intent;
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    new-instance v3, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

    iget-object v4, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;-><init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V

    iput-object v3, v2, Lcom/lenovo/widetouch/WideTouchService;->mMyConn:Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

    .line 178
    const/4 v0, 0x1

    .line 180
    .local v0, "flags":I
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v2, v2, Lcom/lenovo/widetouch/WideTouchService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    iget-object v3, v3, Lcom/lenovo/widetouch/WideTouchService;->mMyConn:Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string v2, "WideTouchService"

    const-string v3, "bindTouchWindowService fail!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_0
    const-string v2, "WideTouchService"

    const-string v3, "bindTouchWindowService OK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lcom/lenovo/widetouch/WideTouchService$1;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    const/4 v3, 0x1

    # setter for: Lcom/lenovo/widetouch/WideTouchService;->mIsBound:Z
    invoke-static {v2, v3}, Lcom/lenovo/widetouch/WideTouchService;->access$502(Lcom/lenovo/widetouch/WideTouchService;Z)Z

    goto :goto_0
.end method
