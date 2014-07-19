.class public Lcom/lenovo/lsf/account/MyAccountActivity;
.super Landroid/app/Activity;
.source "MyAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;,
        Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;
    }
.end annotation


# static fields
.field private static final DIALOG_LOGOUT:I = 0x1

.field private static final MSG_LOGOUT_TIMEOUT:I = 0x1

.field private static isLogoutTimeout:Z

.field private static rid:Ljava/lang/String;


# instance fields
.field private AccountText:Landroid/widget/TextView;

.field private LoginTimeText:Landroid/widget/TextView;

.field private PasswordButton:Landroid/widget/Button;

.field private PasswordText:Landroid/widget/TextView;

.field private StatusText:Landroid/widget/TextView;

.field private final TAG:Ljava/lang/String;

.field private VerifyButton:Landroid/widget/Button;

.field private isFinish:Z

.field private mDeadFlag:Z

.field private mLogoutMenu:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutTimeout:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lsf/account/MyAccountActivity;->rid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, "MyAccountActivity"

    iput-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mDeadFlag:Z

    .line 325
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/MyAccountActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/lsf/account/MyAccountActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/MyAccountActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/lsf/account/MyAccountActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/MyAccountActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->getAccountName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/lsf/account/MyAccountActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/MyAccountActivity;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mDeadFlag:Z

    return v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutTimeout:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 33
    sput-boolean p0, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutTimeout:Z

    return p0
.end method

.method private getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    const-string v0, "LenovoUser"

    const-string v1, "UserName"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLoginTime()Ljava/lang/String;
    .locals 6

    .prologue
    .line 121
    const-string v4, "LenovoUser"

    const-string v5, "LoginTime"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "time":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 124
    .local v0, "calendar":Ljava/util/Calendar;
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 125
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "stime":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "sdate":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 124
    .end local v1    # "sdate":Ljava/lang/String;
    .end local v2    # "stime":Ljava/lang/String;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0
.end method

.method private isLogon()Z
    .locals 3

    .prologue
    .line 99
    const-string v1, "LenovoUser"

    const-string v2, "IsLogon"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "isLogin":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLogoutButtonShow()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mLogoutMenu:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mLogoutMenu:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPasswordSet()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogon()Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 110
    :cond_1
    const-string v2, "LenovoUser"

    const-string v3, "onkey"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "OneKeyPassword":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processLogoutMenu()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutButtonShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/account/MyAccountActivity;->showLogout(I)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/account/MyAccountActivity;->showLogout(I)V

    goto :goto_0
.end method

.method private refreshStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 133
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->AccountText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->LoginTimeText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->getLoginTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    const-string v1, "verificationstatus"

    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "isVerifcation":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;

    const-string v2, "string"

    const-string v3, "myaccount_string_statusinfo_verified"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .end local v0    # "isVerifcation":Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isPasswordSet()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordText:Landroid/widget/TextView;

    const-string v2, "string"

    const-string v3, "myaccount_string_passwordyes"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 151
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordButton:Landroid/widget/Button;

    const-string v2, "string"

    const-string v3, "myaccount_string_changepassword"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 156
    :goto_1
    return-void

    .line 142
    .restart local v0    # "isVerifcation":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/lsf/account/MyAccountActivity$Getverificationstatus;-><init>(Lcom/lenovo/lsf/account/MyAccountActivity;Lcom/lenovo/lsf/account/MyAccountActivity$1;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 145
    .end local v0    # "isVerifcation":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->AccountText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->LoginTimeText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 153
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordText:Landroid/widget/TextView;

    const-string v2, "string"

    const-string v3, "myaccount_string_passwordno"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordButton:Landroid/widget/Button;

    const-string v2, "string"

    const-string v3, "myaccount_string_setpassword"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private showLogout(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mLogoutMenu:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mLogoutMenu:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    const-string v2, "id"

    const-string v3, "myaccount_text_accountinfo"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->AccountText:Landroid/widget/TextView;

    .line 72
    const-string v2, "id"

    const-string v3, "myaccount_text_statusinfo"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->StatusText:Landroid/widget/TextView;

    .line 73
    const-string v2, "id"

    const-string v3, "myaccount_text_passwordinfo"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordText:Landroid/widget/TextView;

    .line 74
    const-string v2, "id"

    const-string v3, "myaccount_text_timeinfo"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->LoginTimeText:Landroid/widget/TextView;

    .line 75
    const-string v2, "id"

    const-string v3, "myaccount_button_setpassword"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordButton:Landroid/widget/Button;

    .line 76
    const-string v2, "id"

    const-string v3, "myaccount_button_verify"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;

    .line 77
    const-string v2, "id"

    const-string v3, "title_menu"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 78
    .local v0, "imageButton":Landroid/widget/ImageButton;
    const-string v2, "id"

    const-string v3, "logout"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mLogoutMenu:Landroid/widget/TextView;

    .line 80
    const-string v2, "id"

    const-string v3, "left_line"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const-string v2, "id"

    const-string v3, "right_line"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->PasswordButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->VerifyButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mLogoutMenu:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const-string v2, "id"

    const-string v3, "view_content"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 93
    .local v1, "sv":Landroid/widget/ScrollView;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 94
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 95
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutButtonShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/account/MyAccountActivity;->showLogout(I)V

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 193
    .local v2, "id":I
    const-string v6, "id"

    const-string v7, "myaccount_button_logout"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_1

    .line 194
    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v6, "id"

    const-string v7, "myaccount_button_setpassword"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_2

    .line 196
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/lenovo/lsf/account/ChangePasswordActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v3, "intent":Landroid/content/Intent;
    const-string v6, "isPasswordSet"

    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isPasswordSet()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v6, "id"

    const-string v7, "myaccount_button_verify"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_5

    .line 200
    const-string v6, "uss"

    invoke-static {p0, v6}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    .local v4, "serverUrl":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 202
    const-string v6, "MyAccountActivity"

    const-string v7, " queryServerUrl is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    :cond_3
    const-string v6, "https://uss.lenovomm.com/"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 206
    const-string v4, "http://passport.lenovo.com/wauthen/verifyaccount.jsp"

    .line 211
    :goto_1
    :try_start_0
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 212
    .local v5, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 213
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    .end local v1    # "i":Landroid/content/Intent;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "string"

    const-string v7, "open_browser_error"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "wauthen/verifyaccount.jsp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 217
    .end local v4    # "serverUrl":Ljava/lang/String;
    :cond_5
    const-string v6, "id"

    const-string v7, "title_menu"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_6

    .line 218
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->processLogoutMenu()V

    goto/16 :goto_0

    .line 219
    :cond_6
    const-string v6, "id"

    const-string v7, "logout"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ne v2, v6, :cond_0

    .line 220
    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x7

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 62
    const-string v1, "layout"

    const-string v2, "myaccount"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "title"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lsf/account/MyAccountActivity;->rid:Ljava/lang/String;

    .line 66
    const-string v1, "isFinish"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->isFinish:Z

    .line 67
    invoke-virtual {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->initViews()V

    .line 68
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 268
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 269
    new-instance v0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v1, "string"

    const-string v2, "lenovouser_userinfo_text16"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "lenovouser_userinfo_text17"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "lenovouser_btn_ok"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/lenovo/lsf/account/MyAccountActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/MyAccountActivity$1;-><init>(Lcom/lenovo/lsf/account/MyAccountActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v0

    const-string v1, "string"

    const-string v2, "lenovouser_btn_cancel"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mDeadFlag:Z

    .line 384
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 385
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 160
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->processLogoutMenu()V

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 374
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 376
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutButtonShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/account/MyAccountActivity;->showLogout(I)V

    .line 379
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 346
    const-string v2, "LenovoUser"

    const-string v3, "UserName"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "username":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 360
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "SPECIAL_TOKEN"

    const-string v5, "QJFOKY5F65WI"

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 355
    iget-boolean v2, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->isFinish:Z

    if-eqz v2, :cond_1

    .line 356
    new-instance v0, Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/MyAccountActivity;Lcom/lenovo/lsf/account/MyAccountActivity$1;)V

    .line 357
    .local v0, "handler":Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;
    const/4 v2, 0x2

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    .end local v0    # "handler":Lcom/lenovo/lsf/account/MyAccountActivity$MyHandler;
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->refreshStatus()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lenovo/lsf/account/MyAccountActivity;->mLogoutMenu:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/lsf/account/MyAccountActivity;->isLogoutButtonShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/lenovo/lsf/account/MyAccountActivity;->showLogout(I)V

    .line 393
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
