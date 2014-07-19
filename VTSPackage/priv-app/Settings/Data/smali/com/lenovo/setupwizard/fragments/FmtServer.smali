.class public Lcom/lenovo/setupwizard/fragments/FmtServer;
.super Landroid/app/Fragment;
.source "FmtServer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

.field private expCheckBox:Landroid/widget/CheckBox;

.field private idCheckBox:Landroid/widget/CheckBox;

.field private lenovoExpItem:Landroid/view/View;

.field private lenovoIdItem:Landroid/view/View;

.field private lenovoLicenseItem:Landroid/view/View;

.field private licenseCheckBox:Landroid/widget/CheckBox;

.field private spanText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/setupwizard/fragments/FmtServer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/setupwizard/fragments/FmtServer;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->openLenovoExpProtocol()V

    return-void
.end method

.method private getStartSpan(Ljava/lang/String;)I
    .locals 1
    .param p1, "expSumary"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->spanText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private init(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 71
    const v0, 0x7f0b0135

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->lenovoIdItem:Landroid/view/View;

    .line 72
    const v0, 0x7f0b0139

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->lenovoExpItem:Landroid/view/View;

    .line 73
    const v0, 0x7f0b013d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->lenovoLicenseItem:Landroid/view/View;

    .line 74
    const v0, 0x7f0b0138

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    .line 75
    const v0, 0x7f0b013c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    .line 76
    const v0, 0x7f0b0140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    .line 78
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    iget-boolean v1, v1, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bId:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 82
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    iget-boolean v1, v1, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bExp:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 86
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->lenovoIdItem:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->lenovoExpItem:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->lenovoLicenseItem:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method private openLenovoExpProtocol()V
    .locals 5

    .prologue
    .line 205
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.lenovo.ue.service"

    const-string v4, "com.lenovo.ue.service.LenovoUEServiceActivity"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 209
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private putConfigToAct()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->setbId(Z)V

    .line 228
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->setbExp(Z)V

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/setupwizard/DefaultActivity;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    invoke-virtual {v0, v1}, Lcom/lenovo/setupwizard/DefaultActivity;->setServerConfig(Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;)V

    .line 230
    return-void
.end method

.method private refreshView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    const v0, 0x7f0b0136

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090c50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    const v0, 0x7f0b0137

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090c51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    const v0, 0x7f0b013a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090bee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const v0, 0x7f0b013b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->setSpan(Landroid/widget/TextView;)V

    .line 102
    const v0, 0x7f0b013e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090c58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    const v0, 0x7f0b013f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->setLenovoLicenseSpan(Landroid/widget/TextView;)V

    .line 105
    return-void
.end method

.method private setLenovoLicenseSpan(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "txtView"    # Landroid/widget/TextView;

    .prologue
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090c56

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090c52

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "expSumary":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->getStartSpan(Ljava/lang/String;)I

    move-result v2

    .line 173
    .local v2, "startSpanIndex":I
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 174
    .local v1, "span":Landroid/text/Spannable;
    new-instance v3, Lcom/lenovo/setupwizard/fragments/FmtServer$2;

    invoke-direct {v3, p0}, Lcom/lenovo/setupwizard/fragments/FmtServer$2;-><init>(Lcom/lenovo/setupwizard/fragments/FmtServer;)V

    iget-object v4, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->spanText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 190
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 192
    return-void
.end method

.method private setSpan(Landroid/widget/TextView;)V
    .locals 6
    .param p1, "txtView"    # Landroid/widget/TextView;

    .prologue
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090bef

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090c52

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "expSumary":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->getStartSpan(Ljava/lang/String;)I

    move-result v2

    .line 149
    .local v2, "startSpanIndex":I
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 150
    .local v1, "span":Landroid/text/Spannable;
    new-instance v3, Lcom/lenovo/setupwizard/fragments/FmtServer$1;

    invoke-direct {v3, p0}, Lcom/lenovo/setupwizard/fragments/FmtServer$1;-><init>(Lcom/lenovo/setupwizard/fragments/FmtServer;)V

    iget-object v4, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->spanText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v2

    const/16 v5, 0x21

    invoke-interface {v1, v3, v2, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 165
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 167
    return-void
.end method


# virtual methods
.method public isAcceptLicense()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->putConfigToAct()V

    .line 221
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 112
    :sswitch_0
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 117
    :goto_1
    invoke-direct {p0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->putConfigToAct()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    .line 121
    :sswitch_1
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-static {}, Lcom/lenovo/setupwizard/fragments/DialogFmt;->newInstance()Lcom/lenovo/setupwizard/fragments/DialogFmt;

    move-result-object v0

    .line 124
    .local v0, "dialogFmt":Lcom/lenovo/setupwizard/fragments/DialogFmt;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 130
    .end local v0    # "dialogFmt":Lcom/lenovo/setupwizard/fragments/DialogFmt;
    :goto_2
    invoke-direct {p0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->putConfigToAct()V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 133
    :sswitch_2
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 134
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 139
    :goto_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/lenovo/setupwizard/DefaultActivity;

    invoke-virtual {v1}, Lcom/lenovo/setupwizard/DefaultActivity;->refreshUI()V

    .line 140
    invoke-direct {p0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->putConfigToAct()V

    goto :goto_0

    .line 136
    :cond_2
    new-instance v1, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lcom/lenovo/setupwizard/service/LicenseAgreementDialog;->showAlertDialog()V

    .line 137
    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->licenseCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_3

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x7f0b0135 -> :sswitch_0
        0x7f0b0139 -> :sswitch_1
        0x7f0b013d -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/setupwizard/DefaultActivity;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/DefaultActivity;->getServerConfig()Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    .line 48
    const v0, 0x7f090c52

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->spanText:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v0, 0x7f040059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .end local p2    # "container":Landroid/view/ViewGroup;
    check-cast p2, Landroid/view/ViewGroup;

    .line 55
    .restart local p2    # "container":Landroid/view/ViewGroup;
    invoke-direct {p0, p2}, Lcom/lenovo/setupwizard/fragments/FmtServer;->init(Landroid/view/ViewGroup;)V

    .line 56
    invoke-direct {p0, p2}, Lcom/lenovo/setupwizard/fragments/FmtServer;->refreshView(Landroid/view/ViewGroup;)V

    .line 57
    return-object p2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lenovo/setupwizard/DefaultActivity;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/DefaultActivity;->getServerConfig()Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    .line 65
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->idCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    iget-boolean v1, v1, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bId:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->config:Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    iget-boolean v1, v1, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bExp:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 67
    return-void
.end method

.method public setConfig(Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;)V
    .locals 2
    .param p1, "config"    # Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtServer;->expCheckBox:Landroid/widget/CheckBox;

    iget-boolean v1, p1, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bExp:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 236
    :cond_0
    return-void
.end method
