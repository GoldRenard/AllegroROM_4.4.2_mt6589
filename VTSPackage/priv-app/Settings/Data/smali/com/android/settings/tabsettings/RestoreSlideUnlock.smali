.class public Lcom/android/settings/tabsettings/RestoreSlideUnlock;
.super Landroid/content/BroadcastReceiver;
.source "RestoreSlideUnlock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "slide_unlock_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    const/16 v2, 0x31

    .line 18
    .local v2, "val":B
    const/4 v0, 0x0

    .line 20
    .local v0, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v3, "/sys/board_properties/tpd_suspend_status"

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 25
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 30
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local v2    # "val":B
    :cond_0
    :goto_0
    return-void

    .line 22
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "val":B
    :catch_0
    move-exception v3

    .line 25
    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 26
    :catch_1
    move-exception v3

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v3

    .line 25
    :goto_2
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 26
    :cond_1
    :goto_3
    throw v3

    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    goto :goto_3

    .line 24
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 22
    .end local v0    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "os":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
