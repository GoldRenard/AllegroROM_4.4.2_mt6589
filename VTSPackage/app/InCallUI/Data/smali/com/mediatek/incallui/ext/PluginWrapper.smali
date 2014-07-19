.class Lcom/mediatek/incallui/ext/PluginWrapper;
.super Ljava/lang/Object;
.source "PluginWrapper.java"

# interfaces
.implements Lcom/mediatek/incallui/ext/IInCallUIPlugin;


# instance fields
.field private mCallButtonExtContainer:Lcom/mediatek/incallui/ext/CallButtonExtContainer;

.field private mCallCardExtContainer:Lcom/mediatek/incallui/ext/CallCardExtContainer;

.field private mInCallUIExtContainer:Lcom/mediatek/incallui/ext/InCallUIExtContainer;

.field private mNotificationExtContainer:Lcom/mediatek/incallui/ext/NotificationExtContainer;

.field private mSize:I

.field private mVTCallExtContainer:Lcom/mediatek/incallui/ext/VTCallExtContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallCardExtContainer:Lcom/mediatek/incallui/ext/CallCardExtContainer;

    .line 9
    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mVTCallExtContainer:Lcom/mediatek/incallui/ext/VTCallExtContainer;

    .line 10
    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallButtonExtContainer:Lcom/mediatek/incallui/ext/CallButtonExtContainer;

    .line 11
    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mInCallUIExtContainer:Lcom/mediatek/incallui/ext/InCallUIExtContainer;

    .line 12
    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mNotificationExtContainer:Lcom/mediatek/incallui/ext/NotificationExtContainer;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mSize:I

    .line 16
    new-instance v0, Lcom/mediatek/incallui/ext/CallCardExtContainer;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/CallCardExtContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallCardExtContainer:Lcom/mediatek/incallui/ext/CallCardExtContainer;

    .line 17
    new-instance v0, Lcom/mediatek/incallui/ext/VTCallExtContainer;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/VTCallExtContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mVTCallExtContainer:Lcom/mediatek/incallui/ext/VTCallExtContainer;

    .line 18
    new-instance v0, Lcom/mediatek/incallui/ext/CallButtonExtContainer;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/CallButtonExtContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallButtonExtContainer:Lcom/mediatek/incallui/ext/CallButtonExtContainer;

    .line 19
    new-instance v0, Lcom/mediatek/incallui/ext/InCallUIExtContainer;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/InCallUIExtContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mInCallUIExtContainer:Lcom/mediatek/incallui/ext/InCallUIExtContainer;

    .line 20
    new-instance v0, Lcom/mediatek/incallui/ext/NotificationExtContainer;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/NotificationExtContainer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mNotificationExtContainer:Lcom/mediatek/incallui/ext/NotificationExtContainer;

    .line 21
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public addExtensions(Lcom/mediatek/incallui/ext/IInCallUIPlugin;)V
    .locals 2
    .param p1, "plugin"    # Lcom/mediatek/incallui/ext/IInCallUIPlugin;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallCardExtContainer:Lcom/mediatek/incallui/ext/CallCardExtContainer;

    invoke-interface {p1}, Lcom/mediatek/incallui/ext/IInCallUIPlugin;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/ext/CallCardExtContainer;->add(Lcom/mediatek/incallui/ext/CallCardExtension;)V

    .line 28
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mVTCallExtContainer:Lcom/mediatek/incallui/ext/VTCallExtContainer;

    invoke-interface {p1}, Lcom/mediatek/incallui/ext/IInCallUIPlugin;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/ext/VTCallExtContainer;->add(Lcom/mediatek/incallui/ext/VTCallExtension;)V

    .line 29
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallButtonExtContainer:Lcom/mediatek/incallui/ext/CallButtonExtContainer;

    invoke-interface {p1}, Lcom/mediatek/incallui/ext/IInCallUIPlugin;->getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/ext/CallButtonExtContainer;->add(Lcom/mediatek/incallui/ext/CallButtonExtension;)V

    .line 30
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mInCallUIExtContainer:Lcom/mediatek/incallui/ext/InCallUIExtContainer;

    invoke-interface {p1}, Lcom/mediatek/incallui/ext/IInCallUIPlugin;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/ext/InCallUIExtContainer;->add(Lcom/mediatek/incallui/ext/InCallUIExtension;)V

    .line 31
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mNotificationExtContainer:Lcom/mediatek/incallui/ext/NotificationExtContainer;

    invoke-interface {p1}, Lcom/mediatek/incallui/ext/IInCallUIPlugin;->getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/ext/NotificationExtContainer;->add(Lcom/mediatek/incallui/ext/NotificationExtension;)V

    .line 33
    iget v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mSize:I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addExtensions, plugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/ext/PluginWrapper;->log(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallButtonExtContainer:Lcom/mediatek/incallui/ext/CallButtonExtContainer;

    return-object v0
.end method

.method public getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mCallCardExtContainer:Lcom/mediatek/incallui/ext/CallCardExtContainer;

    return-object v0
.end method

.method public getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mInCallUIExtContainer:Lcom/mediatek/incallui/ext/InCallUIExtContainer;

    return-object v0
.end method

.method public getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mNotificationExtContainer:Lcom/mediatek/incallui/ext/NotificationExtContainer;

    return-object v0
.end method

.method public getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mVTCallExtContainer:Lcom/mediatek/incallui/ext/VTCallExtContainer;

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/mediatek/incallui/ext/PluginWrapper;->mSize:I

    return v0
.end method
