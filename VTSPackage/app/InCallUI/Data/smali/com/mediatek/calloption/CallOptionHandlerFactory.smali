.class public abstract Lcom/mediatek/calloption/CallOptionHandlerFactory;
.super Ljava/lang/Object;
.source "CallOptionHandlerFactory.java"


# instance fields
.field protected mEmergencyCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mFinalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mFirstCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mInternationalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mInternetCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mIpCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mSimSelectionCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mSimStatusCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mVideoCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

.field protected mVoiceMailCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/mediatek/calloption/FirstCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/calloption/FirstCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mFirstCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 18
    new-instance v0, Lcom/mediatek/calloption/EmergencyCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/calloption/EmergencyCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mEmergencyCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 19
    new-instance v0, Lcom/mediatek/calloption/FinalCallOptionHandler;

    invoke-direct {v0}, Lcom/mediatek/calloption/FinalCallOptionHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mFinalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 20
    invoke-virtual {p0}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->createHandlerPrototype()V

    .line 21
    return-void
.end method


# virtual methods
.method protected abstract createHandlerPrototype()V
.end method

.method public getEmergencyCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mEmergencyCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getFinalCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mFinalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getFirstCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mFirstCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getInternationalCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mInternationalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getInternetCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mInternetCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getIpCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mIpCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getSimSelectionCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mSimSelectionCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getSimStatusCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mSimStatusCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getVideoCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mVideoCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public getVoiceMailCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mVoiceMailCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    return-object v0
.end method

.method public setEmergencyCallOptionHandler(Lcom/mediatek/calloption/CallOptionBaseHandler;)V
    .locals 0
    .param p1, "emergencyCallOptionHandler"    # Lcom/mediatek/calloption/CallOptionBaseHandler;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mEmergencyCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 67
    return-void
.end method

.method public setInternationalCallOptionHandler(Lcom/mediatek/calloption/CallOptionBaseHandler;)V
    .locals 0
    .param p1, "internationalCallOptionHandler"    # Lcom/mediatek/calloption/CallOptionBaseHandler;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mediatek/calloption/CallOptionHandlerFactory;->mInternationalCallOptionHandler:Lcom/mediatek/calloption/CallOptionBaseHandler;

    .line 71
    return-void
.end method
