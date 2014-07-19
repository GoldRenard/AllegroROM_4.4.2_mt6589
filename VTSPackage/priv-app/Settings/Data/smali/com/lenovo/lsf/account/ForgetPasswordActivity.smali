.class public Lcom/lenovo/lsf/account/ForgetPasswordActivity;
.super Landroid/app/Activity;
.source "ForgetPasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_FAILURE:I = 0x1


# instance fields
.field private AccountEdit:Landroid/widget/EditText;

.field private ChangeButton:Landroid/widget/ImageButton;

.field private ErrorLinearLayout:Landroid/widget/LinearLayout;

.field private final MSG_WAIT_FOR_SOFT_KEYBOARD:I

.field private ResetButton:Landroid/widget/Button;

.field private final TAG:Ljava/lang/String;

.field private VerifyCode:Ljava/lang/String;

.field private VerifyCodeEdit:Landroid/widget/EditText;

.field private VerifyId:Ljava/lang/String;

.field private VerifyImage:Landroid/widget/ImageView;

.field private forgetLayout:Lcom/lenovo/lsf/account/view/KeyboardLayout;

.field private forgetScrollView:Landroid/widget/ScrollView;

.field private isBinding:Z

.field private mDeadFlag:Z

.field private mError:Landroid/widget/TextView;

.field private mHandler:Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;

.field private oldOrientation:I

.field private topHeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "ForgetPasswordActivity"

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->MSG_WAIT_FOR_SOFT_KEYBOARD:I

    .line 51
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mDeadFlag:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->oldOrientation:I

    .line 57
    iput v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->topHeight:I

    .line 61
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->isBinding:Z

    .line 121
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->oldOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->oldOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->hideErrorMessage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mDeadFlag:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->isBinding:Z

    return v0
.end method

.method static synthetic access$200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mHandler:Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->topHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->topHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->getTopHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->forgetScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lenovo/lsf/account/ForgetPasswordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getTopHeight()I
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 146
    .local v0, "window":Landroid/view/Window;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->topHeight:I

    return v1
.end method

.method private hideErrorMessage()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 103
    const-string v0, "id"

    const-string v1, "forget_keyboardLayout"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lsf/account/view/KeyboardLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->forgetLayout:Lcom/lenovo/lsf/account/view/KeyboardLayout;

    .line 104
    const-string v0, "id"

    const-string v1, "forget_scrollview"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->forgetScrollView:Landroid/widget/ScrollView;

    .line 106
    const-string v0, "id"

    const-string v1, "forget_layout_error"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    .line 107
    const-string v0, "id"

    const-string v1, "forget_text_error"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mError:Landroid/widget/TextView;

    .line 108
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->hideErrorMessage()V

    .line 110
    const-string v0, "id"

    const-string v1, "forget_edit_account"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;

    .line 111
    const-string v0, "id"

    const-string v1, "forget_edit_verifycode"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;

    .line 112
    const-string v0, "id"

    const-string v1, "forget_button_changeanother"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ChangeButton:Landroid/widget/ImageButton;

    .line 113
    const-string v0, "id"

    const-string v1, "forget_button_reset"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ResetButton:Landroid/widget/Button;

    .line 114
    const-string v0, "id"

    const-string v1, "forget_image_verify"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyImage:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ChangeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ResetButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    return-void
.end method

.method private refreshVerifyImage()V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity$2;-><init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method private showErrorMessage(I)V
    .locals 2
    .param p1, "errorId"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 154
    return-void
.end method

.method private startForgetPasswd()V
    .locals 5

    .prologue
    .line 218
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "string"

    const-string v4, "lenovouser_forget_progess"

    invoke-static {p0, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    .line 222
    new-instance v2, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;-><init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 283
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 287
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    const/4 v0, -0x1

    if-ne v0, p2, :cond_0

    .line 289
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 291
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 292
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 187
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 188
    .local v0, "id":I
    const-string v2, "id"

    const-string v3, "forget_button_changeanother"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 189
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 190
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->refreshVerifyImage()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v2, "id"

    const-string v3, "forget_button_reset"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 194
    const-string v2, "string"

    const-string v3, "username_not_null"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V

    .line 195
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v5, :cond_4

    .line 200
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 201
    const-string v2, "string"

    const-string v3, "forgetfail_string_empty_verify_code"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 207
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 208
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->refreshVerifyImage()V

    goto :goto_0

    .line 203
    :cond_3
    const-string v2, "string"

    const-string v3, "lenovouser_forget_error1"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V

    goto :goto_1

    .line 211
    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_findPwd"

    const-string v4, "clk_find_pwd"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->startForgetPasswd()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x7

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 68
    const-string v2, "layout"

    const-string v3, "forget"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "title"

    invoke-static {p0, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 71
    new-instance v2, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;Lcom/lenovo/lsf/account/ForgetPasswordActivity$1;)V

    iput-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mHandler:Lcom/lenovo/lsf/account/ForgetPasswordActivity$MyHandler;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "it":Landroid/content/Intent;
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->initViews()V

    .line 76
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->forgetLayout:Lcom/lenovo/lsf/account/view/KeyboardLayout;

    new-instance v3, Lcom/lenovo/lsf/account/ForgetPasswordActivity$1;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity$1;-><init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V

    invoke-virtual {v2, v3}, Lcom/lenovo/lsf/account/view/KeyboardLayout;->setOnkbdStateListener(Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;)V

    .line 93
    const-string v2, "username"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "username":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 98
    :cond_0
    const-string v2, "isBinding"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->isBinding:Z

    .line 99
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->oldOrientation:I

    .line 100
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 296
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 297
    const-string v1, "string"

    const-string v2, "lenovouser_forget_failure"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    const-string v2, "string"

    const-string v3, "lenovouser_forget_failuret"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_btn_ok"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 304
    .end local v0    # "msg":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mDeadFlag:Z

    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 329
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 320
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 322
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 311
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->refreshVerifyImage()V

    .line 312
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 315
    return-void
.end method
