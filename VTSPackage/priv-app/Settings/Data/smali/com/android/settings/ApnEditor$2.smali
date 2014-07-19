.class Lcom/android/settings/ApnEditor$2;
.super Landroid/database/ContentObserver;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnEditor;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnEditor;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 234
    # getter for: Lcom/android/settings/ApnEditor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background changed apn "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/ApnEditor;->mFirstTime:Z
    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->access$802(Lcom/android/settings/ApnEditor;Z)Z

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/ApnEditor;->access$900(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$900(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$900(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    iget-object v2, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/settings/ApnEditor;->access$1000(Lcom/android/settings/ApnEditor;)Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/android/settings/ApnEditor;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnEditor;->access$1100()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    # setter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/settings/ApnEditor;->access$902(Lcom/android/settings/ApnEditor;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 244
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$900(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 245
    iget-object v0, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # invokes: Lcom/android/settings/ApnEditor;->fillUi()V
    invoke-static {v0}, Lcom/android/settings/ApnEditor;->access$1200(Lcom/android/settings/ApnEditor;)V

    .line 246
    return-void

    .line 239
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/ApnEditor;->access$900(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/settings/ApnEditor$2;->this$0:Lcom/android/settings/ApnEditor;

    # getter for: Lcom/android/settings/ApnEditor;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/ApnEditor;->access$900(Lcom/android/settings/ApnEditor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method
