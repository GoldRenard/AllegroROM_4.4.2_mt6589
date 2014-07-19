.class Lcom/android/incallui/AnswerPresenter$1;
.super Ljava/lang/Object;
.source "AnswerPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerPresenter;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerPresenter;I)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    iput p2, p0, Lcom/android/incallui/AnswerPresenter$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactInfoComplete entry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    iget v1, p0, Lcom/android/incallui/AnswerPresenter$1;->val$type:I

    const/4 v2, 0x0

    # invokes: Lcom/android/incallui/AnswerPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    invoke-static {v0, p2, v1, v2}, Lcom/android/incallui/AnswerPresenter;->access$000(Lcom/android/incallui/AnswerPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 585
    return-void
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    # getter for: Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/AnswerPresenter;->access$100(Lcom/android/incallui/AnswerPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    # getter for: Lcom/android/incallui/AnswerPresenter;->mCall:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/AnswerPresenter;->access$100(Lcom/android/incallui/AnswerPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/incallui/AnswerPresenter$1;->this$0:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter$AnswerUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/android/incallui/AnswerPresenter$AnswerUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
