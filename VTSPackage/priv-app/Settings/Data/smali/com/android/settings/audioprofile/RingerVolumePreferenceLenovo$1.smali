.class Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$1;
.super Ljava/lang/Object;
.source "RingerVolumePreferenceLenovo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$1;->this$0:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 395
    const/16 v0, 0x19

    if-eq p2, v0, :cond_0

    const/16 v0, 0x18

    if-ne p2, v0, :cond_1

    .line 397
    :cond_0
    const/4 v0, 0x1

    .line 399
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
