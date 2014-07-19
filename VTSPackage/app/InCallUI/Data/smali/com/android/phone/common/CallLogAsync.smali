.class public Lcom/android/phone/common/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;,
        Lcom/android/phone/common/CallLogAsync$AddCallTask;,
        Lcom/android/phone/common/CallLogAsync$OnInsertCompleteListener;,
        Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;,
        Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;,
        Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogAsync"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/common/CallLogAsync;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/common/CallLogAsync;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/common/CallLogAsync;->assertUiThread()V

    return-void
.end method

.method private assertUiThread()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    return-void
.end method


# virtual methods
.method public addCall(Lcom/android/phone/common/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    .locals 3
    .param p1, "args"    # Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/phone/common/CallLogAsync;->assertUiThread()V

    .line 172
    new-instance v0, Lcom/android/phone/common/CallLogAsync$AddCallTask;

    invoke-direct {v0, p0}, Lcom/android/phone/common/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/common/CallLogAsync;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public addCall(Lcom/android/phone/common/CallLogAsync$AddCallArgs;Lcom/android/phone/common/CallLogAsync$OnInsertCompleteListener;)Landroid/os/AsyncTask;
    .locals 3
    .param p1, "args"    # Lcom/android/phone/common/CallLogAsync$AddCallArgs;
    .param p2, "listener"    # Lcom/android/phone/common/CallLogAsync$OnInsertCompleteListener;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/android/phone/common/CallLogAsync;->assertUiThread()V

    .line 179
    new-instance v0, Lcom/android/phone/common/CallLogAsync$AddCallTask;

    invoke-direct {v0, p0, p2}, Lcom/android/phone/common/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/common/CallLogAsync;Lcom/android/phone/common/CallLogAsync$OnInsertCompleteListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/common/CallLogAsync$AddCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public getLastOutgoingCall(Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;)Landroid/os/AsyncTask;
    .locals 3
    .param p1, "args"    # Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/phone/common/CallLogAsync;->assertUiThread()V

    .line 205
    new-instance v0, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;

    iget-object v1, p1, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;->callback:Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallTask;-><init>(Lcom/android/phone/common/CallLogAsync;Lcom/android/phone/common/CallLogAsync$OnLastOutgoingCallComplete;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/common/CallLogAsync$GetLastOutgoingCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
