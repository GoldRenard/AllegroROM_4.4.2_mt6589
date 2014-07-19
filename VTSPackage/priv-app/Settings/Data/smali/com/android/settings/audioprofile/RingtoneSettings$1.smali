.class Lcom/android/settings/audioprofile/RingtoneSettings$1;
.super Landroid/os/Handler;
.source "RingtoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingtoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/RingtoneSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/RingtoneSettings;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/audioprofile/RingtoneSettings$1;->this$0:Lcom/android/settings/audioprofile/RingtoneSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :pswitch_0
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
