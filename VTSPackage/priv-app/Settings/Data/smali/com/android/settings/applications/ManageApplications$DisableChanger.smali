.class Lcom/android/settings/applications/ManageApplications$DisableChanger;
.super Landroid/os/AsyncTask;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisableChanger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field count:I

.field flag:Z

.field final mPkgManager:Landroid/content/pm/PackageManager;

.field final mPkgName:Ljava/lang/String;

.field final mState:I


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;I)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    const/4 v1, 0x0

    .line 2403
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2400
    iput v1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->count:I

    .line 2401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->flag:Z

    .line 2404
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mPkgName:Ljava/lang/String;

    .line 2405
    iput p3, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mState:I

    .line 2406
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 2407
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->flag:Z

    .line 2408
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;III)V
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "now"    # I
    .param p5, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 2411
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2400
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->count:I

    .line 2401
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->flag:Z

    .line 2412
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mPkgName:Ljava/lang/String;

    .line 2413
    iput p3, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mState:I

    .line 2414
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mPkgManager:Landroid/content/pm/PackageManager;

    .line 2415
    iput p5, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->count:I

    .line 2416
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->flag:Z

    .line 2417
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 2421
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mPkgManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->mState:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 2423
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2428
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->flag:Z

    if-eqz v0, :cond_0

    .line 2429
    sget v0, Lcom/android/settings/applications/ManageApplications;->disable_total:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/applications/ManageApplications;->disable_total:I

    .line 2430
    sget v0, Lcom/android/settings/applications/ManageApplications;->disable_total:I

    iget v1, p0, Lcom/android/settings/applications/ManageApplications$DisableChanger;->count:I

    if-ne v0, v1, :cond_0

    .line 2431
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->selectall_flag:Z

    .line 2432
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/applications/ManageApplications;->disable_total:I

    .line 2435
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2436
    return-void
.end method
