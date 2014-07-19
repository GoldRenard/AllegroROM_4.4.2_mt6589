.class Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;
.implements Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneNumberServiceListener"
.end annotation


# instance fields
.field private final mCallId:I

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;I)V
    .locals 0
    .param p2, "callId"    # I

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput p2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:I

    .line 271
    return-void
.end method


# virtual methods
.method public onImageFetchComplete(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/incallui/ContactInfoCache;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public onPhoneNumberInfoComplete(Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;)V
    .locals 7
    .param p1, "info"    # Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;

    .prologue
    .line 278
    if-nez p1, :cond_1

    .line 279
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Contact lookup done. Remote contact not found."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:I

    # invokes: Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V
    invoke-static {v5, v6}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;I)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 285
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 286
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 287
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getPhoneType()I

    move-result v3

    .line 288
    .local v3, "type":I
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, "label":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 290
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 296
    :goto_1
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 297
    .local v2, "oldEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v2, :cond_2

    .line 302
    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 306
    :cond_2
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->isBusiness()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 307
    # getter for: Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Business has no image. Using default."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 312
    :cond_3
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:I

    # invokes: Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    invoke-static {v5, v6, v0}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 316
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 318
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:I

    # invokes: Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V
    invoke-static {v5, v6}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;I)V

    goto/16 :goto_0

    .line 292
    .end local v2    # "oldEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_4
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    # getter for: Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 294
    .local v4, "typeStr":Ljava/lang/CharSequence;
    if-nez v4, :cond_5

    const/4 v5, 0x0

    :goto_2
    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method
