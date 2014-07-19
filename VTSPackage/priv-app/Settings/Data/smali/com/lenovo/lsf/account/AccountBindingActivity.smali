.class public Lcom/lenovo/lsf/account/AccountBindingActivity;
.super Landroid/app/Activity;
.source "AccountBindingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;,
        Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;,
        Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;
    }
.end annotation


# static fields
.field private static final DIALOG_LOGIN_FAILURE:I = 0x1

.field private static final DIALOG_LOGIN_ONEKEYRESENDS:I = 0xb

.field private static final TAG:Ljava/lang/String; = "AccountBindingActivity"

.field private static rid:Ljava/lang/String;


# instance fields
.field private final MSG_STARTBINDING:I

.field private final MSG_TIMEOUT:I

.field private accesstoken:Ljava/lang/String;

.field private accountBindingWelcome:Landroid/widget/TextView;

.field private acitivities:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private existed:Ljava/lang/String;

.field private isBindAnother:Z

.field private isPasswordSet:Z

.field private isTimeout:Z

.field private mAccountEdit:Landroid/widget/EditText;

.field private mAccountInputLinearLayout:Landroid/widget/LinearLayout;

.field private mAccountLinearLayout:Landroid/widget/LinearLayout;

.field private mBindingAnother:Landroid/widget/TextView;

.field private mBindingAnotherLayout:Landroid/widget/LinearLayout;

.field private mBindingForgetpwd:Landroid/widget/TextView;

.field private mBingingAcitivities:Landroid/widget/TextView;

.field private mBingingAcitivitiesDetails:Landroid/widget/TextView;

.field private mBinging_account_description:Landroid/widget/TextView;

.field private mBinging_account_input_description:Landroid/widget/TextView;

.field private mBinging_account_name:Landroid/widget/TextView;

.field private mDeadFlag:Z

.field private mError:Landroid/widget/TextView;

.field private mErrorLinearLayout:Landroid/widget/LinearLayout;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPhoto:Landroid/widget/ImageView;

.field private myHandler:Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

.field private oauthversion:Ljava/lang/String;

.field private oneKey:Z

.field private oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

.field private password:Ljava/lang/String;

.field private profileimageurl:Ljava/lang/String;

.field private receiver:Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;

.field private refreshtoken:Ljava/lang/String;

.field private revealScreenname:Ljava/lang/String;

.field private screenname:Ljava/lang/String;

.field private thirdDes:Ljava/lang/String;

.field private thirdName:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private url1:Ljava/lang/String;

.field private url2:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lsf/account/AccountBindingActivity;->rid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mDeadFlag:Z

    .line 57
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z

    .line 58
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isTimeout:Z

    .line 59
    iput-boolean v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isPasswordSet:Z

    .line 82
    iput v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->MSG_TIMEOUT:I

    .line 83
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->MSG_STARTBINDING:I

    .line 90
    const-string v0, "http://www.d5qq.com/uploads/allimg/101203/01001LU7-3.jpg"

    iput-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->url1:Ljava/lang/String;

    .line 91
    const-string v0, "http://data.qyu.cn/file/fzl/photo/201103/2aa996dd2b85dac0c8e879bce6faf8c8.jpg"

    iput-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->url2:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isBindAnother:Z

    .line 654
    return-void
.end method

.method static synthetic access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/lenovo/lsf/account/AccountBindingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/lenovo/lsf/account/AccountBindingActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->appkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->accesstoken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->refreshtoken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oauthversion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->screenname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->tid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdDes:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/lsf/account/AccountBindingActivity;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/lsf/account/AccountBindingActivity;->setDataAnalytics(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mDeadFlag:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/lenovo/lsf/account/AccountBindingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isPasswordSet:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isPasswordSet:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isTimeout:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isTimeout:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/lenovo/lsf/account/AccountBindingActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/lenovo/lsf/account/AccountBindingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->registSMSReceiver()V

    return-void
.end method

.method static synthetic access$2900(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->myHandler:Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/lsf/account/AccountBindingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lenovo/lsf/account/AccountBindingActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    return-object p1
.end method

.method static synthetic access$500(Lcom/lenovo/lsf/account/AccountBindingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->unRegistSMSReceiver()V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->startBinding(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/lenovo/lsf/account/AccountBindingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->startOneKeyAccountBindingProgress()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lenovo/lsf/account/AccountBindingActivity;->rid:Ljava/lang/String;

    return-object v0
.end method

.method private static getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "Url"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "responseCode":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 155
    const-string v3, "AccountBindingActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPhoto error\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 159
    .end local v1    # "responseCode":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AccountBindingActivity"

    const-string v4, "getImage  error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hideErrorMessage()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method private initViews()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 181
    const-string v2, "id"

    const-string v3, "account_binding_layout"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountLinearLayout:Landroid/widget/LinearLayout;

    .line 183
    const-string v2, "id"

    const-string v3, "account_binging_input_layout"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountInputLinearLayout:Landroid/widget/LinearLayout;

    .line 185
    const-string v2, "id"

    const-string v3, "binding_another_layout"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    .line 187
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const-string v2, "id"

    const-string v3, "binding_welcome"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->accountBindingWelcome:Landroid/widget/TextView;

    .line 190
    const-string v2, "id"

    const-string v3, "binging_account_name"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_name:Landroid/widget/TextView;

    .line 192
    const-string v2, "id"

    const-string v3, "account_binding_description"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_description:Landroid/widget/TextView;

    .line 194
    const-string v2, "id"

    const-string v3, "account_binding_input_textview"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_input_description:Landroid/widget/TextView;

    .line 196
    const-string v2, "id"

    const-string v3, "binding_acitivities"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBingingAcitivities:Landroid/widget/TextView;

    .line 198
    const-string v2, "id"

    const-string v3, "binding_acitivities_details"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBingingAcitivitiesDetails:Landroid/widget/TextView;

    .line 200
    const-string v2, "id"

    const-string v3, "binding_another"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnother:Landroid/widget/TextView;

    .line 202
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnother:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const-string v2, "id"

    const-string v3, "binding_text_forgetpwd"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingForgetpwd:Landroid/widget/TextView;

    .line 205
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingForgetpwd:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const-string v2, "id"

    const-string v3, "account_binging_edit_account"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    .line 208
    const-string v2, "id"

    const-string v3, "account_binging_edit_password"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;

    .line 210
    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->accountBindingWelcome:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->revealScreenname:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->screenname:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    const-string v2, "id"

    const-string v3, "photo"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPhoto:Landroid/widget/ImageView;

    .line 218
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isSimReady(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 219
    iput-boolean v7, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z

    .line 220
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountInputLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 223
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_name:Landroid/widget/TextView;

    const-string v3, "string"

    const-string v4, "binding_account_phone_num"

    invoke-static {p0, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "tn":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    const-string v3, "qqsns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    const-string v2, "string"

    const-string v3, "binding_account_name_qq"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    :goto_1
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_description:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "account_binding_description"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    .end local v1    # "tn":Ljava/lang/String;
    :goto_2
    const-string v2, "id"

    const-string v3, "layout_error"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mErrorLinearLayout:Landroid/widget/LinearLayout;

    .line 270
    const-string v2, "id"

    const-string v3, "text_error"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    .line 272
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 274
    const-string v2, "id"

    const-string v3, "account_binding_ok"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 276
    .local v0, "ok":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void

    .line 210
    .end local v0    # "ok":Landroid/widget/Button;
    :cond_0
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->revealScreenname:Ljava/lang/String;

    goto/16 :goto_0

    .line 230
    .restart local v1    # "tn":Ljava/lang/String;
    :cond_1
    const-string v2, "string"

    const-string v3, "binding_account_name_sina"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 236
    .end local v1    # "tn":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 237
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->existed:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->existed:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 238
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountInputLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_3
    iput-boolean v6, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z

    goto :goto_2

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    const/4 v1, 0x0

    .line 248
    .restart local v1    # "tn":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    const-string v3, "qqsns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    const-string v2, "string"

    const-string v3, "binding_account_name_qq"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    :goto_4
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_description:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "account_binding_description"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBinging_account_input_description:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "account_binding_exists_account_description"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 252
    :cond_4
    const-string v2, "string"

    const-string v3, "binding_account_name_sina"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 261
    .end local v1    # "tn":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountInputLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private registSMSReceiver()V
    .locals 2

    .prologue
    .line 399
    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->receiver:Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;

    .line 400
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->receiver:Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 402
    return-void
.end method

.method private setDataAnalytics(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "onekey"    # Z
    .param p2, "success"    # Z
    .param p3, "thirdName"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;
    .param p5, "username"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    .line 836
    if-eqz p2, :cond_6

    .line 837
    if-eqz p1, :cond_2

    .line 838
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 840
    if-eqz p3, :cond_1

    const-string v0, "qqsns"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_qq_bind_phone_onekey_r_s"

    invoke-virtual {v0, v1, v2, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    if-eqz p3, :cond_0

    const-string v0, "sina"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_sina_bind_phone_onekey_r_s"

    invoke-virtual {v0, v1, v2, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 857
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 859
    if-eqz p3, :cond_4

    const-string v0, "qqsns"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 860
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_login"

    invoke-static {p5}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "clk_login_qq_bind_email_r_s"

    :goto_1
    invoke-virtual {v1, v2, v0, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v0, "clk_login_qq_bind_phone_r_s"

    goto :goto_1

    .line 868
    :cond_4
    if-eqz p3, :cond_0

    const-string v0, "sina"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 870
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_login"

    invoke-static {p5}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "clk_login_sina_bind_email_r_s"

    :goto_2
    invoke-virtual {v1, v2, v0, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const-string v0, "clk_login_sina_bind_phone_r_s"

    goto :goto_2

    .line 881
    :cond_6
    if-eqz p1, :cond_8

    .line 882
    if-eqz p3, :cond_7

    const-string v0, "qqsns"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 883
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_qq_bind_phone_onekey_r_f"

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 891
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_clk_login_qq_bind_phone_onekey_r_f"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 898
    :cond_7
    if-eqz p3, :cond_0

    const-string v0, "sina"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_sina_bind_phone_onekey_r_f"

    invoke-virtual {v0, v1, v2, v5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 908
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_clk_login_sina_bind_phone_onekey_r_f"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 917
    :cond_8
    if-eqz p3, :cond_b

    const-string v0, "qqsns"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 918
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_login"

    invoke-static {p5}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "clk_login_qq_bind_email_r_f"

    :goto_3
    invoke-virtual {v1, v2, v0, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 928
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovoid_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "clk_login_qq_bind_email_r_f"

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 920
    :cond_9
    const-string v0, "clk_login_qq_bind_phone_r_f"

    goto :goto_3

    .line 930
    :cond_a
    const-string v0, "clk_login_qq_bind_phone_r_f"

    goto :goto_4

    .line 937
    :cond_b
    if-eqz p3, :cond_0

    const-string v0, "sina"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_login"

    invoke-static {p5}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "clk_login_sina_bind_email_r_f"

    :goto_5
    invoke-virtual {v1, v2, v0, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 949
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v3, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovoid_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "clk_login_sina_bind_email_r_f"

    :goto_6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p5, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 941
    :cond_c
    const-string v0, "clk_login_sina_bind_phone_r_f"

    goto :goto_5

    .line 951
    :cond_d
    const-string v0, "clk_login_sina_bind_phone_r_f"

    goto :goto_6
.end method

.method private showErrorMessage(I)V
    .locals 2
    .param p1, "errorId"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 287
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 283
    return-void
.end method

.method private startBinding(Z)V
    .locals 8
    .param p1, "onekey"    # Z

    .prologue
    const/4 v7, 0x0

    .line 481
    if-nez p1, :cond_0

    .line 482
    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    const-string v4, "qqsns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 483
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_login"

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "clk_login_qq_bind_email"

    :goto_0
    iget-object v6, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 500
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "string"

    const-string v5, "account_binding_progress_description"

    invoke-static {p0, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 504
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    invoke-static {p0, v1, v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    .line 505
    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 506
    .local v2, "toast":Landroid/widget/Toast;
    new-instance v3, Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/lenovo/lsf/account/AccountBindingActivity$3;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;ZLandroid/app/ProgressDialog;Landroid/widget/Toast;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 652
    return-void

    .line 483
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_1
    const-string v3, "clk_login_qq_bind_phone"

    goto :goto_0

    .line 490
    :cond_2
    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    const-string v4, "sina"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_login"

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "clk_login_sina_bind_email"

    :goto_2
    iget-object v6, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    const-string v3, "clk_login_sina_bind_phone"

    goto :goto_2
.end method

.method private startOneKeyAccountBindingProgress()V
    .locals 3

    .prologue
    .line 691
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    const-string v1, "string"

    const-string v2, "onekey_airplanemode"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 833
    :goto_0
    return-void

    .line 697
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 698
    .local v0, "processDialog":Landroid/app/ProgressDialog;
    const-string v1, "string"

    const-string v2, "login_string_sendrequest"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    .line 702
    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$4;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/lsf/account/AccountBindingActivity$4;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private unRegistSMSReceiver()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->receiver:Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->receiver:Lcom/lenovo/lsf/account/AccountBindingActivity$SmsReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 412
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 413
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 414
    const-string v1, "username"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 416
    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 419
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->hideErrorMessage()V

    .line 422
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 426
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isBindAnother:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->hideErrorMessage()V

    .line 428
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountInputLinearLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z

    .line 432
    iput-boolean v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isBindAnother:Z

    .line 436
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 299
    .local v0, "id":I
    const-string v2, "id"

    const-string v3, "account_binding_ok"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_a

    .line 301
    iget-boolean v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z

    if-eqz v2, :cond_4

    .line 302
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    const-string v2, "string"

    const-string v3, "onekey_airplanemode"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "SPECIAL_TOKEN"

    const-string v5, "QJFOKY5F65WI"

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    const-string v3, "qqsns"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 310
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_login"

    const-string v4, "clk_login_qq_bind_phone_onekey"

    invoke-virtual {v2, v3, v4, v7, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->startOneKeyAccountBindingProgress()V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    const-string v3, "sina"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 317
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_login"

    const-string v4, "clk_login_sina_bind_phone_onekey"

    invoke-virtual {v2, v3, v4, v7, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 326
    :cond_4
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    .line 327
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;

    .line 328
    const-string v2, "AccountBindingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "username === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v2, "AccountBindingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "password === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 331
    const-string v2, "string"

    const-string v3, "lenovouser_login_error5"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V

    .line 333
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 336
    :cond_5
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 337
    const-string v2, "string"

    const-string v3, "lenovouser_login_error4"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V

    .line 339
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 343
    :cond_6
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_7

    .line 344
    const-string v2, "string"

    const-string v3, "lenovouser_login_error7"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V

    .line 346
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 350
    :cond_7
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_8

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_9

    .line 351
    :cond_8
    const-string v2, "string"

    const-string v3, "lenovouser_register_error3"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V

    .line 353
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 356
    :cond_9
    invoke-direct {p0, v6}, Lcom/lenovo/lsf/account/AccountBindingActivity;->startBinding(Z)V

    goto/16 :goto_0

    .line 358
    :cond_a
    const-string v2, "id"

    const-string v3, "binding_text_forgetpwd"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_b

    .line 360
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 361
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "username"

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "isBinding"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 364
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_b
    const-string v2, "id"

    const-string v3, "binding_another"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 366
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->hideErrorMessage()V

    .line 367
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountInputLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mBindingAnotherLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iput-boolean v6, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKey:Z

    .line 373
    iput-boolean v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->isBindAnother:Z

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x7

    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 102
    const-string v1, "layout"

    const-string v2, "account_binding"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "title"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 106
    const-string v1, "AccountBindingActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 108
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "appkey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->appkey:Ljava/lang/String;

    .line 109
    const-string v1, "accesstoken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->accesstoken:Ljava/lang/String;

    .line 110
    const-string v1, "refreshtoken"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->refreshtoken:Ljava/lang/String;

    .line 111
    const-string v1, "oauthversion"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->oauthversion:Ljava/lang/String;

    .line 112
    const-string v1, "screenname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->screenname:Ljava/lang/String;

    .line 113
    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->tid:Ljava/lang/String;

    .line 114
    const-string v1, "email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;

    .line 115
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;

    .line 116
    const-string v1, "thirddesc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdDes:Ljava/lang/String;

    .line 117
    const-string v1, "existed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->existed:Ljava/lang/String;

    .line 118
    const-string v1, "profileimageurl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->profileimageurl:Ljava/lang/String;

    .line 119
    const-string v1, "otherInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->acitivities:Ljava/lang/String;

    .line 120
    const-string v1, "reveal_ScreenName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->revealScreenname:Ljava/lang/String;

    .line 122
    const-string v1, "rid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/lsf/account/AccountBindingActivity;->rid:Ljava/lang/String;

    .line 124
    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

    invoke-direct {v1, p0, v5}, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;Lcom/lenovo/lsf/account/AccountBindingActivity$1;)V

    iput-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->myHandler:Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

    .line 125
    invoke-direct {p0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->initViews()V

    .line 126
    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->profileimageurl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;

    invoke-direct {v1, p0, v5}, Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;Lcom/lenovo/lsf/account/AccountBindingActivity$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity;->profileimageurl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 440
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 441
    const-string v1, "string"

    const-string v2, "lenovouser_login_networkfailure"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v2, "string"

    const-string v3, "lenovouser_login_failure"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_btn_retry"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/AccountBindingActivity$1;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/AccountBindingActivity$1;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_btn_cancel"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 477
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 459
    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    .line 460
    const-string v1, "string"

    const-string v2, "lenovouser_register_sendfailure1"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 462
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v2, "string"

    const-string v3, "lenovouser_onekey_error_titlt"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_btn_retry"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/AccountBindingActivity$2;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/AccountBindingActivity$2;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_btn_cancel"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 477
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 167
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 170
    return-void
.end method
