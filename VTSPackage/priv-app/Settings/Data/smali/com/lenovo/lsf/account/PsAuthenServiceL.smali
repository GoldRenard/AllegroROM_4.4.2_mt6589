.class public Lcom/lenovo/lsf/account/PsAuthenServiceL;
.super Ljava/lang/Object;
.source "PsAuthenServiceL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;
    }
.end annotation


# static fields
.field public static final GET_ST_NO_FROM_CATCHE:Ljava/lang/String; = "get_st_no_from_catche"

.field public static final LENOVOUSER_OFFLINE:I = 0x1

.field public static final LENOVOUSER_ONLINE:I = 0x2

.field public static final PRE_AUTO_ONEKEY_LOGIN:Ljava/lang/String; = "auto_onekey_login"

.field public static final PRE_AUTO_ONEKEY_LOGIN_HANDLE_BY_SELF:Ljava/lang/String; = "auto_onekey_login_handle_by_self"

.field static final PRE_AUTO_ONEKEY_LOGIN_NO_UI_AND__SSO:Ljava/lang/String; = "auto_onekey_login_no_ui_sso"

.field public static final PRE_AUTO_ONEKEY_LOGIN_TIME_OUT:Ljava/lang/String; = "auto_onekey_login_time_out"

.field public static final PRE_USERNAME:Ljava/lang/String; = "username"

.field private static final SDK_VERSION:Ljava/lang/String; = "V4.1.0.1"

.field private static flag_onekey_login:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lsf/account/PsAuthenServiceL;->flag_onekey_login:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 15
    sput-boolean p0, Lcom/lenovo/lsf/account/PsAuthenServiceL;->flag_onekey_login:Z

    return p0
.end method

.method public static getLastError(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-static {}, Lcom/lenovo/lsf/account/UserAuthen;->getLastError()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getLastError()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastErrorString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Lcom/lenovo/lsf/account/UserAuthen;->getLastErrorString()Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getLastErrorString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMD5AuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "random"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p0, p1}, Lcom/lenovo/lsf/account/UserAuthen;->getMD5AuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getMD5AuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 117
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;

    .prologue
    .line 132
    const-string v0, "LenovoID"

    const-string v1, "Lsf sdk version is  V4.1.0.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Lcom/lenovo/lsf/account/PsAuthenServiceL$1;

    invoke-direct {v0, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$1;-><init>(Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V

    invoke-static {p0, p1, v0}, Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;)V

    .line 152
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/lenovo/lsf/account/PsAuthenServiceL$2;

    invoke-direct {v0, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$2;-><init>(Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V

    invoke-static {p0, p1, v0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    goto :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;
    .param p3, "flag"    # Z

    .prologue
    .line 163
    const-string v0, "LenovoID"

    const-string v1, "Lsf sdk version is  V4.1.0.1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Lcom/lenovo/lsf/account/PsAuthenServiceL$3;

    invoke-direct {v0, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$3;-><init>(Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V

    invoke-static {p0, p1, v0, p3}, Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;Z)V

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Lcom/lenovo/lsf/account/PsAuthenServiceL$4;

    invoke-direct {v0, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$4;-><init>(Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V

    invoke-static {p0, p1, v0, p3}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Z)V

    goto :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;
    .param p3, "flag"    # Z
    .param p4, "loginOption"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    const-string v6, "LenovoID"

    const-string v7, "Lsf sdk version is  V4.1.0.1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    if-nez p4, :cond_0

    .line 198
    new-instance p4, Landroid/os/Bundle;

    .end local p4    # "loginOption":Landroid/os/Bundle;
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 200
    .restart local p4    # "loginOption":Landroid/os/Bundle;
    :cond_0
    const-string v6, "auto_onekey_login"

    invoke-virtual {p4, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 201
    .local v3, "onekeyLogin":Z
    const-string v6, "auto_onekey_login_no_ui_sso"

    invoke-virtual {p4, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 202
    .local v2, "isNoUi":Z
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v1

    .line 203
    .local v1, "isICSInstalled":Z
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v0

    .line 204
    .local v0, "isCanSso":Z
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lsf sdk  : onekeyLogin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lsf sdk  : isNoUi = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lsf sdk  : isICSInstalled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v6, "test"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lsf sdk  : isCanSso = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    if-eqz v1, :cond_3

    if-eqz v3, :cond_1

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 216
    :cond_1
    const-string v6, "LenovoID"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Lsf sdk version is case 1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v4, Lcom/lenovo/lsf/account/PsAuthenServiceL$5;

    invoke-direct {v4, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$5;-><init>(Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V

    invoke-static {p0, p1, v4, p3, p4}, Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;ZLandroid/os/Bundle;)V

    .line 247
    :goto_1
    return-void

    :cond_2
    move v4, v5

    .line 216
    goto :goto_0

    .line 225
    :cond_3
    sget-boolean v6, Lcom/lenovo/lsf/account/PsAuthenServiceL;->flag_onekey_login:Z

    if-eqz v6, :cond_4

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v6, "string"

    const-string v7, "auto_oneKeyLogin_goinig"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v4}, Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    goto :goto_1

    .line 229
    :cond_4
    sput-boolean v4, Lcom/lenovo/lsf/account/PsAuthenServiceL;->flag_onekey_login:Z

    .line 230
    new-instance v4, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;

    invoke-direct {v4, p0, p2}, Lcom/lenovo/lsf/account/PsAuthenServiceL$6;-><init>(Landroid/content/Context;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V

    invoke-static {p0, p1, v4, p3, p4}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLandroid/os/Bundle;)V

    goto :goto_1
.end method

.method public static getStatus(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getStatus(Landroid/content/Context;)I

    move-result v0

    .line 50
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getStatus(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static showAccountPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 278
    const-string v2, "LenovoID"

    const-string v3, "Lsf sdk version is  V4.1.0.1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-nez p0, :cond_0

    .line 280
    const-string v2, "lsf"

    const-string v3, "showAccountPage : context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return-void

    .line 285
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->isICSApkInstalled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 286
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.lenovo.lsf"

    const-string v3, "com.lenovo.lsf.account.PsUserSettingActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :goto_1
    const-string v2, "rid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v2, "source"

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 294
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sput v2, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->bInstallICS:I

    .line 296
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 289
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/lsf/account/PsUserSettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_1
.end method
