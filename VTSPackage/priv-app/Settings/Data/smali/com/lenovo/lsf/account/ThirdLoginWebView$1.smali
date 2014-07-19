.class Lcom/lenovo/lsf/account/ThirdLoginWebView$1;
.super Landroid/webkit/WebViewClient;
.source "ThirdLoginWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/ThirdLoginWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ThirdLoginWebView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 132
    const-string v0, "ThirdLoginWebView"

    const-string v1, "HHHHHHHHHHH onPageFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    # getter for: Lcom/lenovo/lsf/account/ThirdLoginWebView;->progressBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ThirdLoginWebView;->access$000(Lcom/lenovo/lsf/account/ThirdLoginWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    # getter for: Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ThirdLoginWebView;->access$100(Lcom/lenovo/lsf/account/ThirdLoginWebView;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    # getter for: Lcom/lenovo/lsf/account/ThirdLoginWebView;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ThirdLoginWebView;->access$100(Lcom/lenovo/lsf/account/ThirdLoginWebView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 136
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 127
    const-string v0, "ThirdLoginWebView"

    const-string v1, "HHHHHHHHHHH onPageStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    # getter for: Lcom/lenovo/lsf/account/ThirdLoginWebView;->progressBarLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ThirdLoginWebView;->access$000(Lcom/lenovo/lsf/account/ThirdLoginWebView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 139
    const-string v0, "ThirdLoginWebView"

    const-string v1, "HHHHHHHHHHH onReceivedSslError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 141
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 82
    const-string v4, "ThirdLoginWebView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HHHHHHHHHHH shouldOverrideUrlLoading url == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-nez p2, :cond_0

    .line 124
    :goto_0
    return v2

    .line 89
    :cond_0
    :try_start_0
    const-string v4, "wtai://wp/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 92
    const-string v4, "wtai://wp/mc;"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 93
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "wtai://wp/mc;"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 123
    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    :try_start_1
    const-string v4, "wtai://wp/sd;"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 103
    goto :goto_0

    .line 108
    :cond_3
    const-string v4, "wtai://wp/ap;"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, v3

    .line 110
    goto :goto_0

    .line 114
    :cond_4
    const-string v3, "http"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 116
    .local v0, "i":Landroid/content/Intent;
    iget-object v3, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 117
    iget-object v3, p0, Lcom/lenovo/lsf/account/ThirdLoginWebView$1;->this$0:Lcom/lenovo/lsf/account/ThirdLoginWebView;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
