.class Lcom/android/incallui/StatusBarNotifier$2;
.super Ljava/lang/Object;
.source "StatusBarNotifier.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/StatusBarNotifier;->showNotification(Lcom/android/services/telephony/common/Call;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAllowFullScreenIntent:Z

.field final synthetic this$0:Lcom/android/incallui/StatusBarNotifier;

.field final synthetic val$allowFullScreenIntent:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/StatusBarNotifier;Z)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iput-boolean p2, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$allowFullScreenIntent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iget-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->val$allowFullScreenIntent:Z

    iput-boolean v0, p0, Lcom/android/incallui/StatusBarNotifier$2;->mAllowFullScreenIntent:Z

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 289
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 290
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier$2;->mAllowFullScreenIntent:Z

    # invokes: Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    invoke-static {v1, v0, p2, v2}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 296
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/StatusBarNotifier$2;->mAllowFullScreenIntent:Z

    .line 297
    return-void
.end method

.method public onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 301
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 302
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/incallui/StatusBarNotifier$2;->this$0:Lcom/android/incallui/StatusBarNotifier;

    iget-boolean v2, p0, Lcom/android/incallui/StatusBarNotifier$2;->mAllowFullScreenIntent:Z

    # invokes: Lcom/android/incallui/StatusBarNotifier;->buildAndSendNotification(Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    invoke-static {v1, v0, p2, v2}, Lcom/android/incallui/StatusBarNotifier;->access$100(Lcom/android/incallui/StatusBarNotifier;Lcom/android/services/telephony/common/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    .line 305
    :cond_0
    return-void
.end method
