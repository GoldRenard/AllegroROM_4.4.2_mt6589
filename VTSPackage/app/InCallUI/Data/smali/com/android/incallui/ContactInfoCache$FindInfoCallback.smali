.class Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FindInfoCallback"
.end annotation


# instance fields
.field private final mIsIncoming:Z

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method public constructor <init>(Lcom/android/incallui/ContactInfoCache;Z)V
    .locals 0
    .param p2, "isIncoming"    # Z

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-boolean p2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    .line 142
    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 146
    move-object v0, p2

    check-cast v0, Lcom/android/services/telephony/common/CallIdentification;

    .line 147
    .local v0, "identification":Lcom/android/services/telephony/common/CallIdentification;
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-boolean v2, p0, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;->mIsIncoming:Z

    const/4 v3, 0x1

    # invokes: Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfo;ZZ)V
    invoke-static {v1, v0, p3, v2, v3}, Lcom/android/incallui/ContactInfoCache;->access$000(Lcom/android/incallui/ContactInfoCache;Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfo;ZZ)V

    .line 148
    return-void
.end method
