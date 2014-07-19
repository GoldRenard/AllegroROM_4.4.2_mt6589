.class public Lcom/lenovo/lsf/account/ChangePasswordActivity;
.super Landroid/app/Activity;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_FAILURE:I = 0x1

.field private static final DIALOG_SUCCESS:I

.field private static OnekeyPassword:Ljava/lang/String;

.field private static con:Landroid/content/Context;

.field private static isPasswordSet:Z


# instance fields
.field private ChangeButton:Landroid/widget/Button;

.field private ErrorLinearLayout:Landroid/widget/LinearLayout;

.field private final MSG_WAIT_FOR_SOFT_KEYBOARD:I

.field private NewPassword:Ljava/lang/String;

.field private NewPasswordAgainEdit:Landroid/widget/EditText;

.field private NewPasswordEdit:Landroid/widget/EditText;

.field private OldPassword:Ljava/lang/String;

.field private OldPasswordEdit:Landroid/widget/EditText;

.field private OldPasswordLayout:Landroid/widget/RelativeLayout;

.field private PasswordLinearLayout:Landroid/widget/LinearLayout;

.field private final TAG:Ljava/lang/String;

.field private Title:Landroid/widget/TextView;

.field private chageScrollView:Landroid/widget/ScrollView;

.field private changeLayout:Lcom/lenovo/lsf/account/view/KeyboardLayout;

.field private mDeadFlag:Z

.field private mError:Landroid/widget/TextView;

.field private mHandler:Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;

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
    const-string v0, "ChangePasswordActivity"

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->TAG:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mDeadFlag:Z

    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->MSG_WAIT_FOR_SOFT_KEYBOARD:I

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->oldOrientation:I

    .line 66
    iput v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->topHeight:I

    .line 122
    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/lsf/account/ChangePasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->oldOrientation:I

    return v0
.end method

.method static synthetic access$1000(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/lsf/account/ChangePasswordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->oldOrientation:I

    return p1
.end method

.method static synthetic access$1100(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lenovo/lsf/account/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->startChangeProgress(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mDeadFlag:Z

    return v0
.end method

.method static synthetic access$1400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lenovo/lsf/account/ChangePasswordActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mHandler:Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/lsf/account/ChangePasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->topHeight:I

    return v0
.end method

.method static synthetic access$302(Lcom/lenovo/lsf/account/ChangePasswordActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->topHeight:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/lsf/account/ChangePasswordActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->getTopHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z

    return v0
.end method

.method static synthetic access$600(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/ScrollView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ChangePasswordActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->chageScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private getTopHeight()I
    .locals 2

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 152
    .local v0, "window":Landroid/view/Window;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->topHeight:I

    return v1
.end method

.method private hideErrorMessage()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    return-void
.end method

.method private initViews(Z)V
    .locals 4
    .param p1, "isPasswordSet"    # Z

    .prologue
    .line 167
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_keyboardLayout"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lsf/account/view/KeyboardLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->changeLayout:Lcom/lenovo/lsf/account/view/KeyboardLayout;

    .line 168
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_scrollview"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->chageScrollView:Landroid/widget/ScrollView;

    .line 170
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_layout_error"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    .line 171
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_text_error"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mError:Landroid/widget/TextView;

    .line 172
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->hideErrorMessage()V

    .line 174
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_layout_password"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->PasswordLinearLayout:Landroid/widget/LinearLayout;

    .line 175
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_layout_oldpassword"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordLayout:Landroid/widget/RelativeLayout;

    .line 176
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_text_changepassword"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->Title:Landroid/widget/TextView;

    .line 178
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_edit_oldpassword"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;

    .line 179
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_edit_newpassword"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    .line 180
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_edit_confirmpassword"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordAgainEdit:Landroid/widget/EditText;

    .line 181
    sget-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v1, "id"

    const-string v2, "change_button_confirm"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ChangeButton:Landroid/widget/Button;

    .line 183
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ChangeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->PasswordLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 187
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ChangeButton:Landroid/widget/Button;

    sget-object v1, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "change_string_confirmset"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->Title:Landroid/widget/TextView;

    sget-object v1, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "change_string_setpassword"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 189
    const-string v0, "LenovoUser"

    const-string v1, "onkey"

    invoke-static {p0, v0, v1}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OnekeyPassword:Ljava/lang/String;

    .line 191
    :cond_0
    return-void
.end method

.method private isChangePasswordValid()Z
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->hideErrorMessage()V

    .line 196
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "secondPasswd":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 201
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "change_string_please_input_oldpassword"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 202
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 250
    :goto_0
    return v1

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 207
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "password_cannot_be_blank"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 208
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 213
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "change_string_please_input_newpassword"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 214
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 218
    :cond_2
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 219
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "password_cannot_be_blank"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 220
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 225
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "change_string_please_input_newpassword_senced"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 226
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 230
    :cond_4
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_5

    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_6

    .line 231
    :cond_5
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_change_error3"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 233
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 237
    :cond_6
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_8

    .line 238
    :cond_7
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_change_error3"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 240
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 244
    :cond_8
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 245
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_change_error2"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 246
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 250
    :cond_9
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private isSetPasswordValid()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->hideErrorMessage()V

    .line 257
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    .line 258
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OnekeyPassword:Ljava/lang/String;

    iput-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    .line 259
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "secondPasswd":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 262
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "change_string_please_input_newpassword"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 263
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 286
    :goto_0
    return v1

    .line 267
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 268
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "change_string_please_input_newpassword_senced"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 269
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_3

    .line 274
    :cond_2
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_change_error3"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 276
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 280
    :cond_3
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 281
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_change_error2"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V

    .line 282
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPasswordAgainEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 286
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showErrorMessage(I)V
    .locals 2
    .param p1, "errorId"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mError:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method private startChangeProgress(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "oldPasswd"    # Ljava/lang/String;
    .param p2, "newPasswd"    # Ljava/lang/String;

    .prologue
    .line 340
    move-object v2, p1

    .line 341
    .local v2, "foldPasswd":Ljava/lang/String;
    move-object v1, p2

    .line 342
    .local v1, "fnewPasswd":Ljava/lang/String;
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 343
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v6, "string"

    const-string v7, "lenovouser_forget_progess"

    invoke-static {v5, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "msg":Ljava/lang/String;
    invoke-static {p0, v0, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->showDialog(Landroid/content/Context;Landroid/app/ProgressDialog;Ljava/lang/String;)V

    .line 347
    new-instance v4, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 422
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 292
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "LenovoUser"

    const-string v4, "UserName"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "username":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 294
    .local v0, "id":I
    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "change_button_confirm"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 295
    sget-boolean v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isChangePasswordValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v6, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_changePwd"

    const-string v4, "clk_change_pwd"

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->startChangeProgress(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget-boolean v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isSetPasswordValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 301
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v6, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_setPwd"

    const-string v4, "clk_set_pwd"

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->NewPassword:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->startChangeProgress(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x7

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    sput-object p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    .line 77
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 78
    sget-object v1, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "change"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "layout"

    const-string v4, "title"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 81
    new-instance v1, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;Lcom/lenovo/lsf/account/ChangePasswordActivity$1;)V

    iput-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mHandler:Lcom/lenovo/lsf/account/ChangePasswordActivity$MyHandler;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 84
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isPasswordSet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z

    .line 85
    const-string v1, "ChangePasswordActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is PasswordSet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-boolean v1, Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z

    invoke-direct {p0, v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->initViews(Z)V

    .line 89
    iget-object v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->changeLayout:Lcom/lenovo/lsf/account/view/KeyboardLayout;

    new-instance v2, Lcom/lenovo/lsf/account/ChangePasswordActivity$1;

    invoke-direct {v2, p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity$1;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/KeyboardLayout;->setOnkbdStateListener(Lcom/lenovo/lsf/account/view/KeyboardLayout$onKybdsChangeListener;)V

    .line 105
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->oldOrientation:I

    .line 106
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_change_success"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_ok"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/ChangePasswordActivity$2;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity$2;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 336
    :goto_0
    return-object v1

    .line 322
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 323
    sget-object v1, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v2, "string"

    const-string v3, "lenovouser_change_failure"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_retry"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/lenovo/lsf/account/ChangePasswordActivity$3;

    invoke-direct {v3, p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity$3;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    sget-object v2, Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;

    const-string v3, "string"

    const-string v4, "lenovouser_btn_cancel"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 336
    .end local v0    # "msg":Ljava/lang/String;
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity;->mDeadFlag:Z

    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 430
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 118
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const/4 v1, 0x5

    const-string v2, "SPECIAL_TOKEN"

    const-string v3, "QJFOKY5F65WI"

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 113
    return-void
.end method
