.class Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;
.super Landroid/os/AsyncTask;
.source "AccountBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/AccountBindingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPhotoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity;Lcom/lenovo/lsf/account/AccountBindingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p2, "x1"    # Lcom/lenovo/lsf/account/AccountBindingActivity$1;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 135
    const-string v1, "AccountBindingActivity"

    const-string v2, "doInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 137
    .local v0, "url":Ljava/lang/String;
    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->getImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$200(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    const-string v0, "AccountBindingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute : result === "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mPhoto:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$300(Lcom/lenovo/lsf/account/AccountBindingActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lenovo/lsf/account/AccountBindingActivity$GetPhotoTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
