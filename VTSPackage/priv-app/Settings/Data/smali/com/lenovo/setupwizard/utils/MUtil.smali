.class public Lcom/lenovo/setupwizard/utils/MUtil;
.super Ljava/lang/Object;
.source "MUtil.java"


# static fields
.field private static final GEMINI_FILE:Ljava/lang/String; = "/system/etc/setup_config"

.field private static final IS_GEMINI:Ljava/lang/String; = "is_gemini"

.field private static final LENOVO_EXP:Ljava/lang/String; = "lenovo_exp"

.field private static final LENOVO_ID:Ljava/lang/String; = "lenovo_id"

.field private static final TAG:Ljava/lang/String; = "MUtil"

.field private static final TOP_BG:Ljava/lang/String; = "top_bg"

.field private static final TOP_IMGS:Ljava/lang/String; = "top_imgs"

.field private static final USE_TOP_IMGS_BG:Ljava/lang/String; = "use_top_imgs_bg"

.field private static final ZERO_DATA:Ljava/lang/String; = "zero_data"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfig()Lcom/lenovo/setupwizard/beans/SetupConfig;
    .locals 7

    .prologue
    .line 30
    const/4 v3, 0x0

    .line 32
    .local v3, "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    :try_start_0
    new-instance v4, Lcom/lenovo/setupwizard/beans/SetupConfig;

    invoke-direct {v4}, Lcom/lenovo/setupwizard/beans/SetupConfig;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .end local v3    # "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    .local v4, "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    :try_start_1
    new-instance v2, Lorg/json/JSONTokener;

    const-string v5, "/system/etc/setup_config"

    invoke-static {v5}, Lcom/lenovo/setupwizard/utils/MUtil;->readFileByLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 34
    .local v2, "jTokener":Lorg/json/JSONTokener;
    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 36
    .local v1, "jObject":Lorg/json/JSONObject;
    const-string v5, "is_gemini"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/setupwizard/beans/SetupConfig;->setGemini(Z)V

    .line 37
    const-string v5, "zero_data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/setupwizard/beans/SetupConfig;->setZeroData(Z)V

    .line 38
    const-string v5, "top_imgs"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/setupwizard/beans/SetupConfig;->setTopImgs([Ljava/lang/String;)V

    .line 39
    const-string v5, "top_bg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lenovo/setupwizard/beans/SetupConfig;->setTopBg(Ljava/lang/String;)V

    .line 40
    const-string v5, "use_top_imgs_bg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/setupwizard/beans/SetupConfig;->setUseTopImgBg(Z)V

    .line 41
    const-string v5, "lenovo_id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/setupwizard/beans/SetupConfig;->setLenovoId(Z)V

    .line 42
    const-string v5, "lenovo_exp"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lenovo/setupwizard/beans/SetupConfig;->setLenovoExp(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 48
    .end local v1    # "jObject":Lorg/json/JSONObject;
    .end local v2    # "jTokener":Lorg/json/JSONTokener;
    .end local v4    # "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    .restart local v3    # "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    :goto_0
    return-object v3

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    .restart local v4    # "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    .restart local v3    # "sConfig":Lcom/lenovo/setupwizard/beans/SetupConfig;
    goto :goto_1
.end method

.method public static readFileByLines(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 58
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, "content":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 61
    .local v5, "tempString":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 66
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "tempString":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 67
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    if-eqz v3, :cond_0

    .line 71
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 76
    :cond_0
    :goto_2
    const/4 v6, 0x0

    .end local v1    # "e":Ljava/io/IOException;
    :goto_3
    return-object v6

    .line 64
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempString":Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v6

    .line 69
    if-eqz v4, :cond_2

    .line 71
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_4
    move-object v3, v4

    .line 73
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 69
    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v5    # "tempString":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v3, :cond_3

    .line 71
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 73
    :cond_3
    :goto_6
    throw v6

    .line 72
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "content":Ljava/lang/StringBuilder;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "tempString":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_4

    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "tempString":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_6

    .line 69
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 66
    :catch_4
    move-exception v1

    goto :goto_1
.end method
