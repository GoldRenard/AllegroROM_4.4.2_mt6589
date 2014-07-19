.class Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;
.super Landroid/os/AsyncTask;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/thememanager/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetThemeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/thememanager/ThemeManager;


# direct methods
.method private constructor <init>(Lcom/mediatek/thememanager/ThemeManager;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/thememanager/ThemeManager;Lcom/mediatek/thememanager/ThemeManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/thememanager/ThemeManager;
    .param p2, "x1"    # Lcom/mediatek/thememanager/ThemeManager$1;

    .prologue
    .line 261
    invoke-direct {p0, p1}, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;-><init>(Lcom/mediatek/thememanager/ThemeManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 261
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 8
    .param p1, "types"    # [Ljava/lang/Integer;

    .prologue
    .line 264
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 265
    .local v3, "position":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 270
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    # getter for: Lcom/mediatek/thememanager/ThemeManager;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/mediatek/thememanager/ThemeManager;->access$200(Lcom/mediatek/thememanager/ThemeManager;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :try_start_1
    iget-object v4, p0, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    # getter for: Lcom/mediatek/thememanager/ThemeManager;->mThemeDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/thememanager/ThemeManager;->access$300(Lcom/mediatek/thememanager/ThemeManager;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_0

    .line 272
    const-string v4, "ThemeManager"

    const-string v6, "doInBackground error occured, mThemeDatas becomes null."

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 275
    .local v1, "config":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    # getter for: Lcom/mediatek/thememanager/ThemeManager;->mThemeDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/mediatek/thememanager/ThemeManager;->access$300(Lcom/mediatek/thememanager/ThemeManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/thememanager/ThemeData;

    invoke-virtual {v4}, Lcom/mediatek/thememanager/ThemeData;->getThemePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    .line 277
    const-string v4, "ThemeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground() am.updateConfiguration() config.skin = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 280
    monitor-exit v5

    .line 285
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    const/4 v4, 0x0

    return-object v4

    .line 280
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "ThemeManager"

    const-string v5, "Update configuration for theme changed failed."

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 261
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "unused"    # Ljava/lang/Void;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/thememanager/ThemeManager$SetThemeTask;->this$0:Lcom/mediatek/thememanager/ThemeManager;

    # getter for: Lcom/mediatek/thememanager/ThemeManager;->mStatusBarManager:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/mediatek/thememanager/ThemeManager;->access$400(Lcom/mediatek/thememanager/ThemeManager;)Landroid/app/StatusBarManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 296
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method
