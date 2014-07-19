.class public Landroid/widget/Switch$MoveAnimTask;
.super Landroid/os/AsyncTask;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoveAnimTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Landroid/widget/Switch;

.field time:I

.field toRight:Z


# direct methods
.method public constructor <init>(Landroid/widget/Switch;Z)V
    .locals 3
    .param p2, "check"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 979
    iput-object p1, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    .line 980
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 976
    const/16 v0, 0xa

    iput v0, p0, Landroid/widget/Switch$MoveAnimTask;->time:I

    .line 977
    const/16 v0, 0x8

    iput v0, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    .line 978
    iput-boolean v1, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    .line 981
    iget-boolean v0, p1, Landroid/widget/Switch;->neadMove:Z

    if-eqz v0, :cond_0

    .line 982
    if-nez p2, :cond_1

    move v0, v1

    :goto_0
    # invokes: Landroid/widget/Switch;->setThumbPosition(Z)V
    invoke-static {p1, v0}, Landroid/widget/Switch;->access$000(Landroid/widget/Switch;Z)V

    .line 984
    :cond_0
    if-eqz p2, :cond_2

    iput-boolean v1, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    .line 986
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 982
    goto :goto_0

    .line 985
    :cond_2
    iput-boolean v2, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 975
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/Switch$MoveAnimTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    .line 990
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    # invokes: Landroid/widget/Switch;->getThumbScrollRange()I
    invoke-static {v2}, Landroid/widget/Switch;->access$100(Landroid/widget/Switch;)I

    move-result v0

    .line 991
    .local v0, "max":I
    int-to-float v2, v0

    iget v3, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 992
    .local v1, "tmpPos":F
    :goto_0
    iget v2, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v2, v2, Landroid/widget/Switch;->neadMove:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v2, v2, Landroid/widget/Switch;->isleaveWindow:Z

    if-nez v2, :cond_0

    .line 993
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v2, v2, Landroid/widget/Switch;->isleaveWindow:Z

    if-eqz v2, :cond_1

    .line 995
    const-string v2, "liqftest"

    const-string/jumbo v3, "the switch isleaveWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    :cond_0
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 998
    :cond_1
    iget-boolean v2, p0, Landroid/widget/Switch$MoveAnimTask;->toRight:Z

    if-eqz v2, :cond_2

    .line 999
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    # += operator for: Landroid/widget/Switch;->mThumbPosition:F
    invoke-static {v2, v1}, Landroid/widget/Switch;->access$216(Landroid/widget/Switch;F)F

    .line 1003
    :goto_2
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    # getter for: Landroid/widget/Switch;->mThumbPosition:F
    invoke-static {v2}, Landroid/widget/Switch;->access$200(Landroid/widget/Switch;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    # getter for: Landroid/widget/Switch;->mThumbPosition:F
    invoke-static {v2}, Landroid/widget/Switch;->access$200(Landroid/widget/Switch;)F

    move-result v2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 1004
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/view/View;->postInvalidate()V

    .line 1005
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget v3, p0, Landroid/widget/Switch$MoveAnimTask;->time:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/Switch;->sleep(J)V

    .line 1006
    iget v2, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/widget/Switch$MoveAnimTask;->count:I

    goto :goto_0

    .line 1001
    :cond_2
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    # -= operator for: Landroid/widget/Switch;->mThumbPosition:F
    invoke-static {v2, v1}, Landroid/widget/Switch;->access$224(Landroid/widget/Switch;F)F

    goto :goto_2

    .line 1008
    :cond_3
    iget-object v2, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-object v3, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    # invokes: Landroid/widget/Switch;->setThumbPosition(Z)V
    invoke-static {v2, v3}, Landroid/widget/Switch;->access$000(Landroid/widget/Switch;Z)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 975
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/widget/Switch$MoveAnimTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1020
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iput-boolean v2, v0, Landroid/widget/Switch;->neadMove:Z

    .line 1021
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-object v1, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    # invokes: Landroid/widget/Switch;->setThumbPosition(Z)V
    invoke-static {v0, v1}, Landroid/widget/Switch;->access$000(Landroid/widget/Switch;Z)V

    .line 1022
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-boolean v0, v0, Landroid/widget/Switch;->isleaveWindow:Z

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1025
    :cond_0
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iget-object v1, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Switch;->lastCheck:Z

    .line 1026
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    iput-boolean v2, v0, Landroid/widget/Switch;->isMoving:Z

    .line 1027
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1016
    iget-object v0, p0, Landroid/widget/Switch$MoveAnimTask;->this$0:Landroid/widget/Switch;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/Switch;->isMoving:Z

    .line 1017
    return-void
.end method
