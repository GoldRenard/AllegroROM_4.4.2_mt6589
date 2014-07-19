.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field private static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final EXTRA_MESSAGE:Ljava/lang/String; = "message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2546
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)V
    .locals 14
    .param p0, "parent"    # Lcom/android/settings/DataUsageSummary;

    .prologue
    const-wide v12, 0x140000000L

    const v11, 0x7f090b0e

    .line 2551
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2589
    :goto_0
    return-void

    .line 2553
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2555
    .local v8, "res":Landroid/content/res/Resources;
    # getter for: Lcom/android/settings/DataUsageSummary;->mPolicyEditor:Lcom/android/settings/net/NetworkPolicyEditor;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$800(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/net/NetworkPolicyEditor;

    move-result-object v9

    # getter for: Lcom/android/settings/DataUsageSummary;->mTemplate:Landroid/net/NetworkTemplate;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$4200(Lcom/android/settings/DataUsageSummary;)Landroid/net/NetworkTemplate;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/net/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v9

    iget-wide v9, v9, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v9, v9

    const v10, 0x3f99999a

    mul-float/2addr v9, v10

    float-to-long v6, v9

    .line 2560
    .local v6, "minLimitBytes":J
    # getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 2561
    .local v1, "currentTab":Ljava/lang/String;
    const-string v9, "3g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 2562
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2563
    .local v5, "message":Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2581
    .local v3, "limitBytes":J
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2582
    .local v0, "args":Landroid/os/Bundle;
    const-string v9, "message"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2583
    const-string v9, "limitBytes"

    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2585
    new-instance v2, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 2586
    .local v2, "dialog":Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 2587
    const/4 v9, 0x0

    invoke-virtual {v2, p0, v9}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2588
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "confirmLimit"

    invoke-virtual {v2, v9, v10}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2564
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog":Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_1
    const-string v9, "4g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2565
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2566
    .restart local v5    # "message":Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .restart local v3    # "limitBytes":J
    goto :goto_1

    .line 2568
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_2
    const-string v9, "sim1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "sim2"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "sim3"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2571
    :cond_3
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2572
    .restart local v5    # "message":Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .restart local v3    # "limitBytes":J
    goto :goto_1

    .line 2574
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_4
    const-string v9, "mobile"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2575
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2576
    .restart local v5    # "message":Ljava/lang/CharSequence;
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .restart local v3    # "limitBytes":J
    goto :goto_1

    .line 2578
    .end local v3    # "limitBytes":J
    .end local v5    # "message":Ljava/lang/CharSequence;
    :cond_5
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown current tab: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2593
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2595
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2596
    .local v4, "message":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2598
    .local v2, "limitBytes":J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2599
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x7f090b0d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2600
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2602
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method