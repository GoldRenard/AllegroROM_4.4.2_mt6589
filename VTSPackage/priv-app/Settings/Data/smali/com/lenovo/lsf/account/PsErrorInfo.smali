.class public Lcom/lenovo/lsf/account/PsErrorInfo;
.super Ljava/lang/Object;
.source "PsErrorInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mErrorCode"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 13
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    const-string v2, "string"

    const-string v3, "psauthen_error1"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "mErrorString":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 15
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_0
    const-string v2, "101"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    const-string v2, "string"

    const-string v3, "psauthen_error4"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto :goto_0

    .line 17
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_1
    const-string v2, "100"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "103"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "135"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    :cond_2
    const-string v2, "string"

    const-string v3, "psauthen_error3"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto :goto_0

    .line 19
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_3
    const-string v2, "105"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    const-string v2, "string"

    const-string v3, "psauthen_error5"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto :goto_0

    .line 21
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_4
    const-string v2, "111"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 22
    const-string v2, "string"

    const-string v3, "psauthen_error6"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto :goto_0

    .line 23
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_5
    const-string v2, "151"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    const-string v2, "string"

    const-string v3, "psauthen_error7"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto :goto_0

    .line 25
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_6
    const-string v2, "200"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 26
    const-string v2, "string"

    const-string v3, "psauthen_error8"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto/16 :goto_0

    .line 27
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_7
    const-string v2, "202"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    const-string v2, "string"

    const-string v3, "psauthen_error2"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto/16 :goto_0

    .line 29
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_8
    const-string v2, "204"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 30
    const-string v2, "string"

    const-string v3, "psauthen_error10"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto/16 :goto_0

    .line 31
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_9
    const-string v2, "999"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 32
    const-string v2, "string"

    const-string v3, "psauthen_text20"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto/16 :goto_0

    .line 33
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_a
    const-string v2, "120"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 34
    const-string v2, "string"

    const-string v3, "tgt_error"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto/16 :goto_0

    .line 36
    .end local v0    # "mErrorString":Ljava/lang/String;
    :cond_b
    const-string v2, "string"

    const-string v3, "psauthen_error8"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "mErrorString":Ljava/lang/String;
    goto/16 :goto_0
.end method
