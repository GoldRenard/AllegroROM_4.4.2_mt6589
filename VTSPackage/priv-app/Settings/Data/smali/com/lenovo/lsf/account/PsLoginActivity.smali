.class public Lcom/lenovo/lsf/account/PsLoginActivity;
.super Landroid/app/Activity;
.source "PsLoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/PsLoginActivity$ThirdPartyLoginConstants;,
        Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;,
        Lcom/lenovo/lsf/account/PsLoginActivity$MyAdapter;,
        Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;,
        Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;
    }
.end annotation


# static fields
.field private static final DIALOG_LOGIN_FAILURE:I = 0x1

.field private static final DIALOG_LOGIN_ONEKEYRESENDS:I = 0xb

.field private static final DIALOG_LOGIN_RESEND:I = 0x2

.field private static final DIALOG_LOGIN_RESENDF:I = 0x4

.field private static final DIALOG_LOGIN_RESENDS:I = 0x3

.field private static final DIALOG_REGISTER_FAILURE:I = 0x5

.field private static final DIALOG_REGISTER_REGISTERLEGAL:I = 0xa

.field private static final DIALOG_REGISTER_RESENDF:I = 0x7

.field private static final DIALOG_REGISTER_RESENDS:I = 0x6

.field private static EX_PACKAGE_NAME:Ljava/lang/String; = null

.field private static EX_PACKAGE_NAME_OLD:Ljava/lang/String; = null

.field private static EX_USERDATA_URI:Landroid/net/Uri; = null

.field private static final FIELDNAME1:Ljava/lang/String; = "sid"

.field private static final FIELDNAME2:Ljava/lang/String; = "confname"

.field private static final GEMINI_SIM_1:I = 0x0

.field private static final GEMINI_SIM_2:I = 0x1

.field public static final LENOVOID_HAS_LOGIN:Ljava/lang/String; = "lenovoid_has_login"

.field public static final LENOVO_PHONE_NUMBER_TAG:Ljava/lang/String; = "lenovo_phone_number_tag"

.field private static SCHEME:Ljava/lang/String; = null

.field public static final SERVICE_SETTING_TAG:Ljava/lang/String; = "lenovo_service_setting_tag"

.field private static final TAG:Ljava/lang/String; = "PsLoginActivity"

.field private static callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

.field private static mContext:Landroid/content/Context;

.field private static rid:Ljava/lang/String;


# instance fields
.field private ChangeoneButton:Landroid/widget/ImageButton;

.field private CountryCode:Ljava/lang/String;

.field private ErrorLinearLayout:Landroid/widget/LinearLayout;

.field private LoginAccountEdit:Landroid/widget/EditText;

.field private LoginButton:Landroid/widget/Button;

.field private LoginPage:Landroid/view/View;

.field private LoginPageIndex:I

.field private LoginPasswordEdit:Landroid/widget/EditText;

.field private final MSG_GET_OLD_LOGIN_DATA:I

.field private final MSG_INIT_WEBVIEW:I

.field private final MSG_LOGIN:I

.field private final MSG_REGISTERED:I

.field private final MSG_TIMEOUT:I

.field private final MSG_WAIT_FOR_SOFT_KEYBOARD:I

.field private OnkeyPreStart:Z

.field private PhoneloginLinearLayout:Landroid/widget/LinearLayout;

.field private RegisterAccountEdit:Landroid/widget/EditText;

.field private RegisterButton:Landroid/widget/Button;

.field private RegisterPage:Landroid/view/View;

.field private RegisterPageIndex:I

.field private RegisterPasswordAgainEdit:Landroid/widget/EditText;

.field private RegisterPasswordEdit:Landroid/widget/EditText;

.field private RegisterVerifyCodeEdit:Landroid/widget/EditText;

.field private VerifyCode:Ljava/lang/String;

.field private VerifyId:Ljava/lang/String;

.field private VerifyImage:Landroid/widget/ImageView;

.field private agreeProtocol:Z

.field group:Landroid/view/ViewGroup;

.field private isPasswordSet:Z

.field private isProcessDialogPause:Z

.field private isRegistPage:Z

.field private isThirdLogining:Z

.field private isTimeout:Z

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private loginScrollView:Landroid/widget/ScrollView;

.field private mCheckbox:Landroid/widget/ImageView;

.field private mDeadFlag:Z

.field private mError:Landroid/widget/TextView;

.field private mForgetPassword:Landroid/widget/TextView;

.field private mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

.field private mLenovoProtocol:Landroid/widget/TextView;

.field private mLoginHaveNoid:Landroid/widget/TextView;

.field private mLoginPage:Landroid/widget/TextView;

.field private mPhoneLoginInfo:Landroid/widget/ImageView;

.field private mProtocolDialog:Landroid/app/AlertDialog;

.field private mProtocolMore:Landroid/widget/TextView;

.field private mProtocolUrl:Ljava/lang/String;

.field private mRegisterHaveid:Landroid/widget/TextView;

.field private mRegisterPage:Landroid/widget/TextView;

.field protected mRequestNewAccount:Z

.field main:Landroid/view/ViewGroup;

.field private oldOrientation:I

.field private oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

.field private password:Ljava/lang/String;

.field private processDialog:Landroid/app/ProgressDialog;

.field private qqLoginButton:Landroid/widget/ImageView;

.field private receiver:Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;

.field private registScrollView:Landroid/widget/ScrollView;

.field private sinaLoginButton:Landroid/widget/ImageView;

.field textView:Landroid/widget/TextView;

.field private thirdLoginType:Ljava/lang/String;

.field private thridLoginLayout:Landroid/widget/LinearLayout;

.field private topHeight:I

.field private username:Ljava/lang/String;

.field viewPager:Landroid/support/v4/view/ViewPager;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    sput-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    .line 172
    const-string v0, "com.lenovo.leos.pushsetting"

    sput-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->EX_PACKAGE_NAME_OLD:Ljava/lang/String;

    .line 173
    const-string v0, "com.lenovo.leos.pushengine"

    sput-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->EX_PACKAGE_NAME:Ljava/lang/String;

    .line 174
    const-string v0, "content://com.android.provider.pushsetting/userdata"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->EX_USERDATA_URI:Landroid/net/Uri;

    .line 183
    sput-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->SCHEME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z

    .line 139
    iput v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->MSG_LOGIN:I

    .line 140
    iput v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->MSG_TIMEOUT:I

    .line 141
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->MSG_REGISTERED:I

    .line 142
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->MSG_WAIT_FOR_SOFT_KEYBOARD:I

    .line 143
    const/4 v0, 0x6

    iput v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->MSG_GET_OLD_LOGIN_DATA:I

    .line 144
    const/4 v0, 0x7

    iput v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->MSG_INIT_WEBVIEW:I

    .line 150
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z

    .line 151
    iput-boolean v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mRequestNewAccount:Z

    .line 156
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isProcessDialogPause:Z

    .line 158
    iput-boolean v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isPasswordSet:Z

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .line 161
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->oldOrientation:I

    .line 164
    iput v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thirdLoginType:Ljava/lang/String;

    .line 187
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isThirdLogining:Z

    .line 1970
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/lsf/account/PsLoginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->oldOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/lenovo/lsf/account/PsLoginActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->oldOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lenovo/lsf/account/PsLoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isTimeout:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isTimeout:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/lsf/account/PsLoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isPasswordSet:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isPasswordSet:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z

    return v0
.end method

.method static synthetic access$1700()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lenovo/lsf/account/PsLoginActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lenovo/lsf/account/PsLoginActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->CountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterAccountEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordAgainEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->refreshVerifyImage()V

    return-void
.end method

.method static synthetic access$2900(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->unRegistSMSReceiver()V

    return-void
.end method

.method static synthetic access$3000(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->hideErrorMessage()V

    return-void
.end method

.method static synthetic access$3200(Lcom/lenovo/lsf/account/PsLoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/lenovo/lsf/account/PsLoginActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->startRegisterProgress()V

    return-void
.end method

.method static synthetic access$3500(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginResendProcess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->startRegisterResendProgress()V

    return-void
.end method

.method static synthetic access$3700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->startOneKeyRegisterProgress()V

    return-void
.end method

.method static synthetic access$3900(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lenovo/lsf/account/PsLoginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I

    return v0
.end method

.method static synthetic access$4002(Lcom/lenovo/lsf/account/PsLoginActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I

    return p1
.end method

.method static synthetic access$402(Lcom/lenovo/lsf/account/PsLoginActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/lenovo/lsf/account/PsLoginActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getTopHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/lenovo/lsf/account/PsLoginActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Landroid/widget/LinearLayout;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->registScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->loginScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->initWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getProtocolUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/lsf/account/PsLoginActivity;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lenovo/lsf/account/PsLoginActivity;->finishLogin(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isThirdLogining:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lenovo/lsf/account/PsLoginActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z

    return v0
.end method

.method static synthetic access$702(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->registSMSReceiver()V

    return-void
.end method

.method static synthetic access$900(Lcom/lenovo/lsf/account/PsLoginActivity;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/lsf/account/PsLoginActivity;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private finishLogin(ZLjava/lang/String;)V
    .locals 3
    .param p1, "ret"    # Z
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1877
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1878
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_2

    .line 1879
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1880
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1881
    :cond_0
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    if-eqz v1, :cond_1

    .line 1882
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    .line 1884
    :cond_1
    sput-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .line 1885
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1886
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1897
    :goto_0
    return-void

    .line 1888
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    .line 1889
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1890
    :cond_3
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    if-eqz v1, :cond_4

    .line 1891
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    .line 1893
    :cond_4
    sput-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .line 1894
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1895
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 713
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "code":Ljava/lang/String;
    const-string v1, "PsLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getCountryCode ===  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    return-object v0
.end method

.method public static getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defType"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    if-nez p0, :cond_0

    .line 368
    const-string v0, "PsLoginActivity"

    const-string v1, " getIdentifier : context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/4 v0, -0x1

    .line 376
    :goto_0
    return v0

    .line 372
    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com_lenovo_lsf_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 376
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getOnkeyPre()V
    .locals 1

    .prologue
    .line 719
    new-instance v0, Lcom/lenovo/lsf/account/PsLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$3;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 733
    return-void
.end method

.method private getProtocolUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1415
    const-string v2, "uss"

    invoke-static {p0, v2}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    .line 1416
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1417
    const-string v2, "PsLoginActivity"

    const-string v3, " queryServerUrl is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    const-string v2, ""

    .line 1434
    :goto_0
    return-object v2

    .line 1420
    :cond_0
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    const-string v3, "https://uss.lenovomm.com/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1421
    const-string v2, "http://passport.lenovo.com/wauthen/serviceterms/"

    iput-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    .line 1425
    :goto_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1427
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1428
    .local v1, "pre_lang":Ljava/lang/String;
    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1429
    const-string v1, "en"

    .line 1431
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".html?lang="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    .line 1433
    .end local v1    # "pre_lang":Ljava/lang/String;
    :cond_2
    const-string v2, "PsLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url ======================= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    goto :goto_0

    .line 1423
    .end local v0    # "lang":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wauthen/serviceterms/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolUrl:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private static getSchame(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 699
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->SCHEME:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".openapp.lenovoid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->SCHEME:Ljava/lang/String;

    .line 702
    :cond_0
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->SCHEME:Ljava/lang/String;

    return-object v0
.end method

.method private getTopHeight()I
    .locals 2

    .prologue
    .line 1769
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1770
    .local v0, "window":Landroid/view/Window;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I

    return v1
.end method

.method private getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(sid=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\") AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "confname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1721
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->EX_USERDATA_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1727
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1739
    .end local v6    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v8

    .line 1722
    :catch_0
    move-exception v7

    .line 1723
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1730
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 1731
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1735
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1736
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1737
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1902
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1903
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1904
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1907
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "0"

    goto :goto_0
.end method

.method private hideErrorMessage()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 398
    return-void
.end method

.method private initViews()V
    .locals 10

    .prologue
    const/16 v9, 0x22

    .line 272
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_layout_error"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    .line 273
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_text_error"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    .line 274
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 276
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_layout_phonelogin"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->PhoneloginLinearLayout:Landroid/widget/LinearLayout;

    .line 277
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "third_login_layout"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thridLoginLayout:Landroid/widget/LinearLayout;

    .line 278
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_scrollview"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->loginScrollView:Landroid/widget/ScrollView;

    .line 279
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_phoneloginin_image"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mPhoneLoginInfo:Landroid/widget/ImageView;

    .line 281
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "regist_scrollview"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ScrollView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->registScrollView:Landroid/widget/ScrollView;

    .line 283
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_text_registration"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mRegisterPage:Landroid/widget/TextView;

    .line 284
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_text_login"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLoginPage:Landroid/widget/TextView;

    .line 285
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_text_forgetpwd"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mForgetPassword:Landroid/widget/TextView;

    .line 286
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_text_protocol"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLenovoProtocol:Landroid/widget/TextView;

    .line 287
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "register_string_agree"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "aggressString":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLenovoProtocol:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 289
    .local v3, "protocolString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 290
    .local v2, "length":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v2, :cond_0

    .line 291
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 292
    .local v4, "startLength":I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLenovoProtocol:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 293
    .local v5, "style":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0xd1d1d2

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v4, v2

    invoke-virtual {v5, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 294
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLenovoProtocol:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .end local v4    # "startLength":I
    .end local v5    # "style":Landroid/text/SpannableStringBuilder;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_image_frame"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mCheckbox:Landroid/widget/ImageView;

    .line 297
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mCheckbox:Landroid/widget/ImageView;

    const-string v7, "drawable"

    const-string v8, "check"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 298
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_button_login"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginButton:Landroid/widget/Button;

    .line 299
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_sina"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->sinaLoginButton:Landroid/widget/ImageView;

    .line 300
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_qq"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->qqLoginButton:Landroid/widget/ImageView;

    .line 301
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_button_changeanother"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ChangeoneButton:Landroid/widget/ImageButton;

    .line 302
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_button_register"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterButton:Landroid/widget/Button;

    .line 303
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_edit_account"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    .line 304
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_edit_password"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPasswordEdit:Landroid/widget/EditText;

    .line 305
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_edit_account"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterAccountEdit:Landroid/widget/EditText;

    .line 306
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_edit_setpwd"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;

    .line 307
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_edit_confirmpwd"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordAgainEdit:Landroid/widget/EditText;

    .line 308
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_edit_verifycode"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;

    .line 309
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_image_verify"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyImage:Landroid/widget/ImageView;

    .line 310
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_protocol"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolMore:Landroid/widget/TextView;

    .line 311
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "login_string_agree"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 312
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolMore:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 313
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v2, :cond_1

    .line 315
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 316
    .restart local v4    # "startLength":I
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolMore:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 317
    .restart local v5    # "style":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x787879

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v4, v2

    invoke-virtual {v5, v6, v4, v7, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 318
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolMore:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v4    # "startLength":I
    .end local v5    # "style":Landroid/text/SpannableStringBuilder;
    :cond_1
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "login_text_havenoid"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLoginHaveNoid:Landroid/widget/TextView;

    .line 322
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    const-string v7, "id"

    const-string v8, "register_text_haveid"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mRegisterHaveid:Landroid/widget/TextView;

    .line 324
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mRegisterPage:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLoginPage:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mForgetPassword:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLenovoProtocol:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mCheckbox:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mPhoneLoginInfo:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->sinaLoginButton:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->qqLoginButton:Landroid/widget/ImageView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ChangeoneButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolMore:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mLoginHaveNoid:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mRegisterHaveid:Landroid/widget/TextView;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 341
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "lang":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isSimReady(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "zh-CN"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 343
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->showPhoneLogin()V

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->removePhoneLogin()V

    goto :goto_0
.end method

.method private initWebView()Landroid/webkit/WebView;
    .locals 3

    .prologue
    .line 1916
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    .line 1917
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 1918
    .local v0, "settings":Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 1919
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 1920
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 1921
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/lenovo/lsf/account/PsLoginActivity$20;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$20;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1939
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/lenovo/lsf/account/PsLoginActivity$21;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$21;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1945
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    return-object v1
.end method

.method static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isEmaiName(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 706
    if-eqz p0, :cond_0

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    const/4 v0, 0x1

    .line 709
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isInstalled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 1744
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/lenovo/lsf/account/PsLoginActivity;->EX_PACKAGE_NAME:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1745
    .local v0, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1750
    .end local v0    # "pkginfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 1748
    :catch_0
    move-exception v1

    .line 1750
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isInstalledOld(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 1755
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/lenovo/lsf/account/PsLoginActivity;->EX_PACKAGE_NAME_OLD:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1756
    .local v0, "pkginfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 1761
    .end local v0    # "pkginfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .line 1759
    :catch_0
    move-exception v1

    .line 1761
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSimReady(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 350
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 351
    .local v2, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    .line 352
    invoke-static {p0, v4}, Lcom/lenovo/lsf/account/ToolUtil;->getIMSI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "imei1":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/lenovo/lsf/account/ToolUtil;->getIMSI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "imei2":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 362
    .end local v0    # "imei1":Ljava/lang/String;
    .end local v1    # "imei2":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 356
    .restart local v0    # "imei1":Ljava/lang/String;
    .restart local v1    # "imei2":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    .line 359
    goto :goto_0
.end method

.method private parseCallBackData(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1311
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1312
    .local v1, "hasMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "&"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "arr":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-lez v4, :cond_1

    .line 1314
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 1315
    aget-object v4, v0, v2

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1316
    .local v3, "subArray":[Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1317
    array-length v4, v3

    if-le v4, v7, :cond_0

    .line 1318
    const-string v4, "PsLoginActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " === "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1319
    aget-object v4, v3, v8

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v3, v7

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1314
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1324
    .end local v2    # "i":I
    .end local v3    # "subArray":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private refreshVerifyImage()V
    .locals 1

    .prologue
    .line 1220
    new-instance v0, Lcom/lenovo/lsf/account/PsLoginActivity$9;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$9;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1244
    return-void
.end method

.method private registSMSReceiver()V
    .locals 3

    .prologue
    .line 918
    new-instance v1, Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;Lcom/lenovo/lsf/account/PsLoginActivity$1;)V

    iput-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->receiver:Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;

    .line 919
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 920
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->receiver:Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 921
    return-void
.end method

.method private removePhoneLogin()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 408
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->PhoneloginLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mPhoneLoginInfo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 409
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "lang":Ljava/lang/String;
    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thridLoginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 412
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolMore:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_0
    return-void
.end method

.method private sendMessageDelayed(IJ)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "time"    # J

    .prologue
    .line 435
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 436
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 437
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 438
    return-void
.end method

.method public static setCallback(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    .locals 0
    .param p0, "callback"    # Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .prologue
    .line 1912
    sput-object p0, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .line 1913
    return-void
.end method

.method private showDialog(Landroid/app/ProgressDialog;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/ProgressDialog;
    .param p2, "resourceID"    # I

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    .line 432
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Landroid/app/ProgressDialog;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 417
    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 418
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 419
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 420
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 421
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 422
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 423
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const-string v3, "layout"

    const-string v4, "progress_dialog_holo"

    invoke-static {p0, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 424
    .local v2, "view":Landroid/view/View;
    const-string v3, "id"

    const-string v4, "message"

    invoke-static {p0, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 425
    .local v1, "messageView":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 427
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 2
    .param p1, "errorId"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 392
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 393
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 394
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 385
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 386
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 388
    return-void
.end method

.method private showPhoneLogin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->removePhoneLogin()V

    .line 402
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->PhoneloginLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mPhoneLoginInfo:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thridLoginLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolMore:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    return-void
.end method

.method private showProtocolDialog()V
    .locals 4

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 1951
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->initWebView()Landroid/webkit/WebView;

    .line 1952
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getProtocolUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1955
    new-instance v0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_userinfo_registerlegalt"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setView(Landroid/view/View;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_btn_ok"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/lenovo/lsf/account/PsLoginActivity$22;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$22;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolDialog:Landroid/app/AlertDialog;

    .line 1968
    :goto_0
    return-void

    .line 1966
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mProtocolDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private startBindingActivity(Ljava/util/HashMap;)V
    .locals 3
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    .line 1328
    const-string v1, "PsLoginActivity"

    const-string v2, "HHH ========== startBindingActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1330
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "appkey"

    const-string v1, "appkey"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1331
    const-string v2, "accesstoken"

    const-string v1, "accesstoken"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1332
    const-string v2, "refreshtoken"

    const-string v1, "refreshtoken"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1333
    const-string v2, "oauthversion"

    const-string v1, "oauthversion"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    const-string v2, "screenname"

    const-string v1, "screenname"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1335
    const-string v2, "tid"

    const-string v1, "tid"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    const-string v2, "email"

    const-string v1, "email"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    const-string v2, "name"

    const-string v1, "name"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    const-string v2, "existed"

    const-string v1, "existed"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1339
    const-string v2, "thirddesc"

    const-string v1, "thirddesc"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1340
    const-string v2, "profileimageurl"

    const-string v1, "profileimageurl"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1341
    const-string v2, "otherInfo"

    const-string v1, "otherInfo"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1342
    const-string v2, "reveal_ScreenName"

    const-string v1, "reveal_ScreenName"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1343
    const-string v1, "rid"

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1344
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1345
    return-void
.end method

.method private startLoginProcess(Z)V
    .locals 7
    .param p1, "onekey"    # Z

    .prologue
    .line 931
    iget-boolean v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z

    if-eqz v2, :cond_0

    .line 1074
    :goto_0
    return-void

    .line 935
    :cond_0
    if-nez p1, :cond_1

    .line 936
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "SPECIAL_TOKEN"

    const-string v5, "QJFOKY5F65WI"

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v3

    const-string v4, "lenovoid_login"

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "clk_login_n_email"

    :goto_1
    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 940
    :cond_1
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    .line 941
    if-eqz p1, :cond_3

    .line 942
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    sget-object v3, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "login_string_verifing"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/app/ProgressDialog;I)V

    .line 947
    :goto_2
    const-string v2, ""

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 948
    .local v0, "toast":Landroid/widget/Toast;
    move v1, p1

    .line 949
    .local v1, "type":Z
    new-instance v2, Lcom/lenovo/lsf/account/PsLoginActivity$5;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/lenovo/lsf/account/PsLoginActivity$5;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;ZZLandroid/widget/Toast;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 937
    .end local v0    # "toast":Landroid/widget/Toast;
    .end local v1    # "type":Z
    :cond_2
    const-string v2, "clk_login_n_phone"

    goto :goto_1

    .line 944
    :cond_3
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    sget-object v3, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v4, "string"

    const-string v5, "lenovouser_login_progess"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/app/ProgressDialog;I)V

    goto :goto_2
.end method

.method private startLoginResendProcess(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1149
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    .line 1150
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    invoke-static {p0, v0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    .line 1152
    new-instance v0, Lcom/lenovo/lsf/account/PsLoginActivity$7;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$7;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1180
    return-void
.end method

.method private startOneKeyRegisterProgress()V
    .locals 5

    .prologue
    .line 736
    const-string v0, "do"

    const-string v1, "begin===="

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 738
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_onekey"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 739
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    .line 740
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "login_string_sendrequest"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/app/ProgressDialog;I)V

    .line 742
    new-instance v0, Lcom/lenovo/lsf/account/PsLoginActivity$4;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 915
    return-void
.end method

.method private startRegisterProgress()V
    .locals 5

    .prologue
    .line 1077
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_signup"

    const-string v2, "clk_signup"

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1080
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    .line 1081
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_register_progess"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/app/ProgressDialog;I)V

    .line 1083
    new-instance v0, Lcom/lenovo/lsf/account/PsLoginActivity$6;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1146
    return-void
.end method

.method private startRegisterResendProgress()V
    .locals 4

    .prologue
    .line 1183
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    .line 1184
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_register_sendprogess"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/app/ProgressDialog;I)V

    .line 1190
    :goto_0
    new-instance v0, Lcom/lenovo/lsf/account/PsLoginActivity$8;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$8;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1217
    return-void

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_register_sendprogess1"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/app/ProgressDialog;I)V

    goto :goto_0
.end method

.method private startThirdLogin(Ljava/lang/String;)V
    .locals 12
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thirdLoginType:Ljava/lang/String;

    .line 609
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v7

    const/4 v8, 0x5

    const-string v9, "SPECIAL_TOKEN"

    const-string v10, "QJFOKY5F65WI"

    invoke-virtual {v7, v8, v9, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const-string v9, "lenovoid_login"

    const-string v7, "qqsns"

    iget-object v10, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thirdLoginType:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "clk_login_qq"

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uss"

    invoke-static {p0, v8}, Lcom/lenovo/lsf/account/PsServerInfo;->queryServerUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "wauthen/oauth?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 612
    .local v6, "url":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 614
    .local v2, "imei":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/lenovo/lsf/util/DES;->encryptDES(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 617
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "source="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/account/ToolUtil;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&edi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceVendor(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&dm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&os=android"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&ov="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getOsVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&cn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&cv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&d=small"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&n="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&redirect.uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getSchame(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&ctx= 999999"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&lang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 633
    const-string v7, "PsLoginActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HHHHHHHHHH url == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 636
    .local v5, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v1, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 637
    .local v1, "i":Landroid/content/Intent;
    const-string v7, "com.android.browser"

    invoke-static {v7}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v4

    .line 639
    .local v4, "pk":Ljava/lang/Package;
    if-eqz v4, :cond_0

    .line 640
    :try_start_1
    const-string v7, "PsLoginActivity"

    const-string v8, "HHHHHHHHHH pk!=null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const-string v7, "com.android.browser"

    const-string v8, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    :cond_0
    const-string v7, "PsLoginActivity"

    const-string v8, "HHHHHHHHHH pk==null "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 652
    :goto_2
    return-void

    .line 610
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "imei":Ljava/lang/String;
    .end local v4    # "pk":Ljava/lang/Package;
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v6    # "url":Ljava/lang/String;
    :cond_1
    const-string v7, "clk_login_sina"

    goto/16 :goto_0

    .line 646
    .restart local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "imei":Ljava/lang/String;
    .restart local v4    # "pk":Ljava/lang/Package;
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v6    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Landroid/content/Intent;

    const-class v7, Lcom/lenovo/lsf/account/ThirdLoginWebView;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "url"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 615
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "pk":Ljava/lang/Package;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method private startThirdLoginProcess(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    .line 655
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    .line 656
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_login_progess"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/app/ProgressDialog;I)V

    .line 657
    const-string v0, "un"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 658
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    const-string v2, "Userid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v5, "lpsutgt"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "ttl"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->addLenovoAccount2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_0
    const-string v0, "un"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "lpsutgt"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v0, "ttl"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v0, "Userid"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->saveLoginInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 663
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 664
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_login"

    const-string v0, "qqsns"

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thirdLoginType:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "clk_login_qq_r_s"

    :goto_0
    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, v3, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 666
    const-string v0, "DataCache"

    const-string v1, "UserName"

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 669
    const-string v0, "flag"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 670
    .local v9, "isPdSet":Ljava/lang/String;
    if-eqz v9, :cond_1

    const-string v0, "0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    const-string v0, "PsLoginActivity"

    const-string v1, "HHHHHHHHHHHHHHHHHHHHHH flag ===================== 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const-string v1, "LenovoUser"

    const-string v2, "onkey"

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "1234"

    :goto_1
    invoke-static {p0, v1, v2, v0}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 674
    :cond_1
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 675
    iput-boolean v8, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isThirdLogining:Z

    .line 676
    new-instance v0, Lcom/lenovo/lsf/account/PsLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$2;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    new-array v1, v8, [Ljava/lang/String;

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    aput-object v2, v1, v10

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 696
    :cond_2
    return-void

    .line 664
    .end local v9    # "isPdSet":Ljava/lang/String;
    :cond_3
    const-string v0, "clk_login_sina_r_s"

    goto :goto_0

    .line 672
    .restart local v9    # "isPdSet":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    goto :goto_1
.end method

.method private unRegistSMSReceiver()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->receiver:Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->receiver:Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 927
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    .line 1454
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1455
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    if-eqz v0, :cond_0

    .line 1456
    sget-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    const/4 v1, 0x0

    const-string v2, "cancel"

    invoke-interface {v0, v1, v2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;->onFinished(ZLjava/lang/String;)V

    .line 1457
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lsf/account/PsLoginActivity;->callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .line 1459
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x14

    const/4 v9, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 462
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 463
    .local v0, "id":I
    const-string v4, "id"

    const-string v7, "login_text_registration"

    invoke-static {p0, v4, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_0

    const-string v4, "id"

    const-string v7, "login_text_havenoid"

    invoke-static {p0, v4, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_2

    .line 464
    :cond_0
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPageIndex:I

    invoke-virtual {v4, v6, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 601
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "register_text_login"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "register_text_haveid"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 466
    :cond_3
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPageIndex:I

    invoke-virtual {v4, v6, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 467
    :cond_4
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "register_image_frame"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_7

    .line 468
    iget-boolean v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->agreeProtocol:Z

    if-nez v4, :cond_5

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->agreeProtocol:Z

    .line 469
    iget-boolean v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->agreeProtocol:Z

    if-eqz v4, :cond_6

    .line 470
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mCheckbox:Landroid/widget/ImageView;

    sget-object v6, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "check"

    invoke-static {v6, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 471
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 472
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterButton:Landroid/widget/Button;

    const v5, -0xd1d1d2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_5
    move v4, v6

    .line 468
    goto :goto_1

    .line 475
    :cond_6
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mCheckbox:Landroid/widget/ImageView;

    sget-object v5, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "drawable"

    const-string v8, "frame"

    invoke-static {v5, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 476
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 477
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterButton:Landroid/widget/Button;

    const v5, -0x777778

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 479
    :cond_7
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "login_text_forgetpwd"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_8

    .line 480
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 481
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "username"

    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 483
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "register_text_protocol"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_9

    .line 485
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->showProtocolDialog()V

    goto/16 :goto_0

    .line 486
    :cond_9
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "login_button_login"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_f

    .line 487
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->hideErrorMessage()V

    .line 488
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 489
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    .line 491
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 492
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "lenovouser_login_error5"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 493
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 496
    :cond_a
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    .line 497
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "lenovouser_login_error4"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 498
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 502
    :cond_b
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_c

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_d

    .line 503
    :cond_c
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "lenovouser_register_error3"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 504
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 508
    :cond_d
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_e

    .line 509
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "lenovouser_login_error7"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 510
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 513
    :cond_e
    invoke-direct {p0, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V

    goto/16 :goto_0

    .line 515
    :cond_f
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "register_button_register"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_19

    .line 516
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->hideErrorMessage()V

    .line 518
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 519
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    .line 521
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    .line 522
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "username_not_null"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 523
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 527
    :cond_10
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_11

    .line 528
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "password_not_null"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 529
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 533
    :cond_11
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 534
    .local v3, "secondPasswd":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_12

    .line 535
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "senced_password_not_null"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 536
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 540
    :cond_12
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v9, :cond_13

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_14

    .line 541
    :cond_13
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "lenovouser_register_error3"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 543
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 547
    :cond_14
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 548
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "lenovouser_register_error4"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 549
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 553
    :cond_15
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyCode:Ljava/lang/String;

    .line 554
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_16

    .line 555
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "forgetfail_string_empty_verify_code"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 556
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 558
    invoke-virtual {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->onResume()V

    goto/16 :goto_0

    .line 562
    :cond_16
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v9, :cond_17

    .line 563
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "string"

    const-string v6, "lenovouser_register_error5"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(I)V

    .line 564
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 566
    invoke-virtual {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->onResume()V

    goto/16 :goto_0

    .line 569
    :cond_17
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 570
    .local v2, "lang":Ljava/lang/String;
    const-string v4, "zh-CN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 571
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->CountryCode:Ljava/lang/String;

    .line 572
    const-string v4, "PsLoginActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CountryCode == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->CountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->startRegisterProgress()V

    goto/16 :goto_0

    .line 576
    :cond_18
    iput-object v11, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->CountryCode:Ljava/lang/String;

    goto :goto_2

    .line 580
    .end local v2    # "lang":Ljava/lang/String;
    .end local v3    # "secondPasswd":Ljava/lang/String;
    :cond_19
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "id"

    const-string v8, "register_button_changeanother"

    invoke-static {v4, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_1a

    .line 581
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 582
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const/4 v5, 0x5

    const-string v7, "SPECIAL_TOKEN"

    const-string v8, "QJFOKY5F65WI"

    invoke-virtual {v4, v5, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_signup"

    const-string v7, "clk_captcha"

    invoke-virtual {v4, v5, v7, v11, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->refreshVerifyImage()V

    goto/16 :goto_0

    .line 585
    :cond_1a
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v6, "id"

    const-string v7, "login_phoneloginin_image"

    invoke-static {v4, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_1c

    .line 586
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 587
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "onekey_airplanemode"

    invoke-static {v4, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 589
    :cond_1b
    const-string v4, "do"

    const-string v5, "=++++++===================---------------------=====================----------------------------====================-----------------===================-"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->startOneKeyRegisterProgress()V

    goto/16 :goto_0

    .line 592
    :cond_1c
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "login_sina"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_1d

    .line 593
    const-string v4, "sina"

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->startThirdLogin(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :cond_1d
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "login_qq"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_1e

    .line 595
    const-string v4, "qqsns"

    invoke-direct {p0, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->startThirdLogin(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 596
    :cond_1e
    sget-object v4, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v5, "id"

    const-string v6, "login_protocol"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 598
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->showProtocolDialog()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x0

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    const-string v6, "PsLoginActivity"

    const-string v7, "HHH onCreate ========== "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 200
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getOnkeyPre()V

    .line 204
    sput-object p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "rid"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    .line 208
    const-string v6, "source"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 209
    .local v4, "source":Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/ToolUtil;->setSource(Ljava/lang/String;)V

    .line 211
    const-string v6, "username"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 212
    .local v5, "ua":Ljava/lang/String;
    const-string v6, "password"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "pd":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 214
    iput-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 215
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 216
    iput-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    .line 217
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V

    .line 221
    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->agreeProtocol:Z

    .line 222
    new-instance v6, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    invoke-direct {v6, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    .line 224
    sget-object v6, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->isInstalled(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->isInstalledOld(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 225
    :cond_2
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 229
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const-string v6, "layout"

    const-string v7, "login"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    .line 230
    const-string v6, "layout"

    const-string v7, "register"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    .line 231
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->list:Ljava/util/ArrayList;

    .line 232
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->list:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->list:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->list:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPage:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPageIndex:I

    .line 235
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->list:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    iput v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPageIndex:I

    .line 238
    const-string v6, "layout"

    const-string v7, "uilayout"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lenovo/lsf/account/view/KeyboardLayout;

    .line 239
    .local v2, "main":Lcom/lenovo/lsf/account/view/KeyboardLayout;
    new-instance v6, Lcom/lenovo/lsf/account/PsLoginActivity$1;

    invoke-direct {v6, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$1;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v2, v6}, Lcom/lenovo/lsf/account/view/KeyboardLayout;->setOnkbdStateListener(Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;)V

    .line 255
    const-string v6, "id"

    const-string v7, "viewPager"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager;

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 257
    invoke-virtual {p0, v9}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 258
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-string v7, "layout"

    const-string v8, "title"

    invoke-static {p0, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/view/Window;->setFeatureInt(II)V

    .line 262
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$MyAdapter;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$MyAdapter;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 263
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 265
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->initViews()V

    .line 267
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->oldOrientation:I

    .line 268
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x0

    .line 1463
    iget-boolean v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z

    if-eqz v1, :cond_0

    .line 1464
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    .line 1645
    :goto_0
    return-object v1

    .line 1467
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1468
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_login_networkfailure"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_failure"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$10;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$10;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 1480
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    .line 1481
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_register_failure"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1484
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_register_failuret"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$11;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$11;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1495
    .end local v0    # "msg":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 1496
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1497
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_failure"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendfailure"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$12;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$12;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1512
    :cond_3
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_failure"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendfailure1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "enovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$13;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$13;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1527
    :cond_4
    const/4 v1, 0x3

    if-ne p1, v1, :cond_6

    .line 1528
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1529
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendst"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resends"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1535
    :cond_5
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendst1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resends1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1541
    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_8

    .line 1542
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1543
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendft"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendf"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$14;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$14;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1558
    :cond_7
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendft1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_login_resendf1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$15;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$15;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1573
    :cond_8
    const/4 v1, 0x6

    if-ne p1, v1, :cond_a

    .line 1574
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1575
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_register_sendsuccesst"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_register_sendsuccess"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1581
    :cond_9
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_register_sendsuccesst1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_register_sendsuccess1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1587
    :cond_a
    const/4 v1, 0x7

    if-ne p1, v1, :cond_c

    .line 1588
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1589
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_register_sendfailure"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1590
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_register_sendfailuret"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$16;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$16;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1602
    .end local v0    # "msg":Ljava/lang/String;
    :cond_b
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_register_sendfailure1"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1603
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_register_sendfailuret1"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$17;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$17;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1615
    .end local v0    # "msg":Ljava/lang/String;
    :cond_c
    const/16 v1, 0xa

    if-ne p1, v1, :cond_e

    .line 1616
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_d

    .line 1617
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->initWebView()Landroid/webkit/WebView;

    .line 1618
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getProtocolUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1620
    :cond_d
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_userinfo_registerlegalt"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setView(Landroid/view/View;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$18;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$18;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1630
    :cond_e
    const/16 v1, 0xb

    if-ne p1, v1, :cond_f

    .line 1631
    sget-object v1, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_register_sendfailure1"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1632
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_onekey_error_titlt"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/PsLoginActivity$19;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$19;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v5}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 1645
    .end local v0    # "msg":Ljava/lang/String;
    :cond_f
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1439
    const-string v0, "PsLoginActivity"

    const-string v1, "HHH onDestroy ========== "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z

    .line 1441
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 1442
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 1443
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;

    .line 1445
    :cond_0
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/lenovo/lsf/account/UserAuthen;->getAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1446
    const-string v0, "LenovoUser"

    invoke-static {p0, v0}, Lcom/lenovo/lsf/account/PsPushUserData;->delAllValue(Landroid/content/Context;Ljava/lang/String;)Z

    .line 1447
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsPushUserData;->delAllStValue(Landroid/content/Context;)Z

    .line 1449
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1450
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1248
    const-string v9, "PsLoginActivity"

    const-string v10, "HHH onNewIntent ========== "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->isTrackerInitialized()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1250
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->initialize(Landroid/content/Context;)V

    .line 1252
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v9

    invoke-static {p0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setUserId(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "data":Ljava/lang/String;
    const-string v9, "PsLoginActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HHH data ========== "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-static {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->getSchame(Landroid/content/Context;)Ljava/lang/String;

    .line 1256
    if-eqz v0, :cond_9

    sget-object v9, Lcom/lenovo/lsf/account/PsLoginActivity;->SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1258
    sget-object v9, Lcom/lenovo/lsf/account/PsLoginActivity;->SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1259
    .local v3, "index":I
    sget-object v9, Lcom/lenovo/lsf/account/PsLoginActivity;->SCHEME:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v3

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1260
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-direct {p0, v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->parseCallBackData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1263
    .local v5, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "errors"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1264
    .local v1, "errors":Ljava/lang/String;
    const-string v9, "PsLoginActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HHH errors ==========+++++++++++ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    if-eqz v1, :cond_6

    .line 1266
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v9

    const/4 v10, 0x5

    const-string v11, "SPECIAL_TOKEN"

    const-string v12, "QJFOKY5F65WI"

    invoke-virtual {v9, v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    const-string v11, "lenovoid_login"

    const-string v9, "qqsns"

    iget-object v12, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thirdLoginType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "clk_login_qq_r_f"

    :goto_0
    iget-object v12, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v9, v12, v13}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1268
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v9

    const/4 v10, 0x5

    const-string v11, "SPECIAL_TOKEN"

    const-string v12, "QJFOKY5F65WI"

    invoke-virtual {v9, v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lenovoid_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v9, "qqsns"

    iget-object v12, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->thirdLoginType:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "clk_login_qq_r_f"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v10, v9, v11, v12, v13}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1270
    const-string v9, "191"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1271
    sget-object v9, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v10, "string"

    const-string v11, "account_link_third_accout_timeout"

    invoke-static {v9, v10, v11}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1302
    .end local v1    # "errors":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_2
    const-string v9, "fromFindPassword"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1303
    .local v2, "hidenError":Z
    if-eqz v2, :cond_2

    .line 1304
    iget-object v9, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginPasswordEdit:Landroid/widget/EditText;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->hideErrorMessage()V

    .line 1307
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 1308
    return-void

    .line 1267
    .end local v2    # "hidenError":Z
    .restart local v1    # "errors":Ljava/lang/String;
    .restart local v3    # "index":I
    .restart local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    const-string v9, "clk_login_sina_r_f"

    goto/16 :goto_0

    .line 1269
    :cond_4
    const-string v9, "clk_login_sina_r_f"

    goto :goto_1

    .line 1272
    :cond_5
    const-string v9, "193"

    invoke-virtual {v1, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1273
    sget-object v9, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v10, "string"

    const-string v11, "account_binding_error"

    invoke-static {v9, v10, v11}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 1276
    :cond_6
    const-string v9, "isbd"

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1277
    .local v4, "isbinding":Ljava/lang/String;
    const-string v9, "0"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1278
    invoke-direct {p0, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->startBindingActivity(Ljava/util/HashMap;)V

    goto :goto_2

    .line 1279
    :cond_7
    const-string v9, "1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1280
    invoke-direct {p0, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->startThirdLoginProcess(Ljava/util/HashMap;)V

    goto :goto_2

    .line 1282
    :cond_8
    const-string v9, "PsLoginActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get bing status is wrong : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1286
    .end local v1    # "errors":Ljava/lang/String;
    .end local v3    # "index":I
    .end local v4    # "isbinding":Ljava/lang/String;
    .end local v5    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    const-string v9, "rid"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    .line 1287
    const-string v9, "source"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1288
    .local v7, "source":Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 1289
    invoke-static {v7}, Lcom/lenovo/lsf/account/ToolUtil;->setSource(Ljava/lang/String;)V

    .line 1292
    :cond_a
    const-string v9, "username"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1293
    .local v8, "ua":Ljava/lang/String;
    const-string v9, "password"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1294
    .local v6, "pd":Ljava/lang/String;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 1295
    iput-object v8, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 1296
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    .line 1297
    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;

    .line 1298
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V

    goto/16 :goto_2
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 1403
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1404
    const-string v0, "PsLoginActivity"

    const-string v1, "HHH onPause ========== "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1406
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 1407
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 1408
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isProcessDialogPause:Z

    .line 1410
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1412
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1349
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1350
    iput-boolean v10, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z

    .line 1351
    const-string v6, "PsLoginActivity"

    const-string v7, "HHH onResume ========== "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-boolean v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isProcessDialogPause:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_0

    .line 1353
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 1354
    iput-boolean v10, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isProcessDialogPause:Z

    .line 1356
    :cond_0
    iget-boolean v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z

    if-eqz v6, :cond_1

    .line 1357
    invoke-direct {p0}, Lcom/lenovo/lsf/account/PsLoginActivity;->refreshVerifyImage()V

    .line 1359
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const/4 v7, 0x5

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1360
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 1362
    sget-object v6, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1364
    const-string v6, "PsLoginActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HHHHHHHHHHHHHHHHHHHH   rid == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iput-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 1366
    iput-boolean v11, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->mRequestNewAccount:Z

    .line 1367
    const-string v6, "LenovoUser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "st"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1368
    .local v5, "st":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->isThirdLogining:Z

    if-nez v6, :cond_2

    .line 1369
    invoke-direct {p0, v11, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->finishLogin(ZLjava/lang/String;)V

    .line 1371
    :cond_2
    sget-object v6, Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 1372
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1374
    .local v1, "i":Landroid/content/Intent;
    const-string v6, "isFinish"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1375
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1380
    .end local v1    # "i":Landroid/content/Intent;
    .end local v5    # "st":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 1381
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1382
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1390
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1391
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "autonLoginTimeout"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1392
    .local v3, "isAutoLoginTimeout":Z
    if-eqz v3, :cond_4

    .line 1393
    sget-object v6, Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;

    const-string v7, "string"

    const-string v8, "register_time_out"

    invoke-static {v6, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1395
    :cond_4
    const-string v6, "isLoginPage"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1396
    .local v4, "isLoginPage":Z
    if-nez v4, :cond_5

    .line 1397
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    iget v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPageIndex:I

    invoke-virtual {v6, v7, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 1399
    :cond_5
    return-void

    .line 1384
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isAutoLoginTimeout":Z
    .end local v4    # "isLoginPage":Z
    :cond_6
    const-string v6, "DataCache"

    const-string v7, "UserName"

    invoke-static {p0, v6, v7}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    .line 1386
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1387
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
