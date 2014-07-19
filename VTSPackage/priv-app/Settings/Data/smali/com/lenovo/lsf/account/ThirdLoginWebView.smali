.class public Lcom/lenovo/lsf/account/ThirdLoginWebView;
.super Landroid/app/Activity;
.source "ThirdLoginWebView.java"


# static fields
.field static final SCHEME_WTAI:Ljava/lang/String; = "wtai://wp/"

.field static final SCHEME_WTAI_AP:Ljava/lang/String; = "wtai://wp/ap;"

.field static final SCHEME_WTAI_MC:Ljava/lang/String; = "wtai://wp/mc;"

.field static final SCHEME_WTAI_SD:Ljava/lang/String; = "wtai://wp/sd;"

.field private static final TAG:Ljava/lang/String; = "ThirdLoginWebView"


# instance fields
.field private mWebView:Landroid/webkit/WebView;

.field private final mWebViewClient:Landroid/webkit/WebViewClient;

.field private progressBarLayout:Landroid/widget/LinearLayout;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->url:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;-><init>(Lcom/lenovo/lsf/account/ThirdLoginWebView;)V

    iput-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 19
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/lsf/account/ThirdLoginWebView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ThirdLoginWebView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->progressBarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/lsf/account/ThirdLoginWebView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lsf/account/ThirdLoginWebView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 40
    const-string v1, "layout"

    const-string v2, "webview"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "layout"

    const-string v3, "title"

    invoke-static {p0, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v5, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 43
    const-string v1, "id"

    const-string v2, "webview"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    .line 44
    iget-object v1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 45
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 46
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 47
    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 48
    iget-object v1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 49
    iget-object v1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->url:Ljava/lang/String;

    .line 51
    const-string v1, "id"

    const-string v2, "progressBar_layout"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->progressBarLayout:Landroid/widget/LinearLayout;

    .line 52
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 53
    iget-object v1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 70
    const/4 v0, 0x0

    const-string v1, "string"

    const-string v2, "webview_refresh"

    invoke-static {p0, v1, v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 71
    return v3
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 150
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 151
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 77
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 65
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackPause(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackResume(Landroid/content/Context;)V

    .line 60
    return-void
.end method
