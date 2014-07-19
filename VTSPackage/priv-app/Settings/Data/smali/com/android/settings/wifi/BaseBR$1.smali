.class Lcom/android/settings/wifi/BaseBR$1;
.super Ljava/lang/Object;
.source "BaseBR.java"

# interfaces
.implements Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/BaseBR;->checkEnv()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/BaseBR;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/BaseBR;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/wifi/BaseBR$1;->this$0:Lcom/android/settings/wifi/BaseBR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 50
    return-void
.end method
