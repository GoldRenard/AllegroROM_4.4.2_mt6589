.class public Lcom/lenovo/setupwizard/beans/SetupConfig;
.super Ljava/lang/Object;
.source "SetupConfig.java"


# static fields
.field private static setupConfig:Lcom/lenovo/setupwizard/beans/SetupConfig;


# instance fields
.field private isGemini:Z

.field private lenovoExp:Z

.field private lenovoId:Z

.field private topBg:Ljava/lang/String;

.field private topImgs:[Ljava/lang/String;

.field private useTopImgBg:Z

.field private zeroData:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->isGemini:Z

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->zeroData:Z

    .line 11
    iput-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->useTopImgBg:Z

    .line 12
    iput-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->lenovoId:Z

    .line 13
    iput-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->lenovoExp:Z

    .line 17
    return-void
.end method

.method public static getInstance()Lcom/lenovo/setupwizard/beans/SetupConfig;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/setupwizard/beans/SetupConfig;->setupConfig:Lcom/lenovo/setupwizard/beans/SetupConfig;

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/lenovo/setupwizard/utils/MUtil;->getConfig()Lcom/lenovo/setupwizard/beans/SetupConfig;

    move-result-object v0

    sput-object v0, Lcom/lenovo/setupwizard/beans/SetupConfig;->setupConfig:Lcom/lenovo/setupwizard/beans/SetupConfig;

    .line 23
    :cond_0
    sget-object v0, Lcom/lenovo/setupwizard/beans/SetupConfig;->setupConfig:Lcom/lenovo/setupwizard/beans/SetupConfig;

    return-object v0
.end method


# virtual methods
.method public getTopBg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->topBg:Ljava/lang/String;

    return-object v0
.end method

.method public getTopImgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->topImgs:[Ljava/lang/String;

    return-object v0
.end method

.method public isGemini()Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->isGemini:Z

    return v0
.end method

.method public isLenovoExp()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->lenovoExp:Z

    return v0
.end method

.method public isLenovoId()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->lenovoId:Z

    return v0
.end method

.method public isUseTopImgBg()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->useTopImgBg:Z

    return v0
.end method

.method public isZeroData()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->zeroData:Z

    return v0
.end method

.method public setGemini(Z)V
    .locals 0
    .param p1, "isGemini"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->isGemini:Z

    .line 32
    return-void
.end method

.method public setLenovoExp(Z)V
    .locals 0
    .param p1, "lenovoExp"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->lenovoExp:Z

    .line 80
    return-void
.end method

.method public setLenovoId(Z)V
    .locals 0
    .param p1, "lenovoId"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->lenovoId:Z

    .line 72
    return-void
.end method

.method public setTopBg(Ljava/lang/String;)V
    .locals 0
    .param p1, "topBg"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->topBg:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setTopImgs([Ljava/lang/String;)V
    .locals 0
    .param p1, "topImgs"    # [Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->topImgs:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setUseTopImgBg(Z)V
    .locals 0
    .param p1, "useTopImgBg"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->useTopImgBg:Z

    .line 64
    return-void
.end method

.method public setZeroData(Z)V
    .locals 0
    .param p1, "zeroData"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/lenovo/setupwizard/beans/SetupConfig;->zeroData:Z

    .line 40
    return-void
.end method
