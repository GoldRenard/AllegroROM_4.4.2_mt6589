.class Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LaunchIconThemeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/launchericontheme/LaunchIconThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# static fields
.field public static final OP_ADD:I = 0x1

.field public static final OP_NONE:I = 0x0

.field public static final OP_REMOVE:I = 0x3

.field public static final OP_UNAVAILABLE:I = 0x4

.field public static final OP_UPDATE:I = 0x2

.field public static final OP_ZIPFILE_CONFIGURATION_UPDATE:I = 0x5


# instance fields
.field private mOp:I

.field private mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;


# direct methods
.method public constructor <init>(Lcom/lenovo/launchericontheme/LaunchIconThemeService;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "op"    # I
    .param p3, "packages"    # [Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p2, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mOp:I

    .line 138
    iput-object p3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 143
    iget-object v3, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 144
    .local v3, "packages":[Ljava/lang/String;
    array-length v0, v3

    .line 145
    .local v0, "N":I
    iget v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->mOp:I

    packed-switch v4, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 147
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 148
    const-string v4, "LaunchIconThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAllAppsList.addPackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    aget-object v5, v3, v2

    # invokes: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->addPackage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$100(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 153
    .end local v2    # "i":I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 154
    const-string v4, "LaunchIconThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAllAppsList.updatePackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    aget-object v5, v3, v2

    # invokes: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->updatePackage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$200(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)V

    .line 153
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 160
    .end local v2    # "i":I
    :pswitch_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_0

    .line 161
    const-string v4, "LaunchIconThemeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAllAppsList.removePackage "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    aget-object v5, v3, v2

    # invokes: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->removePackage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$300(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 166
    .end local v2    # "i":I
    :pswitch_3
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    # invokes: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->forceKillAppLists()V
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$400(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)V

    .line 167
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$500(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 168
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$600(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Landroid/content/res/Resources;

    move-result-object v4

    if-nez v4, :cond_1

    .line 169
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    iget-object v6, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    iget-object v7, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemePackageName:Ljava/lang/String;
    invoke-static {v7}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$700(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->createThemeResource(Ljava/lang/String;)Landroid/content/res/Resources;
    invoke-static {v6, v7}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$800(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    # setter for: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4, v6}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$602(Lcom/lenovo/launchericontheme/LaunchIconThemeService;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$600(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 172
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$600(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 173
    .local v1, "conf":Landroid/content/res/Configuration;
    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/content/res/Configuration;->bchange_local_theme:Z

    .line 174
    iget-object v4, p0, Lcom/lenovo/launchericontheme/LaunchIconThemeService$PackageUpdatedTask;->this$0:Lcom/lenovo/launchericontheme/LaunchIconThemeService;

    # getter for: Lcom/lenovo/launchericontheme/LaunchIconThemeService;->mThemeResource:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lenovo/launchericontheme/LaunchIconThemeService;->access$600(Lcom/lenovo/launchericontheme/LaunchIconThemeService;)Landroid/content/res/Resources;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 176
    .end local v1    # "conf":Landroid/content/res/Configuration;
    :cond_2
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
