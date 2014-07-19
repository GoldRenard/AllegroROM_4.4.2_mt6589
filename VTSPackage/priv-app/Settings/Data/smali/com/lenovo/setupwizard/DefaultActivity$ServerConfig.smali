.class public Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;
.super Ljava/lang/Object;
.source "DefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/setupwizard/DefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerConfig"
.end annotation


# instance fields
.field public bExp:Z

.field public bId:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0
    .param p1, "id"    # Z
    .param p2, "exp"    # Z

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bId:Z

    .line 454
    iput-boolean p2, p0, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bExp:Z

    .line 455
    return-void
.end method


# virtual methods
.method public isbExp()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bExp:Z

    return v0
.end method

.method public isbId()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bId:Z

    return v0
.end method

.method public setbExp(Z)V
    .locals 0
    .param p1, "bExp"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bExp:Z

    .line 467
    return-void
.end method

.method public setbId(Z)V
    .locals 0
    .param p1, "bId"    # Z

    .prologue
    .line 460
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bId:Z

    .line 461
    return-void
.end method
