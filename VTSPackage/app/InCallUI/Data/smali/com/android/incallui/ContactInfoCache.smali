.class public Lcom/android/incallui/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;,
        Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;,
        Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;,
        Lcom/android/incallui/ContactInfoCache$FindInfoCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_UPDATE_PHOTO_FOR_CALL_STATE:I

.field private static final isRowProducts:Z

.field private static sCache:Lcom/android/incallui/ContactInfoCache;


# instance fields
.field private final mCallBacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    .line 70
    const-string v0, "ro.lenovo.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/ContactInfoCache;->isRowProducts:Z

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    .line 67
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Lcom/android/incalluibind/ServiceFactory;->newPhoneNumberService(Landroid/content/Context;)Lcom/android/incallui/service/PhoneNumberService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/ContactInfoCache;Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfo;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;
    .param p1, "x1"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "x2"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfo;ZZ)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/ContactInfoCache;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/ContactInfoCache;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/ContactInfoCache;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method public static buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "isIncoming"    # Z

    .prologue
    .line 120
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 123
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 124
    .local v1, "info":Lcom/android/internal/telephony/CallerInfo;
    sget-object v2, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v2

    invoke-static {p0, v1, v0, v2, p2}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 129
    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 130
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 134
    :cond_0
    return-object v0
.end method

.method private buildEntry(Landroid/content/Context;ILcom/android/internal/telephony/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callId"    # I
    .param p3, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p4, "presentation"    # I
    .param p5, "isIncoming"    # Z

    .prologue
    const v7, 0x7f02010d

    .line 382
    const/4 v2, 0x0

    .line 384
    .local v2, "photo":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    .line 385
    .local v0, "cce":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-static {p1, p3, v0, p4, p5}, Lcom/android/incallui/ContactInfoCache;->populateCacheEntry(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V

    .line 388
    iget v3, p3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v3, :cond_1

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p3, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 423
    :cond_0
    :goto_0
    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 424
    return-object v0

    .line 390
    :cond_1
    iget-boolean v3, p3, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v3, :cond_3

    .line 391
    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 392
    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 395
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 400
    :cond_3
    iget-wide v3, p3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 402
    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 407
    :cond_4
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 408
    .local v1, "personUri":Landroid/net/Uri;
    sget-object v3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- got personUri: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', based on info.person_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p3, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    if-nez v1, :cond_5

    .line 412
    sget-object v3, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v4, "personUri is null. Just use unknown picture."

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 419
    :cond_5
    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private clearCallbacks(I)V
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    return-void
.end method

.method private findInfoQueryComplete(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfo;ZZ)V
    .locals 8
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;
    .param p3, "isIncoming"    # Z
    .param p4, "didLocalLookup"    # Z

    .prologue
    .line 212
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v2

    .line 213
    .local v2, "callId":I
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v4

    .line 214
    .local v4, "presentationMode":I
    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    sget v4, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/ContactInfoCache;->buildEntry(Landroid/content/Context;ILcom/android/internal/telephony/CallerInfo;IZ)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v6

    .line 222
    .local v6, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 226
    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCnapName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 235
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    invoke-direct {p0, v2, v6}, Lcom/android/incallui/ContactInfoCache;->sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 238
    if-eqz p4, :cond_3

    .line 239
    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_4

    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    if-eqz v0, :cond_4

    .line 241
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup. Local contacts miss, checking remote"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v7, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;

    invoke-direct {v7, p0, v2}, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;-><init>(Lcom/android/incallui/ContactInfoCache;I)V

    .line 243
    .local v7, "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mPhoneNumberService:Lcom/android/incallui/service/PhoneNumberService;

    iget-object v1, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {v0, v1, v7, v7, p3}, Lcom/android/incallui/service/PhoneNumberService;->getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V

    .line 263
    .end local v7    # "listener":Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
    :cond_3
    :goto_0
    return-void

    .line 245
    :cond_4
    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 246
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup. Local contact found, starting image load"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->personUri:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v0, v1, v3, p0, v5}, Lcom/android/incallui/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/incallui/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_5
    iget-boolean v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_6

    .line 253
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Local contact found, no image."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V

    goto :goto_0

    .line 254
    :cond_6
    iget-object v0, v6, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 255
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Special contact type."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_7
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v1, "Contact lookup done. Local contact not found and no remote lookup service available."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 75
    const-class v1, Lcom/android/incallui/ContactInfoCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/android/incallui/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/incallui/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;

    .line 78
    :cond_0
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->sCache:Lcom/android/incallui/ContactInfoCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getPresentationString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "presentation"    # I

    .prologue
    .line 587
    const v1, 0x7f0a0140

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 588
    .local v0, "name":Ljava/lang/String;
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    if-ne p1, v1, :cond_1

    .line 589
    const v1, 0x7f0a0141

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    :cond_0
    :goto_0
    return-object v0

    .line 590
    :cond_1
    sget v1, Lcom/android/services/telephony/common/Call;->PRESENTATION_PAYPHONE:I

    if-ne p1, v1, :cond_0

    .line 591
    const v1, 0x7f0a0142

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private inCarMode()Z
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    return v0
.end method

.method private isSameNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "n1"    # Ljava/lang/String;
    .param p2, "n2"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 644
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 645
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 648
    goto :goto_0

    .line 650
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 651
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 654
    goto :goto_0

    .line 656
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 659
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "n1_1":Ljava/lang/String;
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "n2_1":Ljava/lang/String;
    sget-object v2, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isSameNumber] n1_1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", n2_1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public static populateCacheEntry(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;IZ)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "cce"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3, "presentation"    # I
    .param p4, "isIncoming"    # Z

    .prologue
    .line 432
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const/4 v1, 0x0

    .line 434
    .local v1, "displayName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 435
    .local v2, "displayNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .line 436
    .local v0, "displayLocation":Ljava/lang/String;
    const/4 v4, 0x0

    .line 437
    .local v4, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 461
    .local v3, "isSipCall":Z
    iget-object v5, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 463
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 464
    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    .line 465
    const-string v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 466
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 470
    :cond_0
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 476
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 479
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 480
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> no name *or* number! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 542
    invoke-static {p0, v5}, Lcom/android/incallui/ContactInfoCache;->queryCitybyNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 545
    const v6, 0x7f0a036a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 547
    :cond_2
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "voiceMail = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iput-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 552
    iput-object v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    .line 553
    iput-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    .line 554
    iput-object v4, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    .line 555
    iput-boolean v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    .line 556
    return-void

    .line 481
    :cond_3
    sget v6, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-eq p3, v6, :cond_4

    .line 485
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 486
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_4
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 489
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 490
    iget-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v6, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 491
    move-object v2, v5

    .line 492
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> cnapName available: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_5
    move-object v2, v5

    .line 511
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==>  no name; falling back to number: displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 518
    :cond_6
    sget v6, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-eq p3, v6, :cond_7

    .line 522
    invoke-static {p0, p3}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 523
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==> valid name, but presentation not allowed! displayName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :cond_7
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 527
    move-object v2, v5

    .line 528
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 529
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  ==>  name is present in CallerInfo: displayName \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\', displayNumber \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static queryCitybyNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 597
    const-string v6, "com.lenovo.phonecity.provider"

    .line 598
    .local v6, "NUMBERLOCATION_AUTHORITY":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/number"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 599
    .local v7, "NUMBERLOCATION_CONTENT_URI":Landroid/net/Uri;
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCitybyNumber context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    if-nez p0, :cond_0

    .line 601
    const-string v8, " "

    .line 636
    :goto_0
    return-object v8

    .line 603
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 605
    .local v11, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 606
    const-string v8, " "

    goto :goto_0

    .line 609
    :cond_1
    sget-boolean v0, Lcom/android/incallui/ContactInfoCache;->isRowProducts:Z

    if-eqz v0, :cond_4

    .line 610
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "com.lenovo.location.service"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "locations"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 615
    .local v14, "uriBuilder":Landroid/net/Uri$Builder;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 619
    .end local v14    # "uriBuilder":Landroid/net/Uri$Builder;
    .local v1, "uri":Landroid/net/Uri;
    :goto_1
    const/4 v0, 0x1

    new-array v12, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "CITY"

    aput-object v2, v12, v0

    .line 620
    .local v12, "projection":[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v13, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "city"

    aput-object v2, v13, v0

    .line 621
    .local v13, "projection_row":[Ljava/lang/String;
    sget-boolean v0, Lcom/android/incallui/ContactInfoCache;->isRowProducts:Z

    if-eqz v0, :cond_5

    const/4 v9, 0x2

    .line 622
    .local v9, "cityIndex":I
    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v2, Lcom/android/incallui/ContactInfoCache;->isRowProducts:Z

    if-eqz v2, :cond_6

    move-object v2, v13

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 624
    .local v10, "cur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 625
    .local v8, "city":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 627
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 631
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 634
    :cond_3
    sget-object v0, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryCitybyNumber city = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v8    # "city":Ljava/lang/String;
    .end local v9    # "cityIndex":I
    .end local v10    # "cur":Landroid/database/Cursor;
    .end local v12    # "projection":[Ljava/lang/String;
    .end local v13    # "projection_row":[Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_1

    .line 621
    .restart local v12    # "projection":[Ljava/lang/String;
    .restart local v13    # "projection_row":[Ljava/lang/String;
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .restart local v9    # "cityIndex":I
    :cond_6
    move-object v2, v12

    .line 622
    goto :goto_3

    .line 631
    .restart local v8    # "city":Ljava/lang/String;
    .restart local v10    # "cur":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private sendImageNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 571
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 572
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v1, :cond_0

    iget-object v3, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 573
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 574
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onImageLoadComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 577
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private sendInfoNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5
    .param p1, "callId"    # I
    .param p2, "entry"    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .prologue
    .line 562
    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 563
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v1, :cond_0

    .line 564
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .line 565
    .local v0, "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    .line 568
    .end local v0    # "callBack":Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method static updateCallerInformation(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 96
    .local v0, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getIdentification()Lcom/android/services/telephony/common/CallIdentification;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v1

    .line 98
    .local v1, "numberPresentation":I
    if-eqz v0, :cond_0

    .line 101
    sget v2, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-eq v1, v2, :cond_1

    .line 105
    invoke-static {p0, v1}, Lcom/android/incallui/ContactInfoCache;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    .line 106
    sget-object v2, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  presentation not allowed! display name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_0
    :goto_0
    return-object v0

    .line 110
    .restart local v0    # "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 376
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 377
    return-void
.end method

.method public findInfo(Lcom/android/services/telephony/common/CallIdentification;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V
    .locals 8
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "isIncoming"    # Z
    .param p3, "callback"    # Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;

    .prologue
    const/4 v5, 0x0

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 162
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v2

    .line 165
    .local v2, "callId":I
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 166
    .local v0, "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 169
    .local v1, "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    if-eqz v0, :cond_0

    .line 170
    sget-object v6, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact lookup. In memory cache hit; lookup "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v1, :cond_2

    const-string v4, "complete"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cacheEntry = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", identification.getNumber() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v4, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/incallui/ContactInfoCache;->isSameNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 176
    const/4 v1, 0x0

    .line 188
    :cond_0
    if-eqz v1, :cond_4

    .line 189
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    :goto_2
    return-void

    .end local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .end local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .end local v2    # "callId":I
    :cond_1
    move v4, v5

    .line 161
    goto :goto_0

    .line 170
    .restart local v0    # "cacheEntry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .restart local v1    # "callBacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;>;"
    .restart local v2    # "callId":I
    :cond_2
    const-string v4, "still running"

    goto :goto_1

    .line 178
    :cond_3
    invoke-interface {p3, v2, v0}, Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;->onContactInfoComplete(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 180
    if-nez v1, :cond_0

    goto :goto_2

    .line 192
    :cond_4
    sget-object v4, Lcom/android/incallui/ContactInfoCache;->TAG:Ljava/lang/String;

    const-string v6, "Contact lookup. In memory cache miss; searching provider."

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 195
    invoke-interface {v1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mCallBacks:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v4, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;

    invoke-direct {v6, p0, p2}, Lcom/android/incallui/ContactInfoCache$FindInfoCallback;-><init>(Lcom/android/incallui/ContactInfoCache;Z)V

    invoke-static {v4, p1, v6}, Lcom/android/incallui/CallerInfoUtils;->getCallerInfoForCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 207
    .local v3, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    invoke-direct {p0, p1, v3, p2, v5}, Lcom/android/incallui/ContactInfoCache;->findInfoQueryComplete(Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfo;ZZ)V

    goto :goto_2
.end method

.method public getInfo(I)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .locals 2
    .param p1, "callId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-object v0
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 335
    const-string v2, "Image load complete with context: "

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    check-cast p4, Ljava/lang/Integer;

    .end local p4    # "cookie":Ljava/lang/Object;
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 340
    .local v0, "callId":I
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mInfoMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    .line 342
    .local v1, "entry":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-nez v1, :cond_0

    .line 343
    const-string v2, "Image Load received for empty search entry."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V

    .line 369
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v2, "setting photo for entry: "

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    if-eqz p2, :cond_1

    .line 351
    const-string v2, "direct drawable: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 352
    iput-object p2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    .line 367
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/ContactInfoCache;->sendImageNotifications(ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    .line 368
    invoke-direct {p0, v0}, Lcom/android/incallui/ContactInfoCache;->clearCallbacks(I)V

    goto :goto_0

    .line 353
    :cond_1
    if-eqz p3, :cond_2

    .line 354
    const-string v2, "photo icon: "

    invoke-static {p0, v2, p3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 355
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 357
    :cond_2
    const-string v2, "unknown photo"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-direct {p0}, Lcom/android/incallui/ContactInfoCache;->inCarMode()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 360
    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 362
    :cond_3
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
