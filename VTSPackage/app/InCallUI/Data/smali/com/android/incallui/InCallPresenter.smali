.class public Lcom/android/incallui/InCallPresenter;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;,
        Lcom/android/incallui/InCallPresenter$IncomingCallListener;,
        Lcom/android/incallui/InCallPresenter$InCallStateListener;,
        Lcom/android/incallui/InCallPresenter$InCallState;,
        Lcom/android/incallui/InCallPresenter$ResourceId;
    }
.end annotation


# static fields
.field public static final BUTTON_ADD_STRANGER_KEY:Ljava/lang/String; = "add_stranger_key"

.field public static final BUTTON_PROXIMATE_WAKE_LOCK_KEY:Ljava/lang/String; = "proximity_wake_lock_key"

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field public static final PREFS_NAME:Ljava/lang/String; = "com.lenovo.phone_preferences"

.field public static final TELE_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static sInCallPresenter:Lcom/android/incallui/InCallPresenter;


# instance fields
.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field public mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private final mIncomingCallListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPreviouslyStarted:Z

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhoneRecorderListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensor:Lcom/android/incallui/ProximitySensor;

.field private mReminderCallMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderNotificationId:I

.field private mServiceConnected:Z

.field private mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

.field private mStorageSpaceDialog:Landroid/app/AlertDialog;

.field private mThemePackageName:Ljava/lang/String;

.field protected mThemeResources:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/InCallPresenter;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    .line 80
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/ArrayList;

    .line 88
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 90
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mReminderCallMap:Ljava/util/HashMap;

    .line 107
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mReminderNotificationId:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeResources:Landroid/content/res/Resources;

    .line 137
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1139
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneRecorderListeners:Ljava/util/ArrayList;

    .line 1096
    return-void
.end method

.method private StartAddStranger(Lcom/android/services/telephony/common/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 611
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, "num":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StartAddStranger num is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    :cond_0
    :goto_1
    return-void

    .line 611
    .end local v1    # "num":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 616
    .restart local v1    # "num":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallPresenter;->findNumberFromPhonebook(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/IncomingStrangerSave;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 618
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "IncomingNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 620
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallPresenter;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private attemptCleanup()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1019
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    .line 1021
    .local v0, "shouldCleanup":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attemptCleanup? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1023
    if-eqz v0, :cond_4

    .line 1024
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1028
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v1, :cond_0

    .line 1029
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 1031
    :cond_0
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 1033
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v1, :cond_1

    .line 1034
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1035
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 1037
    :cond_1
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 1039
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 1041
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v1, :cond_2

    .line 1042
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1044
    :cond_2
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 1046
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_3

    .line 1047
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 1049
    :cond_3
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 1051
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 1052
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1054
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1055
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1057
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPhoneRecorderListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1060
    const-string v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1062
    :cond_4
    return-void

    .end local v0    # "shouldCleanup":Z
    :cond_5
    move v0, v1

    .line 1019
    goto :goto_0
.end method

.method private attemptFinishActivity()V
    .locals 3

    .prologue
    .line 339
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 340
    .local v0, "doFinish":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hide in call UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    if-eqz v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 345
    :cond_0
    return-void

    .line 339
    .end local v0    # "doFinish":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findNumberFromPhonebook(Ljava/lang/String;)Z
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 591
    const/4 v8, 0x0

    .line 593
    .local v8, "result":Z
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 594
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 595
    .local v6, "personUri":Landroid/net/Uri;
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 597
    .local v1, "phoneUri":Landroid/net/Uri;
    sget-object v2, Lcom/android/incallui/InCallPresenter;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 599
    .local v7, "phonesCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    const/4 v8, 0x1

    .line 605
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_0
    return v8

    .line 602
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 605
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getAddSrangerStatus()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 553
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 554
    const-string v5, "InCallPresenter has not setup"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    :goto_0
    return v4

    .line 559
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v6, "com.android.phone"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 560
    .local v3, "teleservice":Landroid/content/Context;
    const-string v5, "com.lenovo.phone_preferences"

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    .local v0, "callSetSP":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 562
    const-string v5, "getAddSrangerStatus: com.lenovo.phone_preferencesnot found!"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 569
    .end local v0    # "callSetSP":Landroid/content/SharedPreferences;
    .end local v3    # "teleservice":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 565
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "callSetSP":Landroid/content/SharedPreferences;
    .restart local v3    # "teleservice":Landroid/content/Context;
    :cond_1
    :try_start_1
    const-string v5, "add_stranger_key"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 566
    .local v2, "status":Ljava/lang/Boolean;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAddSrangerStatus: add_stranger_key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    .prologue
    .line 140
    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 143
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 3
    .param p0, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 629
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 631
    .local v0, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 645
    .end local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .local v1, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :goto_0
    return-object v1

    .line 634
    .end local v1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 635
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    :cond_1
    :goto_1
    move-object v1, v0

    .line 645
    .end local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    goto :goto_0

    .line 636
    .end local v1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    .restart local v0    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 637
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1

    .line 638
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 642
    :cond_4
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_1
.end method

.method private getThemeContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 245
    .local v1, "remoteContext":Landroid/content/Context;
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeContext, NameNotFoundException, packageName = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 251
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getThemeContext, SecurityException, packageName = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getThemeContextResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, "remoteContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 235
    .local v1, "remoteResources":Landroid/content/res/Resources;
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallPresenter;->getThemeContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 239
    :cond_0
    return-object v1
.end method

.method private getThemeResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mThemeResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mThemeResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mThemePackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 264
    :cond_0
    return v0
.end method

.method private getThemeResTypeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mThemeResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mThemeResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    :cond_0
    return-object v0
.end method

.method private hideDialpadForDisconnect()V
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->hideDialpadForDisconnect()V

    .line 891
    :cond_0
    return-void
.end method

.method private isIncomingHandUp(Lcom/android/services/telephony/common/Call;)Z
    .locals 3
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 580
    .local v0, "ret":Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v1

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v1

    sget-object v2, Lcom/android/services/telephony/common/Call$DisconnectCause;->LOCAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne v1, v2, :cond_1

    .line 584
    :cond_0
    const/4 v0, 0x1

    .line 586
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIncomingHandUp is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cause is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    return v0
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    .line 871
    const/4 v0, 0x0

    .line 872
    .local v0, "isVTCause":Z
    invoke-static {p1}, Lcom/mediatek/incallui/vt/VTUtils;->isVTCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-static {p1}, Lcom/mediatek/incallui/InCallUtils;->isIncomingCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnectForVT(Lcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;I)Z

    move-result v0

    .line 877
    :cond_0
    if-nez v0, :cond_1

    .line 879
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->getDisconnectCause()Lcom/android/services/telephony/common/Call$DisconnectCause;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Lcom/android/services/telephony/common/Call$DisconnectCause;)V

    .line 882
    .end local v0    # "isVTCause":Z
    :cond_1
    return-void
.end method

.method private showInCall(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1066
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v0, v0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->finishIfNecessory(Z)V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1070
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v0, :cond_0

    .line 1071
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1077
    return-void
.end method

.method private startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 7
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startOrFinishUi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 904
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v5, :cond_1

    .line 979
    .end local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_0
    :goto_0
    return-object p1

    .line 932
    .restart local p1    # "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    :cond_1
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v5, p1, :cond_2

    move v2, v3

    .line 939
    .local v2, "startStartupSequence":Z
    :goto_1
    sget-object v5, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v5, p1, :cond_3

    move v1, v3

    .line 949
    .local v1, "showCallUi":Z
    :goto_2
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v3

    .line 950
    .local v0, "activityIsFinishing":Z
    :goto_3
    if-eqz v0, :cond_5

    .line 951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Undo the state change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 952
    iget-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .end local v0    # "activityIsFinishing":Z
    .end local v1    # "showCallUi":Z
    .end local v2    # "startStartupSequence":Z
    :cond_2
    move v2, v4

    .line 932
    goto :goto_1

    .restart local v2    # "startStartupSequence":Z
    :cond_3
    move v1, v4

    .line 939
    goto :goto_2

    .restart local v1    # "showCallUi":Z
    :cond_4
    move v0, v4

    .line 949
    goto :goto_3

    .line 955
    .restart local v0    # "activityIsFinishing":Z
    :cond_5
    if-eqz v1, :cond_6

    .line 956
    const-string v3, "Start in call UI"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 957
    invoke-direct {p0, v4}, Lcom/android/incallui/InCallPresenter;->showInCall(Z)V

    goto :goto_0

    .line 958
    :cond_6
    if-eqz v2, :cond_8

    .line 959
    const-string v3, "Start Full Screen in call UI"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 963
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 964
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogsAndHideConferenceFragment()V

    .line 967
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 970
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)V

    goto :goto_0

    .line 971
    :cond_8
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v3, :cond_0

    .line 973
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 976
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    goto :goto_0
.end method

.method private startUi(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 6
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 983
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 984
    .local v0, "incomingCall":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    move v1, v2

    .line 993
    .local v1, "isCallWaiting":Z
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v3}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 997
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->finishIfNecessory(Z)V

    .line 1000
    :cond_0
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1004
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v3, v3, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 1005
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->finishIfNecessory(Z)V

    .line 1006
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1011
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p1, v3}, Lcom/android/incallui/StatusBarNotifier;->updateNotificationAndLaunchIncomingCallUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 1012
    return-void

    .line 984
    .end local v1    # "isCallWaiting":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 649
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 659
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 661
    return-void
.end method

.method public addPhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;

    .prologue
    .line 1147
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneRecorderListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1149
    return-void
.end method

.method public applyPhoneTheme(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgname"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, "incallactivity has not start"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bringToForeground(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 761
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->showInCall(Z)V

    .line 766
    :cond_0
    return-void
.end method

.method public getAudioModeProvider()Lcom/android/incallui/AudioModeProvider;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    return-object v0
.end method

.method public getCallList()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method public getContactInfoCache()Lcom/android/incallui/ContactInfoCache;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    return-object v0
.end method

.method public getInCallIntent(Z)Landroid/content/Intent;
    .locals 3
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1081
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10840000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1084
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1085
    if-eqz p1, :cond_0

    .line 1086
    const-string v1, "InCallActivity.show_dialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1089
    :cond_0
    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method public getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "idDefault"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "id":I
    const/4 v1, 0x0

    .line 210
    .local v1, "src":Landroid/graphics/drawable/Drawable;
    const-string v2, "drawable"

    invoke-direct {p0, p1, v2}, Lcom/android/incallui/InCallPresenter;->getThemeResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 211
    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 216
    :goto_0
    return-object v1

    .line 214
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getThemeResTypeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getProximateWakeLockSettingStatus()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 152
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 153
    const-string v4, "InCallPresenter has not setup"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    const/4 v4, 0x0

    .line 171
    :goto_0
    return v4

    .line 158
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v6, "com.android.phone"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 159
    .local v3, "teleservice":Landroid/content/Context;
    const-string v5, "com.lenovo.phone_preferences"

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "callSetSP":Landroid/content/SharedPreferences;
    if-nez v0, :cond_1

    .line 161
    const-string v5, "getProximateWakeLockSettingStatus: com.lenovo.phone_preferencesnot found!"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0    # "callSetSP":Landroid/content/SharedPreferences;
    .end local v3    # "teleservice":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "callSetSP":Landroid/content/SharedPreferences;
    .restart local v3    # "teleservice":Landroid/content/Context;
    :cond_1
    :try_start_1
    const-string v5, "proximity_wake_lock_key"

    const/4 v6, 0x1

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 165
    .local v2, "status":Ljava/lang/Boolean;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getProximateWakeLockSettingStatus: proximity_wake_lock_key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method public getReminderIntentFromMap(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1363
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mReminderCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1364
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mReminderCallMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    return-object v0
.end method

.method public getReminderNotificationId()I
    .locals 1

    .prologue
    .line 1356
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mReminderNotificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mReminderNotificationId:I

    .line 1357
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mReminderNotificationId:I

    return v0
.end method

.method public getThemeResourceId(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "idDefaults"    # I

    .prologue
    .line 219
    const-string v0, "id"

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/incallui/InCallPresenter$ResourceId;

    move-result-object v0

    iget v0, v0, Lcom/android/incallui/InCallPresenter$ResourceId;->mId:I

    return v0
.end method

.method public getThemeResourceId(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/incallui/InCallPresenter$ResourceId;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "idDefaults"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "id":I
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallPresenter;->getThemeResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 225
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 226
    new-instance v1, Lcom/android/incallui/InCallPresenter$ResourceId;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, p0, v2, p3}, Lcom/android/incallui/InCallPresenter$ResourceId;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/content/res/Resources;I)V

    .line 228
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/incallui/InCallPresenter$ResourceId;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mThemeResources:Landroid/content/res/Resources;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/incallui/InCallPresenter$ResourceId;-><init>(Lcom/android/incallui/InCallPresenter;Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method public handleCallKey()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 777
    const-string v8, "handleCallKey"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 787
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    .line 788
    .local v6, "incomingCall":Lcom/android/services/telephony/common/Call;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "incomingCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 791
    if-eqz v6, :cond_1

    .line 792
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    .line 847
    :cond_0
    :goto_0
    return v11

    .line 799
    :cond_1
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 800
    .local v0, "activeCall":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_4

    .line 803
    const/16 v8, 0x80

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v7

    .line 804
    .local v7, "isGeneric":Z
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    .line 805
    .local v3, "canMerge":Z
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    .line 807
    .local v4, "canSwap":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "activeCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isGeneric: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canMerge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canSwap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 812
    if-eqz v3, :cond_2

    .line 813
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallCommandClient;->merge()V

    goto :goto_0

    .line 815
    :cond_2
    if-eqz v4, :cond_3

    .line 816
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallCommandClient;->swap()V

    goto :goto_0

    .line 822
    :cond_3
    if-eqz v4, :cond_4

    .line 823
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallCommandClient;->swap()V

    goto :goto_0

    .line 831
    .end local v3    # "canMerge":Z
    .end local v4    # "canSwap":Z
    .end local v7    # "isGeneric":Z
    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    .line 832
    .local v5, "heldCall":Lcom/android/services/telephony/common/Call;
    if-eqz v5, :cond_0

    .line 835
    invoke-virtual {v5, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    .line 837
    .local v2, "canHold":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "heldCall: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canHold: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_0

    if-eqz v2, :cond_0

    .line 841
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    goto/16 :goto_0
.end method

.method public handleStorageFull(Z)V
    .locals 6
    .param p1, "isForCheckingOrRecording"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1171
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    .line 1172
    .local v1, "storageType":I
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getMountedStorageCount(Landroid/content/Context;)I

    move-result v0

    .line 1173
    .local v0, "mountedStorageCount":I
    if-le v0, v5, :cond_3

    .line 1175
    const-string v3, "handleStorageFull(), mounted storage count > 1"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    if-ne v5, v1, :cond_1

    .line 1177
    const-string v3, "handleStorageFull(), SD card is using"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1178
    const v3, 0x20500dd

    invoke-virtual {p0, v3, v5}, Lcom/android/incallui/InCallPresenter;->showStorageFullDialog(IZ)V

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1179
    :cond_1
    if-nez v1, :cond_2

    .line 1180
    const-string v3, "handleStorageFull(), phone storage is using"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1181
    const v3, 0x20500db

    invoke-virtual {p0, v3, v5}, Lcom/android/incallui/InCallPresenter;->showStorageFullDialog(IZ)V

    goto :goto_0

    .line 1184
    :cond_2
    const-string v3, "handleStorageFull(), never happen here"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1186
    :cond_3
    if-ne v5, v0, :cond_0

    .line 1187
    const-string v3, "handleStorageFull(), mounted storage count == 1"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    if-ne v5, v1, :cond_6

    .line 1189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStorageFull(), SD card is using, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_4

    const-string v3, "checking case"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1191
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, "toast":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1189
    .end local v2    # "toast":Ljava/lang/String;
    :cond_4
    const-string v3, "recording case"

    goto :goto_1

    .line 1191
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1195
    :cond_6
    if-nez v1, :cond_7

    .line 1197
    const-string v3, "handleStorageFull(), phone storage is using"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    const v3, 0x20500dc

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallPresenter;->showStorageFullDialog(IZ)V

    goto :goto_0

    .line 1201
    :cond_7
    const-string v3, "handleStorageFull(), never happen here"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    .line 690
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearInCallNotification(Landroid/content/Context;)V

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 696
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-nez v0, :cond_2

    .line 697
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 700
    :cond_2
    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0
.end method

.method public inCarMode()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1304
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return v2

    .line 1307
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 1308
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "carmode"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1315
    .local v0, "flag":I
    if-ne v0, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public isActivityPreviouslyStarted()Z
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    return v0
.end method

.method public isActivityStarted()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    .prologue
    .line 709
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyReminderCall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "times"    # J
    .param p6, "id"    # I

    .prologue
    .line 1321
    const-string v14, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 1322
    .local v7, "mNotificationManager":Landroid/app/NotificationManager;
    const v5, 0x7f02011b

    .line 1323
    .local v5, "icon":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0a037f

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " \" "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " \""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1325
    .local v13, "tickerText":Ljava/lang/CharSequence;
    new-instance v8, Landroid/app/Notification;

    const-wide/16 v14, 0x0

    invoke-direct {v8, v5, v13, v14, v15}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1326
    .local v8, "notification":Landroid/app/Notification;
    iget v14, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v14, v14, 0x13

    iput v14, v8, Landroid/app/Notification;->flags:I

    .line 1328
    move-object v4, v13

    .line 1329
    .local v4, "contentTitle":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1330
    .local v3, "contentText":Ljava/lang/CharSequence;
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f030011

    invoke-direct {v12, v14, v15}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1332
    .local v12, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.android.incallui.reminder.delete"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1333
    .local v6, "intent":Landroid/content/Intent;
    const-string v14, "name"

    move-object/from16 v0, p2

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    const-string v14, "number"

    move-object/from16 v0, p3

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    const-string v14, "reminderTime"

    move-wide/from16 v0, p4

    invoke-virtual {v6, v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1336
    const-string v14, "notificationId"

    move/from16 v0, p6

    invoke-virtual {v6, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1337
    const/high16 v14, 0x8000000

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v0, v1, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1339
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    const v14, 0x7f0600bb

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1340
    const v14, 0x7f0600b9

    invoke-virtual {v12, v14, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1342
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 1343
    move-object/from16 v11, p3

    .line 1347
    .local v11, "phoneNumber":Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.DIAL"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tel:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v9, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1348
    .local v9, "notificationIntent":Landroid/content/Intent;
    const/4 v14, 0x0

    const/high16 v15, 0x10000000

    move-object/from16 v0, p1

    invoke-static {v0, v14, v9, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1350
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    iput-object v12, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1351
    iput-object v2, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1353
    move/from16 v0, p6

    invoke-virtual {v7, v0, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1354
    return-void

    .line 1345
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v9    # "notificationIntent":Landroid/content/Intent;
    .end local v11    # "phoneNumber":Ljava/lang/String;
    :cond_0
    move-object/from16 v11, p2

    .restart local v11    # "phoneNumber":Ljava/lang/String;
    goto :goto_0
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 448
    if-nez p1, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 452
    .local v2, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 460
    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isprivacyProtectOpen()Z

    move-result v3

    if-nez v3, :cond_2

    .line 462
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    .line 467
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_3

    .line 468
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallActivity;->enableHomeKeyDispatched(Z)V

    .line 473
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone switching state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 477
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .line 478
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v1, v3, p1}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 484
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    .line 485
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->updateInCallActivity()V

    goto/16 :goto_0
.end method

.method public onDisconnect(Lcom/android/services/telephony/common/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->hideDialpadForDisconnect()V

    .line 536
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 539
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->getAddSrangerStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->isIncomingHandUp(Lcom/android/services/telephony/common/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->StartAddStranger(Lcom/android/services/telephony/common/Call;)V

    .line 549
    :cond_1
    return-void
.end method

.method public onDismissDialog()V
    .locals 2

    .prologue
    .line 856
    const-string v0, "Dialog dismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 858
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 859
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 861
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/services/telephony/common/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v5, 0x0

    .line 497
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 499
    .local v2, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone switching state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 504
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_0

    .line 505
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallActivity;->enableHomeKeyDispatched(Z)V

    .line 510
    :cond_0
    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 511
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    .line 514
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .line 515
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v1, v3, p1}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0

    .line 519
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getInVoiceAnswerVideoCall()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 520
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v5}, Lcom/android/incallui/InCallActivity;->setInVoiceAnswerVideoCall(Z)V

    .line 524
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_4

    .line 525
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->updateInCallActivity()V

    .line 527
    :cond_4
    return-void
.end method

.method public onPostDialCharWait(ILjava/lang/String;)V
    .locals 1
    .param p1, "callId"    # I
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(ILjava/lang/String;)V

    .line 770
    return-void
.end method

.method public onStorageFull()V
    .locals 1

    .prologue
    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->handleStorageFull(Z)V

    .line 1159
    return-void
.end method

.method public onSuppServiceFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showSuppMessageDialog(Ljava/lang/String;)V

    .line 1269
    :goto_0
    return-void

    .line 1267
    :cond_0
    const-string v0, "Activity is null, do nothing."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUiShowing(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 733
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->onUiShowing(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 745
    :cond_1
    if-eqz p1, :cond_2

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 748
    :cond_2
    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpdateRecordState: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ;customValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1164
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mPhoneRecorderListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;

    .line 1165
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;
    invoke-interface {v1, p1, p2}, Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;->onUpdateRecordState(II)V

    goto :goto_0

    .line 1167
    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;
    :cond_0
    return-void
.end method

.method public putReminderMap(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "pi"    # Landroid/content/Intent;

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mReminderCallMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    return-void
.end method

.method public reminderContainsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mReminderCallMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 654
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 664
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 666
    return-void
.end method

.method public removePhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;

    .prologue
    .line 1152
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPhoneRecorderListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1154
    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 4
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "updateListeners":Z
    const/4 v0, 0x0

    .line 356
    .local v0, "doAttemptCleanup":Z
    if-eqz p1, :cond_4

    .line 367
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v2, p1, :cond_1

    .line 368
    :cond_0
    const/4 v1, 0x1

    .line 369
    const-string v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    :cond_1
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 381
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 382
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/services/telephony/common/Call;)V

    .line 391
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_5

    .line 392
    const-string v2, "UI Intialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 438
    :cond_3
    :goto_0
    return-void

    .line 397
    :cond_4
    const-string v2, "UI Destroyed)"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v2, :cond_5

    .line 406
    const/4 v1, 0x1

    .line 407
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 412
    const/4 v0, 0x1

    .line 431
    :cond_5
    if-eqz v1, :cond_6

    .line 432
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 435
    :cond_6
    if-eqz v0, :cond_3

    .line 436
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_0
.end method

.method public setInVoiceAnswerVideoCall(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 1272
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1274
    .local v0, "number":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1275
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/incallui/CallCommandClient;->setVTVoiceAnswerRelated(ZLjava/lang/String;)V

    .line 1277
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallActivity;->setInVoiceAnswerVideoCall(Z)V

    .line 1279
    .end local v0    # "number":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;
    .param p3, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 277
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v0, :cond_3

    .line 278
    const-string v0, "New service connection replacing existing one."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 322
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 280
    goto :goto_0

    :cond_1
    move v0, v2

    .line 281
    goto :goto_1

    :cond_2
    move v1, v2

    .line 282
    goto :goto_2

    .line 286
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 289
    invoke-static {p1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 293
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 297
    :cond_4
    new-instance v0, Lcom/android/incallui/StatusBarNotifier;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {v0, p1, v2}, Lcom/android/incallui/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 298
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 300
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 304
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v0, :cond_5

    .line 305
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 309
    :cond_5
    new-instance v0, Lcom/android/incallui/ProximitySensor;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-direct {v0, p1, v2}, Lcom/android/incallui/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 310
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 312
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 315
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 319
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 321
    const-string v0, "Finished InCallPresenter.setUp"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public showInCallMTK()V
    .locals 2

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1379
    return-void
.end method

.method public showInCallMTK(Z)V
    .locals 2
    .param p1, "clearCache"    # Z

    .prologue
    .line 1296
    if-eqz p1, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1302
    return-void
.end method

.method public showStorageFullDialog(IZ)V
    .locals 9
    .param p1, "resid"    # I
    .param p2, "isSDCardExist"    # Z

    .prologue
    .line 1207
    const-string v6, "showStorageDialog... "

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1208
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 1209
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1213
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1216
    .local v4, "msg":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1217
    .local v5, "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v1, 0x0

    .line 1218
    .local v1, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/incallui/InCallPresenter$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;)V

    .line 1223
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    if-eqz p2, :cond_1

    .line 1224
    new-instance v5, Lcom/android/incallui/InCallPresenter$2;

    .end local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v5, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    .line 1237
    .restart local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    new-instance v1, Lcom/android/incallui/InCallPresenter$3;

    .end local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    .line 1246
    .restart local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz p2, :cond_3

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1248
    .local v0, "cancelButtonText":Ljava/lang/CharSequence;
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1253
    .local v3, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_2

    .line 1254
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1258
    :cond_2
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/incallui/InCallPresenter;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    .line 1259
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1260
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1246
    .end local v0    # "cancelButtonText":Ljava/lang/CharSequence;
    .end local v3    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0158

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 333
    const-string v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 335
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 336
    return-void
.end method

.method public updateDualtalkCallInfo(Lcom/android/services/telephony/common/DualtalkCallInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/android/services/telephony/common/DualtalkCallInfo;

    .prologue
    .line 1289
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mDualtalkCallInfo:Lcom/android/services/telephony/common/DualtalkCallInfo;

    .line 1290
    return-void
.end method

.method public wakeUpScreen()V
    .locals 3

    .prologue
    .line 1372
    const-string v1, "wakeUpScreen()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1374
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1375
    return-void
.end method
