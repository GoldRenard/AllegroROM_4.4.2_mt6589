.class Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;
.super Landroid/os/AsyncTask;
.source "AudioProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/AudioProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESET_ONGOING:I = 0x1

.field private static final RESET_SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/audioprofile/AudioProfileSettings;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/audioprofile/AudioProfileSettings;Lcom/android/settings/audioprofile/AudioProfileSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/audioprofile/AudioProfileSettings;
    .param p2, "x1"    # Lcom/android/settings/audioprofile/AudioProfileSettings$1;

    .prologue
    .line 729
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;-><init>(Lcom/android/settings/audioprofile/AudioProfileSettings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "arg"    # [Ljava/lang/String;

    .prologue
    .line 741
    const/4 v0, 0x1

    .line 742
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    # getter for: Lcom/android/settings/audioprofile/AudioProfileSettings;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/AudioProfileSettings;->access$300(Lcom/android/settings/audioprofile/AudioProfileSettings;)Lcom/mediatek/audioprofile/AudioProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->reset()V

    .line 743
    const/4 v0, 0x0

    .line 744
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 729
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 755
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;->this$0:Lcom/android/settings/audioprofile/AudioProfileSettings;

    # getter for: Lcom/android/settings/audioprofile/AudioProfileSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/audioprofile/AudioProfileSettings;->access$400(Lcom/android/settings/audioprofile/AudioProfileSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 758
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 729
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/audioprofile/AudioProfileSettings$ResetTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
