.class Lcom/android/incallui/IncomingStrangerSave$1;
.super Ljava/lang/Object;
.source "IncomingStrangerSave.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/IncomingStrangerSave;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/IncomingStrangerSave;


# direct methods
.method constructor <init>(Lcom/android/incallui/IncomingStrangerSave;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/incallui/IncomingStrangerSave$1;->this$0:Lcom/android/incallui/IncomingStrangerSave;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/incallui/IncomingStrangerSave$1;->this$0:Lcom/android/incallui/IncomingStrangerSave;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 44
    return-void
.end method
