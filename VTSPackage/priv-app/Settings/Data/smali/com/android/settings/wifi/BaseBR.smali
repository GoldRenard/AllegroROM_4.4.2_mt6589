.class public Lcom/android/settings/wifi/BaseBR;
.super Ljava/lang/Object;
.source "BaseBR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/BaseBR$ResponseResult;,
        Lcom/android/settings/wifi/BaseBR$TransProgressListener;
    }
.end annotation


# instance fields
.field protected m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/settings/wifi/BaseBR;->m_context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private appKeyToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v0, "wifi_config_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "/data/data/com.android.settings/wpa_supplicant.conf"

    .line 184
    :goto_0
    return-object v0

    .line 176
    :cond_0
    const-string v0, "rt1_config_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "/data/data/com.android.settings/ringtone1.mp3"

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "flag_config_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    const-string v0, "/data/data/com.android.settings/FlagsBackUp.xml"

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "wp_config_backup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "/data/data/com.android.settings/wallpaper.jpg"

    goto :goto_0

    .line 184
    :cond_3
    const-string v0, ""

    goto :goto_0
.end method

.method private prepareCmd(Ljava/lang/String;)V
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/data/data/com.android.settings/run.sh"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "os_dest":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 95
    .local v0, "b":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 96
    .local v1, "c":I
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 97
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "b":[B
    .end local v1    # "c":I
    .end local v3    # "os_dest":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "MyTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareCmd failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected checkEnv()Z
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "MyTag"

    const-string v1, "on-line"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/BaseBR;->m_context:Landroid/content/Context;

    const-string v1, "contact.cloud.lps.lenovo.com"

    new-instance v2, Lcom/android/settings/wifi/BaseBR$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/BaseBR$1;-><init>(Lcom/android/settings/wifi/BaseBR;)V

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsAuthenServiceL;->getStData(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/lsf/account/PsAuthenServiceL$OnAuthenListener;)V

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "srcFile"    # Ljava/lang/String;
    .param p2, "dstFile"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 58
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cp "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "chmod 777 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/BaseBR;->prepareCmd(Ljava/lang/String;)V

    .line 60
    const/16 v10, 0x200

    new-array v0, v10, [B

    .line 61
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 62
    .local v5, "read_count":I
    const/4 v6, 0x0

    .line 64
    .local v6, "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    :try_start_0
    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v10, "supercmdlocalsocket"

    invoke-direct {v3, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "localHostAddress":Landroid/net/LocalSocketAddress;
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V

    .line 66
    .local v4, "localSocket":Landroid/net/LocalSocket;
    invoke-virtual {v4, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 67
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 69
    new-instance v8, Ljava/io/PrintWriter;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v8, v10, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    .line 70
    .local v8, "socketWriter":Ljava/io/PrintWriter;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 71
    .local v1, "din":Ljava/io/DataInputStream;
    const-string v10, "/data/data/com.android.settings/run.sh"

    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 74
    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 75
    new-instance v7, Lcom/android/settings/wifi/BaseBR$ResponseResult;

    invoke-direct {v7, v0, v5}, Lcom/android/settings/wifi/BaseBR$ResponseResult;-><init>([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v6    # "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    .local v7, "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    :try_start_1
    const-string v10, "MyTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "read_count  ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v10, "MyTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "result="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/settings/wifi/BaseBR$ResponseResult;->getResult()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v10, "MyTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/settings/wifi/BaseBR$ResponseResult;->getErrNo()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v10, "MyTag"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "msg="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Lcom/android/settings/wifi/BaseBR$ResponseResult;->getErrMsg()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 87
    .end local v1    # "din":Ljava/io/DataInputStream;
    .end local v3    # "localHostAddress":Landroid/net/LocalSocketAddress;
    .end local v4    # "localSocket":Landroid/net/LocalSocket;
    .end local v7    # "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    .end local v8    # "socketWriter":Ljava/io/PrintWriter;
    .restart local v6    # "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    :goto_0
    return v9

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    const/4 v9, 0x0

    goto :goto_0

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    .restart local v1    # "din":Ljava/io/DataInputStream;
    .restart local v3    # "localHostAddress":Landroid/net/LocalSocketAddress;
    .restart local v4    # "localSocket":Landroid/net/LocalSocket;
    .restart local v7    # "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    .restart local v8    # "socketWriter":Ljava/io/PrintWriter;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7    # "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    .restart local v6    # "rr":Lcom/android/settings/wifi/BaseBR$ResponseResult;
    goto :goto_1
.end method

.method protected downloadFile(Ljava/lang/String;)Z
    .locals 14
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v5, 0x0

    .line 136
    .local v5, "is":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 139
    .local v8, "os":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/android/settings/wifi/BaseBR;->m_context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;

    move-result-object v10

    .line 140
    .local v10, "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    const-string v11, "category"

    invoke-virtual {v10, p1, v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;->queryLatestProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;

    move-result-object v7

    .line 142
    .local v7, "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;->getAttachment()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "Url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 145
    .local v3, "conn":Ljava/net/URLConnection;
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    if-nez v6, :cond_2

    const/4 v11, 0x0

    .line 165
    if-eqz v6, :cond_0

    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    :cond_0
    if-eqz v8, :cond_1

    throw v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :cond_1
    :goto_0
    move-object v5, v6

    .line 170
    .end local v0    # "Url":Ljava/net/URL;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .end local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_1
    return v11

    .line 148
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "Url":Ljava/net/URL;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .restart local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    :cond_2
    :try_start_2
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/BaseBR;->appKeyToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .local v9, "os":Ljava/io/FileOutputStream;
    const/16 v11, 0x400

    :try_start_3
    new-array v1, v11, [B

    .line 151
    .local v1, "b":[B
    :goto_2
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "c":I
    if-lez v2, :cond_5

    .line 152
    const/4 v11, 0x0

    invoke-virtual {v9, v1, v11, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 161
    .end local v1    # "b":[B
    .end local v2    # "c":I
    :catch_0
    move-exception v4

    move-object v8, v9

    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 162
    .end local v0    # "Url":Ljava/net/URL;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .end local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    .local v4, "e":Ljava/lang/Exception;
    .restart local v5    # "is":Ljava/io/InputStream;
    :goto_3
    :try_start_4
    const-string v11, "MyTag"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "downloadFile fail:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    if-eqz v5, :cond_3

    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 170
    :cond_4
    :goto_4
    const/4 v11, 0x0

    goto :goto_1

    .line 155
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "Url":Ljava/net/URL;
    .restart local v1    # "b":[B
    .restart local v2    # "c":I
    .restart local v3    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 156
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 158
    const-string v11, "MyTag"

    const-string v12, "downloadFile ok"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 160
    const/4 v11, 0x1

    .line 165
    if-eqz v6, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_7
    :goto_5
    move-object v8, v9

    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 167
    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 164
    .end local v0    # "Url":Ljava/net/URL;
    .end local v1    # "b":[B
    .end local v2    # "c":I
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .end local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    :catchall_0
    move-exception v11

    .line 165
    :goto_6
    if-eqz v5, :cond_8

    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V

    .line 166
    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 167
    :cond_9
    :goto_7
    throw v11

    :catch_1
    move-exception v12

    goto :goto_7

    .line 164
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "Url":Ljava/net/URL;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .restart local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    :catchall_1
    move-exception v11

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_6

    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 167
    .end local v0    # "Url":Ljava/net/URL;
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .end local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 161
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_3

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v0    # "Url":Ljava/net/URL;
    .restart local v3    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "lastBean":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesBackupInfo;
    .restart local v10    # "queryAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileQueryAPI;
    :catch_4
    move-exception v4

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 167
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "b":[B
    .restart local v2    # "c":I
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v12

    goto :goto_5

    .end local v1    # "b":[B
    .end local v2    # "c":I
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v12

    goto :goto_0
.end method

.method protected uploadFile(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 107
    iget-object v7, p0, Lcom/android/settings/wifi/BaseBR;->m_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    move-result-object v4

    .line 109
    .local v4, "syncAPI":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;>;"
    :try_start_0
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    invoke-direct {v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    const-string v7, "category"

    invoke-virtual {v2, v7}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;->setCategory(Ljava/lang/String;)V

    .line 112
    new-instance v5, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/BaseBR;->appKeyToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v5, "uploadFile":Ljava/io/File;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;

    invoke-direct {v1, v5, v2}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V

    .line 116
    .local v1, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;"
    new-instance v7, Lcom/android/settings/wifi/BaseBR$TransProgressListener;

    const-string v8, "wifi"

    invoke-direct {v7, v8}, Lcom/android/settings/wifi/BaseBR$TransProgressListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result v3

    .line 117
    .local v3, "ret":I
    if-nez v3, :cond_0

    .line 118
    const-string v7, "MyTag"

    const-string v8, "uploadFile ok "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v6, 0x1

    .line 129
    .end local v1    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;"
    .end local v2    # "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    .end local v3    # "ret":I
    .end local v5    # "uploadFile":Ljava/io/File;
    :goto_0
    return v6

    .line 121
    .restart local v1    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;"
    .restart local v2    # "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    .restart local v3    # "ret":I
    .restart local v5    # "uploadFile":Ljava/io/File;
    :cond_0
    const-string v7, "MyTag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uploadFile failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    .end local v1    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;>;"
    .end local v2    # "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    .end local v3    # "ret":I
    .end local v5    # "uploadFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "MyTag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uploadFile failed:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
