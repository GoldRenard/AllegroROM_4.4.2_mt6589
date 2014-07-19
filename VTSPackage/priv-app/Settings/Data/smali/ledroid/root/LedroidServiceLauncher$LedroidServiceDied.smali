.class Lledroid/root/LedroidServiceLauncher$LedroidServiceDied;
.super Ljava/lang/Object;
.source "LedroidServiceLauncher.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lledroid/root/LedroidServiceLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LedroidServiceDied"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lledroid/root/LedroidServiceLauncher$1;)V
    .locals 0
    .param p1, "x0"    # Lledroid/root/LedroidServiceLauncher$1;

    .prologue
    .line 240
    invoke-direct {p0}, Lledroid/root/LedroidServiceLauncher$LedroidServiceDied;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    # setter for: Lledroid/root/LedroidServiceLauncher;->sLedroidService:Lledroid/services/ILedroidService;
    invoke-static {v0}, Lledroid/root/LedroidServiceLauncher;->access$302(Lledroid/services/ILedroidService;)Lledroid/services/ILedroidService;

    .line 246
    :try_start_0
    invoke-static {}, Lledroid/root/LedroidServiceLauncher;->launchLedroidService()V
    :try_end_0
    .catch Lledroid/root/RootPermissionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method
