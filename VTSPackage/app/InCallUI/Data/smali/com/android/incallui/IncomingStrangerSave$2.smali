.class Lcom/android/incallui/IncomingStrangerSave$2;
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

.field final synthetic val$callNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/incallui/IncomingStrangerSave;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/incallui/IncomingStrangerSave$2;->this$0:Lcom/android/incallui/IncomingStrangerSave;

    iput-object p2, p0, Lcom/android/incallui/IncomingStrangerSave$2;->val$callNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 32
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 33
    .local v0, "intentInsert":Landroid/content/Intent;
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/incallui/IncomingStrangerSave$2;->val$callNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    iget-object v1, p0, Lcom/android/incallui/IncomingStrangerSave$2;->this$0:Lcom/android/incallui/IncomingStrangerSave;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .end local v0    # "intentInsert":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/IncomingStrangerSave$2;->this$0:Lcom/android/incallui/IncomingStrangerSave;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 38
    return-void

    .line 35
    :catch_0
    move-exception v1

    goto :goto_0
.end method
