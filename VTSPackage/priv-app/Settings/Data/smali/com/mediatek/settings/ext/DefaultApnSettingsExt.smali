.class public Lcom/mediatek/settings/ext/DefaultApnSettingsExt;
.super Ljava/lang/Object;
.source "DefaultApnSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IApnSettingsExt;


# static fields
.field private static final CMMAIL_TYPE:Ljava/lang/String; = "cmmail"

.field public static final MENU_NEW:I = 0x1

.field public static final MENU_RESTORE:I = 0x2

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM1:Ljava/lang/String; = "content://telephony/carriers_sim1/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM2:Ljava/lang/String; = "content://telephony/carriers_sim2/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM3:Ljava/lang/String; = "content://telephony/carriers_sim3/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI_SIM4:Ljava/lang/String; = "content://telephony/carriers_sim4/preferapn"

.field public static final PREFERRED_URI_LIST:[Landroid/net/Uri;

.field private static final RCSE_TYPE:Ljava/lang/String; = "rcse"

.field private static final TAG:Ljava/lang/String; = "DefaultApnSettingsExt"

.field public static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field public static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final TYPE_MMS:Ljava/lang/String; = "mms"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    const-string v2, "content://telephony/carriers_sim1/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "content://telephony/carriers_sim2/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "content://telephony/carriers_sim3/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "content://telephony/carriers_sim4/preferapn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;->PREFERRED_URI_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isMMSNotTransaction(Landroid/app/Activity;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 135
    const/4 v1, 0x1

    .line 136
    .local v1, "isMMSNotProcess":Z
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 137
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 138
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 139
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 141
    .local v3, "state":Landroid/net/NetworkInfo$State;
    const-string v4, "DefaultApnSettingsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mms state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    .line 146
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_0
    :goto_0
    return v1

    .line 142
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v3    # "state":Landroid/net/NetworkInfo$State;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addApnTypeExtra(Landroid/content/Intent;)V
    .locals 0
    .param p1, "it"    # Landroid/content/Intent;

    .prologue
    .line 185
    return-void
.end method

.method public addMenu(Landroid/view/Menu;Landroid/app/Activity;IILjava/lang/String;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "add"    # I
    .param p4, "restore"    # I
    .param p5, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 179
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 182
    return-void
.end method

.method public addPreference(ILandroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 241
    return-void
.end method

.method public customizeApnProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 250
    return-object p1
.end method

.method public customizeApnTitles(ILandroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 246
    return-void
.end method

.method public customizeQueryResult(Landroid/app/Activity;Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "numeric"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 265
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "where":Ljava/lang/String;
    const-string v0, "DefaultApnSettingsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query MNO apn list, where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v1

    const/4 v1, 0x1

    const-string v5, "name"

    aput-object v5, v2, v1

    const/4 v1, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v1

    const/4 v1, 0x3

    const-string v5, "type"

    aput-object v5, v2, v1

    const/4 v1, 0x4

    const-string v5, "sourcetype"

    aput-object v5, v2, v1

    move-object v1, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 271
    .end local v3    # "where":Ljava/lang/String;
    .end local p2    # "cursor":Landroid/database/Cursor;
    :cond_1
    return-object p2
.end method

.method public customizeTetherApnSettings(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 66
    return-void
.end method

.method public getApnTypeArray(Landroid/content/Context;IZ)[Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defResId"    # I
    .param p3, "isTether"    # Z

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBroadcastReceiver(Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 107
    return-object p1
.end method

.method public getFillListQuery(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "numeric"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 155
    const-string v4, ""

    .line 157
    .local v4, "sqlStr":Ljava/lang/String;
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 158
    .local v5, "telephony":Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v5, p2}, Lcom/android/internal/telephony/ITelephony;->getMvnoMatchType(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "mvnoType":Ljava/lang/String;
    invoke-interface {v5, v2, p2}, Lcom/android/internal/telephony/ITelephony;->getMvnoPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "mvnoPattern":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " mvno_type=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and mvno_match_data=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 166
    .end local v1    # "mvnoPattern":Ljava/lang/String;
    .end local v2    # "mvnoType":Ljava/lang/String;
    .end local v5    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numeric=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\" and ( "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "result":Ljava/lang/String;
    const-string v6, "DefaultApnSettingsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getQuery result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-object v3

    .line 162
    .end local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "DefaultApnSettingsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RemoteException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-object v0
.end method

.method public getRestoreCarrierUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 202
    .local v0, "preferredUri":Landroid/net/Uri;
    const-string v1, "content://telephony/carriers/preferapn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 204
    return-object v0
.end method

.method public getScreenEnableState(ILandroid/app/Activity;)Z
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 111
    const/4 v3, 0x1

    .line 115
    .local v3, "simReady":Z
    const/4 v6, 0x5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    if-ne v6, v7, :cond_0

    move v3, v4

    .line 117
    :goto_0
    invoke-virtual {p2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_1

    move v0, v4

    .line 120
    .local v0, "airplaneModeEnabled":Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;->isMMSNotTransaction(Landroid/app/Activity;)Z

    move-result v2

    .line 122
    .local v2, "isMMsNoTransac":Z
    const/4 v1, 0x1

    .line 127
    .local v1, "isDualSimMode":Z
    const-string v6, "DefaultApnSettingsExt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "slotId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isMMsNoTransac = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,airplaneModeEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,simReady = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , isDualSimMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    :goto_2
    return v4

    .end local v0    # "airplaneModeEnabled":Z
    .end local v1    # "isDualSimMode":Z
    .end local v2    # "isMMsNoTransac":Z
    :cond_0
    move v3, v5

    .line 115
    goto :goto_0

    :cond_1
    move v0, v5

    .line 117
    goto :goto_1

    .restart local v0    # "airplaneModeEnabled":Z
    .restart local v1    # "isDualSimMode":Z
    .restart local v2    # "isMMsNoTransac":Z
    :cond_2
    move v4, v5

    .line 131
    goto :goto_2
.end method

.method public getUriFromIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public initTetherField(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 191
    return-void
.end method

.method public isAllowEditPresetApn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;
    .param p3, "numeric"    # Ljava/lang/String;
    .param p4, "sourcetype"    # I

    .prologue
    .line 60
    const-string v0, "DefaultApnSettingsExt"

    const-string v1, "isAllowEditPresetApn"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public isSelectable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSkipApn(Ljava/lang/String;Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "rcseExt"    # Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;

    .prologue
    .line 212
    const-string v0, "cmmail"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rcse"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Lcom/mediatek/settings/ext/IRcseOnlyApnExtension;->isRcseOnlyApnEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveApnValues(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 256
    return-void
.end method

.method public setApnTypePreferenceState(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 218
    return-void
.end method

.method public setMVNOPreferenceState(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 278
    const-string v0, "mvno_type"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    const-string v0, "DefaultApnSettingsExt"

    const-string v1, "disable MVNO type preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    return-void

    .line 281
    :cond_0
    const-string v0, "mvno_match_data"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 282
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 283
    const-string v0, "DefaultApnSettingsExt"

    const-string v1, "disable MVNO match data preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 285
    :cond_1
    const-string v0, "DefaultApnSettingsExt"

    const-string v1, "nothing to do at present"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPreferenceTextAndSummary(ILjava/lang/String;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 236
    return-void
.end method

.method public updateFieldsStatus(ILandroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "root"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 231
    return-void
.end method

.method public updateTetherState(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 188
    return-void
.end method
