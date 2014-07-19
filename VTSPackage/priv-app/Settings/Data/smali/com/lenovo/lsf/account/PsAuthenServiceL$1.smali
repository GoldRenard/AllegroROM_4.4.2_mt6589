.class final Lcom/lenovo/lsf/account/PsAuthenServiceL$1;
.super Ljava/lang/Object;
.source "PsAuthenServiceL.java"

# interfaces
.implements Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$1;->val$callback:Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 1
    .param p1, "ret"    # Z
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsAuthenServiceL$1;->val$callback:Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    .line 139
    return-void
.end method
