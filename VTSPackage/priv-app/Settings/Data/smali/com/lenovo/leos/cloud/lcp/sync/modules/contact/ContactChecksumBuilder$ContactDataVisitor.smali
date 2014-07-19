.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;
.super Ljava/lang/Object;
.source "ContactChecksumBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactDataVisitor"
.end annotation


# instance fields
.field private fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field private photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;


# direct methods
.method private constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .local p3, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    .line 560
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->photos:Ljava/util/List;

    .line 561
    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Ljava/util/List;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;)V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z
    .locals 7
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 565
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 568
    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v0

    .line 569
    .local v0, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    if-nez v0, :cond_1

    .line 570
    const-string v2, "TaskContactAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown client field:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    return v3

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move-object v1, v4

    .line 575
    .local v1, "last":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :goto_1
    if-eqz v1, :cond_2

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    iget v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    if-ne v2, v5, :cond_7

    .line 576
    :cond_2
    const-string v2, "IMAGE"

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 577
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->photos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_3
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 593
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    move-result-object v2

    add-int/lit8 v5, p2, 0x1

    invoke-interface {v2, v5, p3, v4}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 595
    :cond_5
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v3

    :goto_3
    move v3, v2

    goto :goto_0

    .line 573
    .end local v1    # "last":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_6
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-object v1, v2

    goto :goto_1

    .line 582
    .restart local v1    # "last":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_7
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->photos:Ljava/util/List;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buildOneContactChecksumRequest(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v2, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Ljava/util/List;Ljava/util/List;)V

    .line 583
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 584
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->fields:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->photos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 587
    const-string v2, "IMAGE"

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->photos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 595
    :cond_8
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v2

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    move v2, v3

    goto :goto_3
.end method
