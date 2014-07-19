.class Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;
.super Ljava/lang/Object;
.source "PsLoginActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 1844
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 1851
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 1855
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    if-nez p1, :cond_2

    const/4 v1, 0x0

    :goto_0
    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z
    invoke-static {v2, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3202(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    .line 1856
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3200(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1857
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->refreshVerifyImage()V
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2800(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    .line 1858
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$100(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    move-result-object v1

    const/4 v2, 0x7

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1862
    :cond_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_3

    .line 1863
    const-string v1, "PsLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HHHHHHHHHHHH onPageSelected : viewPager === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v3, v3, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_1
    :goto_1
    return-void

    .line 1855
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1866
    :cond_3
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4200(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mError:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3000(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1867
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v1, v1, Lcom/lenovo/lsf/account/PsLoginActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1868
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 1869
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v3, "id"

    const-string v4, "login_layout_error"

    invoke-static {v1, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4202(Lcom/lenovo/lsf/account/PsLoginActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    goto :goto_1

    .line 1870
    :cond_4
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3200(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1871
    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPage:Landroid/view/View;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4800(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyListener;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v4, "id"

    const-string v5, "login_layout_error"

    invoke-static {v3, v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v2, v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4202(Lcom/lenovo/lsf/account/PsLoginActivity;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    goto :goto_1
.end method
