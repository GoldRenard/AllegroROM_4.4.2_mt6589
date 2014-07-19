.class public Lcom/mediatek/wireless/UsbSharingInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSharingInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbSharingInfo"

.field private static final WIN_EIGHT:I = 0x4

.field private static final WIN_SEVEN:I = 0x3

.field private static final WIN_VISTA:I = 0x2

.field private static final WIN_XP:I = 0x1


# instance fields
.field private mBackBtn:Landroid/widget/Button;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mNextBtn:Landroid/widget/Button;

.field private mSelectedSystemIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 80
    iget-object v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mNextBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 82
    iget v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mSelectedSystemIndex:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mSelectedSystemIndex:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->setUsbInternet(ZI)Z

    .line 93
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    .line 94
    return-void

    .line 84
    :cond_2
    iget v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mSelectedSystemIndex:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mSelectedSystemIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 85
    :cond_3
    iget-object v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v2, v2}, Landroid/net/ConnectivityManager;->setUsbInternet(ZI)Z

    goto :goto_0

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mBackBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 88
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v0, "system_type"

    iget v1, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mSelectedSystemIndex:I

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-class v0, Lcom/mediatek/wireless/UsbSharingChoose;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f09029b

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 91
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f050000

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 54
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 55
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "UsbSharingInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate activity,bundle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const-string v1, "system_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mSelectedSystemIndex:I

    .line 60
    :cond_0
    const-string v1, "UsbSharingInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mSelectedSystemIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400e3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0b0240

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 67
    .local v1, "mProgressbarLayout":Landroid/widget/LinearLayout;
    const v3, 0x7f0b0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mBackBtn:Landroid/widget/Button;

    .line 68
    iget-object v3, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v3, 0x7f0b0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mNextBtn:Landroid/widget/Button;

    .line 70
    iget-object v3, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mNextBtn:Landroid/widget/Button;

    const v4, 0x7f0905d9

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v3, p0, Lcom/mediatek/wireless/UsbSharingInfo;->mNextBtn:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 74
    .local v0, "child":Landroid/widget/ImageView;
    const v3, 0x7f020163

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    return-object v2
.end method
