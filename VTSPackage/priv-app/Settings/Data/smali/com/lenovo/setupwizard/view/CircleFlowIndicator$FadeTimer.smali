.class Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;
.super Landroid/os/AsyncTask;
.source "CircleFlowIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/setupwizard/view/CircleFlowIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeTimer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _run:Z

.field final synthetic this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

.field private timer:I


# direct methods
.method private constructor <init>(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;)V
    .locals 1

    .prologue
    .line 320
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->timer:I

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->_run:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;Lcom/lenovo/setupwizard/view/CircleFlowIndicator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/setupwizard/view/CircleFlowIndicator;
    .param p2, "x1"    # Lcom/lenovo/setupwizard/view/CircleFlowIndicator$1;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;-><init>(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;)V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->_run:Z

    return v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 332
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->_run:Z

    if-eqz v1, :cond_1

    .line 335
    const-wide/16 v1, 0x1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 337
    iget v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->timer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->timer:I

    .line 340
    iget v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->timer:I

    iget-object v2, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    # getter for: Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->fadeOutTime:I
    invoke-static {v2}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->access$200(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 342
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->_run:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 349
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 320
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    # setter for: Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v0, v1}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->access$302(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;

    .line 356
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    # getter for: Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->access$300(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    iget-object v1, v1, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 357
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->this$0:Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    # getter for: Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->access$300(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 358
    return-void
.end method

.method public resetTimer()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->timer:I

    .line 328
    return-void
.end method
