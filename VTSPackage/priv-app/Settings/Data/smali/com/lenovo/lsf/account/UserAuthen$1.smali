.class final Lcom/lenovo/lsf/account/UserAuthen$1;
.super Ljava/lang/Object;
.source "UserAuthen.java"

# interfaces
.implements Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 0
    .param p1, "ret"    # Z
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 192
    # setter for: Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;
    invoke-static {p2}, Lcom/lenovo/lsf/account/UserAuthen;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 193
    return-void
.end method
