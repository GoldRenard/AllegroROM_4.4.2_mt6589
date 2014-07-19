.class Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;
.super Ljava/lang/Object;
.source "WideTouchService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/widetouch/WideTouchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/widetouch/WideTouchService;


# direct methods
.method private constructor <init>(Lcom/lenovo/widetouch/WideTouchService;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/widetouch/WideTouchService;Lcom/lenovo/widetouch/WideTouchService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/widetouch/WideTouchService;
    .param p2, "x1"    # Lcom/lenovo/widetouch/WideTouchService$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;-><init>(Lcom/lenovo/widetouch/WideTouchService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    invoke-static {p2}, Lcom/lenovo/widetouch/ITouchWindowServiceBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    .line 204
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/lenovo/widetouch/WideTouchService;->mTouchWindowServiceBinder:Lcom/lenovo/widetouch/ITouchWindowServiceBinder;

    .line 209
    iget-object v0, p0, Lcom/lenovo/widetouch/WideTouchService$MyServiceConnection;->this$0:Lcom/lenovo/widetouch/WideTouchService;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/widetouch/WideTouchService;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/lenovo/widetouch/WideTouchService;->access$502(Lcom/lenovo/widetouch/WideTouchService;Z)Z

    .line 210
    return-void
.end method
