.class Lcom/lenovo/lsf/account/UserAuthen;
.super Ljava/lang/Object;
.source "UserAuthen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;
    }
.end annotation


# static fields
.field public static final ACCOUNT_EMAIL:Ljava/lang/String; = "email"

.field public static final ACCOUNT_MSISDN:Ljava/lang/String; = "msisdn"

.field public static final LENOVOUSER_OFFLINE:I = 0x1

.field public static final LENOVOUSER_ONLINE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RK_PUSHSDK"

.field private static final accountType:Ljava/lang/String; = "com.lenovo.lsf.account"

.field private static mContext:Landroid/content/Context;

.field private static mErrorCode:Ljava/lang/String;

.field private static mErrorString:Ljava/lang/String;

.field private static st:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    .line 132
    sput-object v0, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    sput-object p0, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p0, p1}, Lcom/lenovo/lsf/account/UserAuthen;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    sput-object p0, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 22
    sput-object p0, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    return-object p0
.end method

.method public static getAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 440
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 441
    .local v1, "mAccountManager":Landroid/accounts/AccountManager;
    const-string v2, "com.lenovo.lsf.account"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 442
    .local v0, "accounts":[Landroid/accounts/Account;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 443
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 445
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLastError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public static getMD5AuthToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "random"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 117
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 118
    .local v2, "mAccountManager":Landroid/accounts/AccountManager;
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 119
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    move-object v3, v4

    .line 129
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "mAccountManager":Landroid/accounts/AccountManager;
    :goto_0
    return-object v3

    .line 121
    .restart local v0    # "account":Landroid/accounts/Account;
    .restart local v2    # "mAccountManager":Landroid/accounts/AccountManager;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_MD5::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v0, v5, v6}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "st":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_MD5::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v2    # "mAccountManager":Landroid/accounts/AccountManager;
    .end local v3    # "st":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v4

    .line 129
    goto :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    const/16 v12, 0x1e

    const/4 v11, 0x0

    .line 143
    const-string v2, "RK_PUSHSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",flag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :try_start_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 146
    .local v0, "mAccountManager":Landroid/accounts/AccountManager;
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    .line 147
    .local v1, "account":Landroid/accounts/Account;
    if-nez v1, :cond_0

    move-object v2, v11

    .line 208
    .end local v0    # "mAccountManager":Landroid/accounts/AccountManager;
    .end local v1    # "account":Landroid/accounts/Account;
    :goto_0
    return-object v2

    .line 149
    .restart local v0    # "mAccountManager":Landroid/accounts/AccountManager;
    .restart local v1    # "account":Landroid/accounts/Account;
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v2, "source"

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v2, "androidPackageName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v9, 0x0

    .line 153
    .local v9, "result":Landroid/os/Bundle;
    if-eqz p2, :cond_2

    .line 154
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "result":Landroid/os/Bundle;
    check-cast v9, Landroid/os/Bundle;

    .line 155
    .restart local v9    # "result":Landroid/os/Bundle;
    const-string v2, "authtoken"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    .line 156
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 157
    const-string v2, "com.lenovo.lsf.account"

    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    const-string v2, "get_st_no_from_catche"

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "result":Landroid/os/Bundle;
    check-cast v9, Landroid/os/Bundle;

    .line 164
    .restart local v9    # "result":Landroid/os/Bundle;
    :goto_1
    if-nez v9, :cond_3

    move-object v2, v11

    .line 165
    goto :goto_0

    .line 162
    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v2

    invoke-interface {v2}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "result":Landroid/os/Bundle;
    check-cast v9, Landroid/os/Bundle;

    .restart local v9    # "result":Landroid/os/Bundle;
    goto :goto_1

    .line 167
    :cond_3
    const-string v2, "authtoken"

    invoke-virtual {v9, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    .line 169
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "USS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 170
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    .line 171
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->setErrorString(Landroid/content/Context;)V

    move-object v2, v11

    .line 172
    goto/16 :goto_0

    .line 174
    :cond_4
    const-string v2, ""

    sput-object v2, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    .line 175
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->setErrorString(Landroid/content/Context;)V

    .line 177
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 178
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    goto/16 :goto_0

    .line 181
    :cond_5
    const-string v2, "test"

    const-string v4, "HHHHHHHHHHHHHH st == null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-object v7, p0

    .line 184
    .local v7, "ctx":Landroid/content/Context;
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_7

    .line 185
    move-object v7, p0

    .line 189
    :cond_6
    :goto_2
    new-instance v2, Lcom/lenovo/lsf/account/UserAuthen$1;

    invoke-direct {v2}, Lcom/lenovo/lsf/account/UserAuthen$1;-><init>()V

    const/4 v4, 0x1

    invoke-static {v7, p1, v2, v4}, Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;Z)V

    .line 195
    const/4 v10, 0x0

    .line 196
    .local v10, "times":I
    :goto_3
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;

    if-nez v2, :cond_8

    if-ge v10, v12, :cond_8

    .line 197
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 198
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 186
    .end local v10    # "times":I
    :cond_7
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_6

    .line 187
    sget-object v7, Lcom/lenovo/lsf/account/UserAuthen;->mContext:Landroid/content/Context;

    goto :goto_2

    .line 200
    .restart local v10    # "times":I
    :cond_8
    if-ne v10, v12, :cond_9

    .line 201
    const-string v2, "RK_PUSHSDK"

    const-string v4, " *****************   get st timeout ! "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_9
    sget-object v2, Lcom/lenovo/lsf/account/UserAuthen;->st:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 205
    .end local v0    # "mAccountManager":Landroid/accounts/AccountManager;
    .end local v1    # "account":Landroid/accounts/Account;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v7    # "ctx":Landroid/content/Context;
    .end local v9    # "result":Landroid/os/Bundle;
    .end local v10    # "times":I
    :catch_0
    move-exception v8

    .line 206
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v2, v11

    .line 208
    goto/16 :goto_0
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;Z)V

    .line 221
    return-void
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;
    .param p3, "flag"    # Z

    .prologue
    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/lenovo/lsf/account/UserAuthen;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;ZLandroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public static getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;ZLandroid/os/Bundle;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;
    .param p3, "flag"    # Z
    .param p4, "loginOption"    # Landroid/os/Bundle;

    .prologue
    .line 245
    sput-object p0, Lcom/lenovo/lsf/account/UserAuthen;->mContext:Landroid/content/Context;

    .line 246
    new-instance v0, Lcom/lenovo/lsf/account/UserAuthen$2;

    move v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/lsf/account/UserAuthen$2;-><init>(ZLandroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/lenovo/lsf/account/UserAuthen$OnAuthenListener;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    return-void
.end method

.method public static getStatus(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 56
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 57
    const/4 v1, 0x1

    .line 59
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public static getUserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 82
    const/4 v4, 0x0

    .line 84
    .local v4, "userid":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 85
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 106
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_0
    return-object v5

    .line 88
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_0
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string v6, "LenovoUser#Userid"

    invoke-virtual {v5, v0, v6}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 91
    .end local v0    # "account":Landroid/accounts/Account;
    :goto_1
    const-string v5, "RK_PUSHSDK"

    const-string v6, "getUserId  case 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez v4, :cond_1

    .line 93
    const-string v5, "RK_PUSHSDK"

    const-string v6, "getUserId  case 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "ctx":Landroid/content/Context;
    :try_start_1
    const-string v5, "RK_PUSHSDK"

    const-string v6, "getUserId  case 2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v5, "com.lenovo.lsf"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 98
    const-string v5, "userid"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 99
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "LenovoUser#Userid"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    const-string v5, "RK_PUSHSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUserId  case 3   userid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1
    :goto_2
    const-string v5, "RK_PUSHSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUserId  case 5  userid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 106
    goto :goto_0

    .line 101
    .restart local v1    # "ctx":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 102
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "RK_PUSHSDK"

    const-string v6, "getUserId  case 4"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 89
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 70
    .local v0, "account":Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 72
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 361
    .local v1, "mAccountManager":Landroid/accounts/AccountManager;
    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 362
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_0

    .line 365
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0, p1, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "st":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 368
    const-string v3, "com.lenovo.lsf.account"

    invoke-virtual {v1, v3, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v2    # "st":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v3

    goto :goto_0

    .line 371
    :catch_1
    move-exception v3

    goto :goto_0

    .line 370
    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method static setErrorString(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 380
    const/4 v3, 0x0

    .line 382
    .local v3, "resources":Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "package_name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 389
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 391
    .local v1, "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    .line 417
    .end local v1    # "id":I
    .end local v2    # "package_name":Ljava/lang/String;
    :goto_0
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "package_name":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "101"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 394
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto :goto_0

    .line 395
    .end local v1    # "id":I
    :cond_1
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "103"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "135"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 396
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error3"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 397
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto :goto_0

    .line 398
    .end local v1    # "id":I
    :cond_3
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "105"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 400
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 401
    .end local v1    # "id":I
    :cond_4
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "111"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error6"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 403
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 404
    .end local v1    # "id":I
    :cond_5
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "151"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error7"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 406
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 407
    .end local v1    # "id":I
    :cond_6
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 408
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 409
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 410
    .end local v1    # "id":I
    :cond_7
    sget-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorCode:Ljava/lang/String;

    const-string v5, "202"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 412
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0

    .line 414
    .end local v1    # "id":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":string/com_lenovo_lsf_psauthen_error8"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 415
    .restart local v1    # "id":I
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lenovo/lsf/account/UserAuthen;->mErrorString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method static ssoLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rid"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "tgtData"    # Ljava/lang/String;
    .param p6, "tgtExpiredTime"    # Ljava/lang/String;

    .prologue
    .line 312
    sput-object p0, Lcom/lenovo/lsf/account/UserAuthen;->mContext:Landroid/content/Context;

    .line 313
    new-instance v0, Lcom/lenovo/lsf/account/UserAuthen$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/lsf/account/UserAuthen$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 356
    return-void
.end method
