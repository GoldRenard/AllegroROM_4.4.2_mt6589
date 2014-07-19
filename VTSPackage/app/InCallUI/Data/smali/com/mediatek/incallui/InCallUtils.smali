.class public final Lcom/mediatek/incallui/InCallUtils;
.super Ljava/lang/Object;
.source "InCallUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mPrivacyProtectOpen:Z

.field private static sIsUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const-class v0, Lcom/mediatek/incallui/InCallUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    .line 290
    sput-boolean v1, Lcom/mediatek/incallui/InCallUtils;->sIsUiShowing:Z

    .line 338
    sput-boolean v1, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkScreenOnForVT()Z
    .locals 6

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 164
    .local v1, "shouldVTScreenOn":Z
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 165
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    .line 168
    .local v2, "state":I
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v1

    .line 177
    .end local v2    # "state":I
    :cond_1
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVTScreenOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return v1
.end method

.method public static hasNavigationBar()Z
    .locals 2

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return v1

    .line 184
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 185
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasPermanentMenuKey(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    if-nez p0, :cond_0

    .line 149
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    const-string v1, "context is null when hasPermanentMenuKey() is called."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    goto :goto_0
.end method

.method public static isAutoAnswerCallNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 14
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 299
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoAnswerCallNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v13

    .line 335
    :goto_0
    return v0

    .line 303
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_3

    .line 304
    invoke-virtual {p0, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "subStr":Ljava/lang/String;
    const-string v0, "400"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "800"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v12

    .line 306
    goto :goto_0

    .line 312
    .end local v10    # "subStr":Ljava/lang/String;
    :cond_3
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.lenovo.ideafriend.ideafriendprovider/common_num/number/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 315
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 317
    .local v6, "c1":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 318
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 319
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 320
    .local v8, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 321
    .local v9, "num":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 322
    .local v11, "type":I
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAutoAnswerCallNumber ,name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-ne v11, v12, :cond_4

    .line 325
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 326
    goto/16 :goto_0

    .line 329
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "num":Ljava/lang/String;
    .end local v11    # "type":I
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c1":Landroid/database/Cursor;
    :cond_6
    :goto_1
    move v0, v13

    .line 335
    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v7

    .line 332
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static isDMLocked()Z
    .locals 7

    .prologue
    .line 36
    const/4 v3, 0x0

    .line 38
    .local v3, "locked":Z
    :try_start_0
    const-string v4, "DmAgent"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 39
    .local v1, "binder":Landroid/os/IBinder;
    const/4 v0, 0x0

    .line 40
    .local v0, "agent":Lcom/mediatek/common/dm/DmAgent;
    if-eqz v1, :cond_0

    .line 41
    invoke-static {v1}, Lcom/mediatek/common/dm/DmAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/dm/DmAgent;

    move-result-object v0

    .line 43
    :cond_0
    if-eqz v0, :cond_1

    .line 44
    invoke-interface {v0}, Lcom/mediatek/common/dm/DmAgent;->isLockFlagSet()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 50
    .end local v0    # "agent":Lcom/mediatek/common/dm/DmAgent;
    .end local v1    # "binder":Landroid/os/IBinder;
    :cond_1
    :goto_0
    sget-object v4, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDMLocked(): locked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return v3

    .line 46
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isIncomingCall(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "isIncoming":Z
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v0

    .line 60
    :cond_0
    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUiShowing()Z
    .locals 1

    .prologue
    .line 295
    sget-boolean v0, Lcom/mediatek/incallui/InCallUtils;->sIsUiShowing:Z

    return v0
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "slotId"    # I

    .prologue
    .line 287
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumberGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isprivacyProtectOpen()Z
    .locals 3

    .prologue
    .line 344
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPrivacyProtectOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    sget-boolean v0, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    return v0
.end method

.method public static onUiShowing(Z)V
    .locals 0
    .param p0, "isShowing"    # Z

    .prologue
    .line 292
    sput-boolean p0, Lcom/mediatek/incallui/InCallUtils;->sIsUiShowing:Z

    .line 293
    return-void
.end method

.method public static setAllIncomingMenuVisible(Landroid/view/Menu;Z)V
    .locals 3
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 270
    const v2, 0x7f0600cb

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 271
    .local v1, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v2, 0x7f0600d7

    invoke-interface {p0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 272
    .local v0, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 273
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 275
    :cond_0
    if-eqz v0, :cond_1

    .line 276
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 278
    :cond_1
    return-void
.end method

.method public static setAllMenuVisible(Landroid/view/Menu;Z)V
    .locals 0
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 281
    invoke-static {p0, p1}, Lcom/mediatek/incallui/InCallUtils;->setAllVoiceMenuVisible(Landroid/view/Menu;Z)V

    .line 282
    invoke-static {p0, p1}, Lcom/mediatek/incallui/InCallUtils;->setAllVTMenuVisible(Landroid/view/Menu;Z)V

    .line 283
    invoke-static {p0, p1}, Lcom/mediatek/incallui/InCallUtils;->setAllIncomingMenuVisible(Landroid/view/Menu;Z)V

    .line 284
    return-void
.end method

.method public static setAllVTMenuVisible(Landroid/view/Menu;Z)V
    .locals 7
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 243
    const v6, 0x7f0600ce

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 244
    .local v2, "switchCameraMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600cf

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 245
    .local v3, "takePeerPhotoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d1

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 246
    .local v0, "hideLocalVideoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d0

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 247
    .local v1, "swapVideosMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d3

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 248
    .local v5, "voiceRecordMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d4

    invoke-interface {p0, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 249
    .local v4, "videoSettingMenu":Landroid/view/MenuItem;
    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 252
    :cond_0
    if-eqz v3, :cond_1

    .line 253
    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    :cond_1
    if-eqz v0, :cond_2

    .line 256
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 258
    :cond_2
    if-eqz v1, :cond_3

    .line 259
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 261
    :cond_3
    if-eqz v5, :cond_4

    .line 262
    invoke-interface {v5, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    :cond_4
    if-eqz v4, :cond_5

    .line 265
    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 267
    :cond_5
    return-void
.end method

.method public static setAllVoiceMenuVisible(Landroid/view/Menu;Z)V
    .locals 13
    .param p0, "menu"    # Landroid/view/Menu;
    .param p1, "visible"    # Z

    .prologue
    .line 190
    const v12, 0x7f0600cc

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 191
    .local v0, "addMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600cd

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 192
    .local v9, "mergeMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d2

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 193
    .local v10, "recordMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600cb

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 194
    .local v11, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d5

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 195
    .local v6, "hangupAllMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d6

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 196
    .local v7, "hangupHoldingMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d7

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 197
    .local v5, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d8

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 198
    .local v4, "ectMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600ca

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 200
    .local v8, "holdMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d9

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 201
    .local v3, "contact":Landroid/view/MenuItem;
    const v12, 0x7f0600da

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 202
    .local v2, "auto_popup_on":Landroid/view/MenuItem;
    const v12, 0x7f0600db

    invoke-interface {p0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 203
    .local v1, "auto_popup_off":Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 204
    invoke-interface {v3, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 206
    :cond_0
    if-eqz v2, :cond_1

    .line 207
    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 209
    :cond_1
    if-eqz v1, :cond_2

    .line 210
    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 213
    :cond_2
    if-eqz v0, :cond_3

    .line 214
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    :cond_3
    if-eqz v9, :cond_4

    .line 217
    invoke-interface {v9, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 219
    :cond_4
    if-eqz v10, :cond_5

    .line 220
    invoke-interface {v10, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 222
    :cond_5
    if-eqz v11, :cond_6

    .line 223
    invoke-interface {v11, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 225
    :cond_6
    if-eqz v6, :cond_7

    .line 226
    invoke-interface {v6, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 228
    :cond_7
    if-eqz v7, :cond_8

    .line 229
    invoke-interface {v7, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 231
    :cond_8
    if-eqz v5, :cond_9

    .line 232
    invoke-interface {v5, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 234
    :cond_9
    if-eqz v4, :cond_a

    .line 235
    invoke-interface {v4, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    :cond_a
    if-eqz v8, :cond_b

    .line 238
    invoke-interface {v8, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 240
    :cond_b
    return-void
.end method

.method public static setprivacyProtectEnabled(Z)V
    .locals 3
    .param p0, "isPrivacyProtectOpen"    # Z

    .prologue
    .line 353
    sget-object v0, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPrivacyProtectOpen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sput-boolean p0, Lcom/mediatek/incallui/InCallUtils;->mPrivacyProtectOpen:Z

    .line 355
    return-void
.end method

.method public static updateIncomingMenuState()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 121
    invoke-static {}, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->reset()V

    .line 122
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVTVoiceAnswer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    sput-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 129
    .local v0, "activeCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 130
    .local v1, "holdCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    .line 131
    .local v2, "ringingCall":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lcom/mediatek/incallui/vt/VTUtils;->isVTCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    sput-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    .line 135
    :cond_1
    sget-object v3, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateIncomingMenuState], sCanVTVoiceAnswer / sCanHangupActiveAndAnswerWaiting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static updateScreenPopupMenuState(Lcom/android/services/telephony/common/Call;Landroid/content/Context;)V
    .locals 11
    .param p0, "call"    # Lcom/android/services/telephony/common/Call;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 64
    invoke-static {}, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->reset()V

    .line 65
    if-nez p0, :cond_1

    .line 66
    sget-object v7, Lcom/mediatek/incallui/InCallUtils;->TAG:Ljava/lang/String;

    const-string v8, "[updateScreenPopupMenuState], the call is null!"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    .line 70
    .local v2, "canMerge":Z
    const/16 v9, 0x10

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    .line 71
    .local v1, "canAdd":Z
    const/16 v9, 0x80

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    .line 72
    .local v4, "isGenericConference":Z
    if-nez v4, :cond_4

    if-eqz v2, :cond_4

    move v2, v7

    .line 74
    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v6

    .line 75
    .local v6, "ringingCall":Lcom/android/services/telephony/common/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 76
    .local v0, "bgCall":Lcom/android/services/telephony/common/Call;
    if-eqz v6, :cond_2

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    const/16 v10, 0x9

    if-ne v9, v10, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    if-ne v9, v7, :cond_7

    .line 79
    :cond_2
    invoke-static {p1}, Lcom/mediatek/incallui/InCallUtils;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 80
    if-eqz v1, :cond_5

    .line 81
    sput-boolean v1, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAddCall:Z

    .line 89
    :cond_3
    :goto_2
    const/16 v9, 0x200

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupAll:Z

    .line 90
    const/16 v9, 0x400

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupHolding:Z

    .line 95
    :goto_3
    const/16 v9, 0x800

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    .line 97
    const/16 v9, 0x1000

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanECT:Z

    .line 98
    const/16 v9, 0x100

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    .line 100
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 101
    sput-boolean v8, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanShowContact:Z

    .line 102
    sput-boolean v8, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAutomaticPopupOn:Z

    .line 103
    sput-boolean v8, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAutomaticPopupOff:Z

    goto :goto_0

    .end local v0    # "bgCall":Lcom/android/services/telephony/common/Call;
    .end local v6    # "ringingCall":Lcom/android/services/telephony/common/Call;
    :cond_4
    move v2, v8

    .line 72
    goto :goto_1

    .line 82
    .restart local v0    # "bgCall":Lcom/android/services/telephony/common/Call;
    .restart local v6    # "ringingCall":Lcom/android/services/telephony/common/Call;
    :cond_5
    if-eqz v2, :cond_6

    .line 83
    sput-boolean v2, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanMerge:Z

    goto :goto_2

    .line 85
    :cond_6
    sput-boolean v7, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAddCall:Z

    .line 86
    sput-boolean v7, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sDisableAdd:Z

    goto :goto_2

    .line 93
    :cond_7
    const/16 v9, 0x2000

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    sput-boolean v9, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanVTVoiceAnswer:Z

    goto :goto_3

    .line 104
    :cond_8
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 105
    sput-boolean v7, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanShowContact:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 107
    .local v5, "number":Ljava/lang/String;
    invoke-static {v5, p1}, Lcom/mediatek/incallui/InCallUtils;->isAutoAnswerCallNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    .line 108
    .local v3, "isAuto":Z
    if-nez v3, :cond_9

    :goto_4
    sput-boolean v7, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAutomaticPopupOn:Z

    .line 109
    sput-boolean v3, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAutomaticPopupOff:Z

    goto/16 :goto_0

    :cond_9
    move v7, v8

    .line 108
    goto :goto_4
.end method
