.class public Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
.super Ljava/lang/Object;
.source "AlertDialogBuilder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private contentPanel:Landroid/widget/LinearLayout;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mCancelable:Z

.field private mContext:Landroid/content/Context;

.field private mainView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;

.field private negativeButton:Landroid/widget/Button;

.field private negativeOnClickListener:Landroid/view/View$OnClickListener;

.field private positiveButton:Landroid/widget/Button;

.field private positiveOnClickListener:Landroid/view/View$OnClickListener;

.field private titleView:Landroid/widget/TextView;

.field private topPanel:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mCancelable:Z

    .line 39
    iput-object p1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->initViews()V

    .line 41
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->layoutInflater:Landroid/view/LayoutInflater;

    .line 45
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "alert_dialog_holo"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "topPanel"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->topPanel:Landroid/widget/LinearLayout;

    .line 47
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "contentPanel"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->contentPanel:Landroid/widget/LinearLayout;

    .line 48
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "alertTitle"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->titleView:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "message"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->messageView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "dialog_button_ok"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "dialog_button_cancel"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public create()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 138
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    .line 139
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    iget-boolean v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 140
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 141
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 149
    .local v0, "id":I
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "dialog_button_ok"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 164
    :cond_1
    :goto_0
    return-void

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v2, "id"

    const-string v3, "dialog_button_cancel"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeOnClickListener:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCancelable(Z)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 0
    .param p1, "cancelable"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mCancelable:Z

    .line 134
    return-object p0
.end method

.method public setMessage(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 1
    .param p1, "messageId"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :cond_0
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->messageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iput-object p2, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeOnClickListener:Landroid/view/View$OnClickListener;

    .line 120
    :cond_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iput-object p2, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->negativeOnClickListener:Landroid/view/View$OnClickListener;

    .line 129
    :cond_0
    return-object p0
.end method

.method public setPositiveButton(ILandroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iput-object p2, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveOnClickListener:Landroid/view/View$OnClickListener;

    .line 102
    :cond_0
    return-object p0
.end method

.method public setPositiveOnClickListener(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iput-object p2, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->positiveOnClickListener:Landroid/view/View$OnClickListener;

    .line 111
    :cond_0
    return-object p0
.end method

.method public setTitle(I)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 59
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->topPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->titleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->topPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_0
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/lenovo/lsf/account/view/AlertDialogBuilder;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->contentPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mainView:Landroid/view/View;

    iget-object v2, p0, Lcom/lenovo/lsf/account/view/AlertDialogBuilder;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "custom"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 90
    .local v0, "custom":Landroid/widget/FrameLayout;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 93
    .end local v0    # "custom":Landroid/widget/FrameLayout;
    :cond_0
    return-object p0
.end method
