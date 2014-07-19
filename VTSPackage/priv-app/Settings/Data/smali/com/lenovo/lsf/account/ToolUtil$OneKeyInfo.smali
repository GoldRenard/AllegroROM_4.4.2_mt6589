.class public Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
.super Ljava/lang/Object;
.source "ToolUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/ToolUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneKeyInfo"
.end annotation


# instance fields
.field private Password:Ljava/lang/String;

.field private errorMessage:Ljava/lang/String;

.field private invalidTime:Ljava/lang/String;

.field private numberFromList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numberSendList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queryMessage:Ljava/lang/String;

.field private sendBody:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->queryMessage:Ljava/lang/String;

    .line 437
    const-string v0, "0"

    iput-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->invalidTime:Ljava/lang/String;

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberFromList:Ljava/util/ArrayList;

    .line 439
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberSendList:Ljava/util/ArrayList;

    .line 440
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->Password:Ljava/lang/String;

    .line 441
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->sendBody:Ljava/lang/String;

    .line 442
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->invalidTime:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberFromList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    iget-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberFromList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNumberSendList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberSendList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->queryMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getSendBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->sendBody:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->errorMessage:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public setInvalidTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "invalidTime"    # Ljava/lang/String;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->invalidTime:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setNumberFromList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "numberFromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberFromList:Ljava/util/ArrayList;

    .line 474
    return-void
.end method

.method public setNumberSendList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "numberSendList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberSendList:Ljava/util/ArrayList;

    .line 482
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->Password:Ljava/lang/String;

    .line 454
    return-void
.end method

.method public setQueryMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "queryMessage"    # Ljava/lang/String;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->queryMessage:Ljava/lang/String;

    .line 458
    return-void
.end method

.method public setSendBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "sendBody"    # Ljava/lang/String;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->sendBody:Ljava/lang/String;

    .line 490
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{one key info}{query Message|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->queryMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "||invalidTime|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->invalidTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "||numberFromList|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberFromList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "||numberSendList|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->numberSendList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "||sendBody|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->sendBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "||Password|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->Password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "||errorMessage|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
