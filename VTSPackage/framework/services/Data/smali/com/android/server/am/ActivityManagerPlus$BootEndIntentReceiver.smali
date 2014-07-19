.class Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;
.super Landroid/content/IIntentReceiver$Stub;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BootEndIntentReceiver"
.end annotation


# instance fields
.field private mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

.field private mCause:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerPlus;Ljava/lang/String;)V
    .locals 1
    .param p1, "amPlus"    # Lcom/android/server/am/ActivityManagerPlus;
    .param p2, "cause"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 621
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 618
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

    .line 619
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    .line 622
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

    .line 623
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    .line 624
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;->mAmPlus:Lcom/android/server/am/ActivityManagerPlus;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerPlus$BootEndIntentReceiver;->mCause:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerPlus;->monitorBootReceiver(ZLjava/lang/String;)V

    .line 633
    return-void
.end method
