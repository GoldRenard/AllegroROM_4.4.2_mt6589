.class Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;
.super Landroid/os/AsyncTask;
.source "SimInfoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimInfoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Line1NumberTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final FAIL:I = 0x0

.field private static final SUCCESS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimInfoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimInfoEditor;)V
    .locals 0

    .prologue
    .line 450
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 450
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 462
    const/4 v1, 0x0

    .line 464
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # getter for: Lcom/mediatek/gemini/SimInfoEditor;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-static {v2}, Lcom/mediatek/gemini/SimInfoEditor;->access$400(Lcom/mediatek/gemini/SimInfoEditor;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, p1, v4

    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # getter for: Lcom/mediatek/gemini/SimInfoEditor;->mSlotId:I
    invoke-static {v5}, Lcom/mediatek/gemini/SimInfoEditor;->access$300(Lcom/mediatek/gemini/SimInfoEditor;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/common/telephony/ITelephonyEx;->setLine1Number(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 468
    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 470
    const-string v2, "SimInfoEditor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set number result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # invokes: Lcom/mediatek/gemini/SimInfoEditor;->getSimNumber()Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/gemini/SimInfoEditor;->access$500(Lcom/mediatek/gemini/SimInfoEditor;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SimInfoEditor"

    const-string v3, "get line 1 number error"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 450
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 492
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # getter for: Lcom/mediatek/gemini/SimInfoEditor;->mSimNumber:Landroid/preference/EditTextPreference;
    invoke-static {v0}, Lcom/mediatek/gemini/SimInfoEditor;->access$600(Lcom/mediatek/gemini/SimInfoEditor;)Landroid/preference/EditTextPreference;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/gemini/simui/CommonUtils;->phoneNumString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # invokes: Lcom/mediatek/gemini/SimInfoEditor;->updateSimNumber(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/mediatek/gemini/SimInfoEditor;->access$700(Lcom/mediatek/gemini/SimInfoEditor;Ljava/lang/String;)V

    .line 497
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 456
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 458
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 4
    .param p1, "result"    # [Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x0

    .line 476
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 477
    aget-object v1, p1, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 478
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0904e6

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 479
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simid"

    iget-object v2, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # getter for: Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J
    invoke-static {v2}, Lcom/mediatek/gemini/SimInfoEditor;->access$100(Lcom/mediatek/gemini/SimInfoEditor;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 481
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 482
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 484
    :cond_0
    iget-object v1, p0, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0904e5

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 450
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/gemini/SimInfoEditor$Line1NumberTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
