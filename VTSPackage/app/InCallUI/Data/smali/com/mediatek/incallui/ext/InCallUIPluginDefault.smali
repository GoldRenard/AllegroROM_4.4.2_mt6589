.class public Lcom/mediatek/incallui/ext/InCallUIPluginDefault;
.super Landroid/content/ContextWrapper;
.source "InCallUIPluginDefault.java"

# interfaces
.implements Lcom/mediatek/incallui/ext/IInCallUIPlugin;


# instance fields
.field private mBaseContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v0, p0, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->mBaseContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 48
    iput-object p1, p0, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->mBaseContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "InCallUI"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method


# virtual methods
.method public getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;
    .locals 1

    .prologue
    .line 67
    const-string v0, "getCallButtonExtension DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/mediatek/incallui/ext/CallButtonExtension;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/CallButtonExtension;-><init>()V

    return-object v0
.end method

.method public getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;
    .locals 1

    .prologue
    .line 57
    const-string v0, "getCallCardExtension DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 58
    new-instance v0, Lcom/mediatek/incallui/ext/CallCardExtension;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/CallCardExtension;-><init>()V

    return-object v0
.end method

.method public getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;
    .locals 1

    .prologue
    .line 72
    const-string v0, "getInCallUIExtension DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 73
    new-instance v0, Lcom/mediatek/incallui/ext/InCallUIExtension;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/InCallUIExtension;-><init>()V

    return-object v0
.end method

.method public getNotificationExtension()Lcom/mediatek/incallui/ext/NotificationExtension;
    .locals 2

    .prologue
    .line 77
    const-string v0, "getNotificationExtension DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/mediatek/incallui/ext/NotificationExtension;

    iget-object v1, p0, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->mBaseContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/incallui/ext/NotificationExtension;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;
    .locals 1

    .prologue
    .line 62
    const-string v0, "getVTCallExtension DEFAULT"

    invoke-static {v0}, Lcom/mediatek/incallui/ext/InCallUIPluginDefault;->log(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/mediatek/incallui/ext/VTCallExtension;

    invoke-direct {v0}, Lcom/mediatek/incallui/ext/VTCallExtension;-><init>()V

    return-object v0
.end method
