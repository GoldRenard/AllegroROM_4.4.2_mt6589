.class Lcom/android/settings/ApnInformation$3;
.super Landroid/database/ContentObserver;
.source "ApnInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApnInformation;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnInformation;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnInformation;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    .line 301
    # getter for: Lcom/android/settings/ApnInformation;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnInformation;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "background changed apn "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    iget-object v1, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    # getter for: Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/settings/ApnInformation;->access$400(Lcom/android/settings/ApnInformation;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    iget-object v1, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    iget-object v2, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    # getter for: Lcom/android/settings/ApnInformation;->mUri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/settings/ApnInformation;->access$500(Lcom/android/settings/ApnInformation;)Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/android/settings/ApnInformation;->sProjection:[Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnInformation;->access$600()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    # setter for: Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/android/settings/ApnInformation;->access$402(Lcom/android/settings/ApnInformation;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 304
    iget-object v0, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    # getter for: Lcom/android/settings/ApnInformation;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/settings/ApnInformation;->access$400(Lcom/android/settings/ApnInformation;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 305
    iget-object v0, p0, Lcom/android/settings/ApnInformation$3;->this$0:Lcom/android/settings/ApnInformation;

    # invokes: Lcom/android/settings/ApnInformation;->fillUi()V
    invoke-static {v0}, Lcom/android/settings/ApnInformation;->access$700(Lcom/android/settings/ApnInformation;)V

    .line 306
    return-void
.end method
