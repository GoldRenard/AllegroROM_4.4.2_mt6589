.class public Lcom/lesafe/antiInterface/SafeSignSupport;
.super Ljava/lang/Object;
.source "SafeSignSupport.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallSign(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 13
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 14
    .local v6, "cursoNet":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 16
    .local v7, "cursorLocal":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "content://com.lenovo.safecenter.LocalBlackProvider/signlocal"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "smalltype"

    aput-object v4, v2, v3

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 18
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 16
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 19
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "smalltype"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    if-eqz v7, :cond_0

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_0
    if-eqz v6, :cond_1

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 34
    :cond_1
    :goto_0
    return-object v1

    .line 23
    :cond_2
    :try_start_1
    const-string v1, "content://com.lenovo.safecenter.LocalBlackProvider/signnet"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "signtype"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "signcount"

    aput-object v4, v2, v3

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PHONE_NUMBERS_EQUAL(phonenumber,\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\',0) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    .line 23
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 26
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 28
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "signtype"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "signcount"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    if-eqz v7, :cond_3

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_3
    if-eqz v6, :cond_1

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 37
    :cond_4
    if-eqz v7, :cond_5

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_5
    if-eqz v6, :cond_6

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v1, v9

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v8

    .line 33
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    if-eqz v7, :cond_7

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_7
    if-eqz v6, :cond_8

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v1, v9

    .line 34
    goto/16 :goto_0

    .line 36
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 37
    if-eqz v7, :cond_9

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 41
    :cond_9
    if-eqz v6, :cond_a

    .line 43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_a
    throw v1
.end method

.method public static getDescFromType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "signType"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "stype":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 55
    const-string v1, "\u63a8\u9500"

    .line 67
    :goto_0
    return-object v1

    .line 56
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 57
    const-string v1, "\u623f\u4ea7\u4e2d\u4ecb"

    goto :goto_0

    .line 58
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 59
    const-string v1, "\u8bc8\u9a97"

    goto :goto_0

    .line 60
    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 61
    const-string v1, "\u4fdd\u9669"

    goto :goto_0

    .line 62
    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 63
    const-string v1, "\u7406\u8d22\u6295\u8d44"

    goto :goto_0

    .line 64
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 65
    const-string v1, "\u552e\u540e"

    goto :goto_0

    .line 67
    :cond_5
    const-string v1, "\u5176\u4ed6"

    goto :goto_0
.end method
