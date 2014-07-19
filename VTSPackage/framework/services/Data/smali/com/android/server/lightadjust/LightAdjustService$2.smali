.class Lcom/android/server/lightadjust/LightAdjustService$2;
.super Ljava/lang/Object;
.source "LightAdjustService.java"

# interfaces
.implements Lcom/android/server/TwilightService$TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/LightAdjustService;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjustService$2;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjustService$2;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->updateNightMode()V
    invoke-static {v0}, Lcom/android/server/lightadjust/LightAdjustService;->access$700(Lcom/android/server/lightadjust/LightAdjustService;)V

    .line 154
    return-void
.end method
