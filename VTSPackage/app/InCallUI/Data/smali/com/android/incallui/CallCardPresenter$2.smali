.class Lcom/android/incallui/CallCardPresenter$2;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/services/telephony/common/CallIdentification;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;

.field final synthetic val$identification:Lcom/android/services/telephony/common/CallIdentification;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;ILcom/android/services/telephony/common/CallIdentification;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    iput p2, p0, Lcom/android/incallui/CallCardPresenter$2;->val$type:I

    iput-object p3, p0, Lcom/android/incallui/CallCardPresenter$2;->val$identification:Lcom/android/services/telephony/common/CallIdentification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 4
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    iget v1, p0, Lcom/android/incallui/CallCardPresenter$2;->val$type:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter$2;->val$identification:Lcom/android/services/telephony/common/CallIdentification;

    # invokes: Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZLcom/android/services/telephony/common/CallIdentification;)V
    invoke-static {v0, p2, v1, v2, v3}, Lcom/android/incallui/CallCardPresenter;->access$000(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZLcom/android/services/telephony/common/CallIdentification;)V

    .line 429
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 430
    # getter for: Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 435
    :cond_1
    return-void
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$200(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 445
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    # getter for: Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/services/telephony/common/Call;
    invoke-static {v0}, Lcom/android/incallui/CallCardPresenter;->access$300(Lcom/android/incallui/CallCardPresenter;)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$2;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondaryImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
