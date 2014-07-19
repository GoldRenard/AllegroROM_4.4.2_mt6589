.class public Lcom/android/incallui/CallerInfoUtils;
.super Ljava/lang/Object;
.source "CallerInfoUtils.java"


# static fields
.field private static final CNAP_SPECIAL_CASE_NO:I = -0x1

.field private static final QUERY_TOKEN:I = -0x1

.field private static final TAG:Ljava/lang/String;

.field private static final VIEW_NOTIFICATION_ACTION:Ljava/lang/String; = "com.android.contacts.VIEW_NOTIFICATION"

.field private static final VIEW_NOTIFICATION_CLASS:Ljava/lang/String; = "com.android.contacts.ViewNotificationService"

.field private static final VIEW_NOTIFICATION_PACKAGE:Ljava/lang/String; = "com.android.contacts"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/incallui/CallerInfoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static buildCallerInfo(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)Lcom/android/internal/telephony/CallerInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;

    .prologue
    .line 74
    new-instance v0, Lcom/android/internal/telephony/CallerInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 78
    .local v0, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCnapName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 79
    iget-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumberPresentation()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 81
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCnapNamePresentation()I

    move-result v3

    iput v3, v0, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 83
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "number":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 85
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "numbers":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 87
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 91
    :cond_0
    iget v3, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {p0, v0, v1, v3}, Lcom/android/incallui/CallerInfoUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iput-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 94
    .end local v2    # "numbers":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method private static checkCnapSpecialCases(Ljava/lang/String;)I
    .locals 3
    .param p0, "n"    # Ljava/lang/String;

    .prologue
    .line 159
    const-string v0, "PRIVATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "P"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    :cond_0
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCnapSpecialCases, PRIVATE string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    .line 172
    :goto_0
    return v0

    .line 164
    :cond_1
    const-string v0, "UNAVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "UNA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "U"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 168
    :cond_2
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCnapSpecialCases, UNKNOWN string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget v0, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    goto :goto_0

    .line 171
    :cond_3
    sget-object v0, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCnapSpecialCases, normal str. number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCallerInfoForCall(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;)Lcom/android/internal/telephony/CallerInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "call"    # Lcom/android/services/telephony/common/CallIdentification;
    .param p2, "listener"    # Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;

    .prologue
    const/4 v8, 0x0

    const/4 v0, -0x1

    .line 46
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v7

    .line 47
    .local v7, "info":Lcom/android/internal/telephony/CallerInfo;
    iget-object v2, v7, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 51
    .local v2, "number":Ljava/lang/String;
    iget v1, v7, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-ne v1, v3, :cond_1

    .line 53
    sget-object v1, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    const-string v3, "==> Actually starting CallerInfoAsyncQuery.startQuery()..."

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getCallId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallList;->getCall(I)Lcom/android/services/telephony/common/Call;

    move-result-object v6

    .line 56
    .local v6, "c":Lcom/android/services/telephony/common/Call;
    if-nez v6, :cond_2

    .line 57
    .local v8, "isSipPhone":Z
    :cond_0
    :goto_0
    sget v1, Lcom/mediatek/phone/GeminiConstants;->SOLT_NUM:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_3

    if-nez v8, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/android/services/telephony/common/CallIdentification;->getSlotId()I

    move-result v5

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQueryEx(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    .line 70
    .end local v6    # "c":Lcom/android/services/telephony/common/Call;
    .end local v8    # "isSipPhone":Z
    :cond_1
    :goto_1
    return-object v7

    .line 56
    .restart local v6    # "c":Lcom/android/services/telephony/common/Call;
    :cond_2
    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getPhoneType()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 61
    .restart local v8    # "isSipPhone":Z
    :cond_3
    if-eqz v8, :cond_4

    move-object v1, p0

    move-object v3, p2

    move-object v4, p1

    move v5, v0

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQueryEx(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;I)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    goto :goto_1

    .line 65
    :cond_4
    invoke-static {v0, p0, v2, p2, p1}, Lcom/android/internal/telephony/CallerInfoAsyncQuery;->startQuery(ILandroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/internal/telephony/CallerInfoAsyncQuery;

    goto :goto_1
.end method

.method public static getPhoneNumber(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "identification"    # Lcom/android/services/telephony/common/CallIdentification;

    .prologue
    .line 213
    invoke-static {p0, p1}, Lcom/android/incallui/CallerInfoUtils;->buildCallerInfo(Landroid/content/Context;Lcom/android/services/telephony/common/CallIdentification;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 214
    .local v0, "ci":Lcom/android/internal/telephony/CallerInfo;
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    return-object v1
.end method

.method static modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    const v6, 0x7f0a0140

    .line 110
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, p2

    .line 150
    .end local p2    # "number":Ljava/lang/String;
    .local v2, "number":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 112
    .end local v2    # "number":Ljava/lang/String;
    .restart local p2    # "number":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyForSpecialCnapCases: initially, number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", presentation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ci "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050032

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "absentNumberValues":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-ne p3, v3, :cond_2

    .line 123
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 124
    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    iput v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 132
    :cond_2
    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_3

    iget v3, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    if-eq v3, p3, :cond_5

    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_ALLOWED:I

    if-ne p3, v3, :cond_5

    .line 135
    :cond_3
    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->checkCnapSpecialCases(Ljava/lang/String;)I

    move-result v1

    .line 136
    .local v1, "cnapSpecialCase":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5

    .line 138
    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_RESTRICTED:I

    if-ne v1, v3, :cond_6

    .line 139
    const v3, 0x7f0a0141

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 143
    :cond_4
    :goto_1
    sget-object v3, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialCnap: number="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; presentation now="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput v1, p1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 148
    .end local v1    # "cnapSpecialCase":I
    :cond_5
    sget-object v3, Lcom/android/incallui/CallerInfoUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "modifyForSpecialCnapCases: returning number string="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/android/incallui/CallerInfoUtils;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    .line 150
    .end local p2    # "number":Ljava/lang/String;
    .restart local v2    # "number":Ljava/lang/String;
    goto/16 :goto_0

    .line 140
    .end local v2    # "number":Ljava/lang/String;
    .restart local v1    # "cnapSpecialCase":I
    .restart local p2    # "number":Ljava/lang/String;
    :cond_6
    sget v3, Lcom/android/services/telephony/common/Call;->PRESENTATION_UNKNOWN:I

    if-ne v1, v3, :cond_4

    .line 141
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1
.end method

.method public static sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.VIEW_NOTIFICATION"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.ViewNotificationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 210
    return-void
.end method

.method static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 178
    if-nez p0, :cond_0

    .line 179
    const-string v3, ""

    .line 199
    :goto_0
    return-object v3

    .line 190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 192
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 193
    .local v1, "c":C
    const/16 v3, 0x2d

    if-eq v1, v3, :cond_1

    const/16 v3, 0x40

    if-eq v1, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v1, v3, :cond_1

    const/16 v3, 0x26

    if-ne v1, v3, :cond_2

    .line 194
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 196
    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 199
    .end local v1    # "c":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
