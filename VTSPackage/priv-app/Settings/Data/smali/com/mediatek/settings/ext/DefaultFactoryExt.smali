.class public Lcom/mediatek/settings/ext/DefaultFactoryExt;
.super Ljava/lang/Object;
.source "DefaultFactoryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IFactoryExt;


# static fields
.field private static final MASTER_CLEAR:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getCheckBoxStatus()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(I)Z
    .locals 1
    .param p1, "eraseInternalData"    # I

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public onResetPhone(Landroid/app/Activity;IZ)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "eraseInternalData"    # I
    .param p3, "eraseSdCard"    # Z

    .prologue
    .line 44
    if-eqz p3, :cond_0

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 47
    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 49
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public setLayout(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "lists":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    return-void
.end method

.method public updateContentViewLayout(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "siberViewId"    # I

    .prologue
    .line 34
    return-void
.end method
