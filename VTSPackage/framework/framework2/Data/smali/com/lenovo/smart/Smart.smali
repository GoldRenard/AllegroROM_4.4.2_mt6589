.class public Lcom/lenovo/smart/Smart;
.super Ljava/lang/Object;
.source "Smart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/smart/Smart$ConductionProvider;,
        Lcom/lenovo/smart/Smart$HabitProvider;,
        Lcom/lenovo/smart/Smart$ConductionIntent;,
        Lcom/lenovo/smart/Smart$HabitIntent;,
        Lcom/lenovo/smart/Smart$Extra;
    }
.end annotation


# static fields
.field public static final MO_ENTRANCE_CALL_LOG:I = 0x14

.field public static final MO_ENTRANCE_DIALER_PAD:I = 0xa

.field public static final MO_ENTRANCE_END:I = 0x3c

.field public static final MO_ENTRANCE_PHONE_BOOK:I = 0x1e

.field public static final MO_ENTRANCE_SMS:I = 0x28

.field public static final MO_ENTRANCE_STARRED:I = 0x32

.field public static final SMART_CONFIG:I

.field private static final TAG:Ljava/lang/String; = "Smart"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-string v0, "ro.com.lenovo.smart.config"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/lenovo/smart/Smart;->SMART_CONFIG:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static addApplicationDurationLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "date"    # J
    .param p5, "duration"    # J

    .prologue
    .line 174
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    new-instance v0, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v1, "application"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v0, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v1, "Type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 179
    const-string v1, "Package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "class_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string v1, "Time"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 182
    const-string v1, "duration"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    invoke-static {p0, v0}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addApplicationStartLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "startType"    # I

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    .line 126
    .local v0, "duration":J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 129
    .local v3, "time":J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v5, "application"

    invoke-direct {v2, v5}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v5, "Type"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    const-string v5, "Package"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v5, "class_name"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v5, "Time"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    const-string v5, "duration"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 136
    const-string v5, "parameter"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    const-string v5, "Where"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-static {p0, v2}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addApplicationStopLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "endType"    # I

    .prologue
    .line 150
    const-wide/16 v0, 0x0

    .line 152
    .local v0, "duration":J
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 155
    .local v3, "time":J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v5, "application"

    invoke-direct {v2, v5}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v2, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v5, "Type"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v5, "Package"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v5, "class_name"

    invoke-virtual {v2, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v5, "Time"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 161
    const-string v5, "duration"

    invoke-virtual {v2, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 162
    const-string v5, "parameter"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const-string v5, "Flag"

    invoke-virtual {v2, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 167
    invoke-static {p0, v2}, Lcom/lenovo/smart/Smart;->sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addCallLog(Landroid/content/Context;Ljava/lang/String;IJIII)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "start"    # J
    .param p5, "duration"    # I
    .param p6, "simId"    # I
    .param p7, "vtCall"    # I

    .prologue
    .line 38
    new-instance v0, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v1, "telephony"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    if-lez p7, :cond_0

    .line 41
    const-string v1, "transaction_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 46
    :goto_0
    const-string v1, "transaction_sub_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    const-string v1, "date"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 49
    const-string v1, "duration"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "sim_ID"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 53
    return-void

    .line 43
    :cond_0
    const-string v1, "transaction_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static addMoMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    .local v0, "date":J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 98
    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    return-void
.end method

.method public static addMoSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    .local v0, "date":J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    const-string v3, "transaction_sub_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 64
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method public static addMtMmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    .local v0, "date":J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const-string v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 112
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 114
    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void
.end method

.method public static addMtSmsLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 76
    .local v0, "date":J
    new-instance v2, Lcom/lenovo/smart/Smart$HabitIntent;

    const-string v3, "telephony"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$HabitIntent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "intent":Lcom/lenovo/smart/Smart$HabitIntent;
    const-string v3, "transaction_type"

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 79
    const-string v3, "transaction_sub_type"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v3, "number"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v3, "date"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 82
    const-string v3, "sim_ID"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public static addStatics_ImportPhoneBook(Landroid/content/Context;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "importFrom"    # I

    .prologue
    .line 498
    const/16 v1, 0xa

    .line 499
    .local v1, "IMPORT_FROM_INIT":I
    const/16 v4, 0xa

    .line 500
    .local v4, "IMPORT_FROM_SIM":I
    const/16 v3, 0x14

    .line 501
    .local v3, "IMPORT_FROM_SD":I
    const/16 v0, 0x1e

    .line 502
    .local v0, "IMPORT_FROM_CLOUD":I
    const/16 v2, 0x28

    .line 508
    .local v2, "IMPORT_FROM_PC_SYNC":I
    sparse-switch p1, :sswitch_data_0

    .line 531
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 532
    .local v5, "exception":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 545
    .end local v5    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 510
    :sswitch_0
    const-string v7, "import_from_sim"

    .line 539
    .local v7, "paramName":Ljava/lang/String;
    :goto_1
    new-instance v6, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v8, "statics"

    invoke-direct {v6, v8}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 541
    .local v6, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v8, "statics_type"

    const-string v9, "import_phone_book"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 542
    const-string v8, "param_name"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 515
    .end local v6    # "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v7    # "paramName":Ljava/lang/String;
    :sswitch_1
    const-string v7, "import_from_sd"

    .line 516
    .restart local v7    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 520
    .end local v7    # "paramName":Ljava/lang/String;
    :sswitch_2
    const-string v7, "import_from_cloud"

    .line 521
    .restart local v7    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 525
    .end local v7    # "paramName":Ljava/lang/String;
    :sswitch_3
    const-string v7, "import_from_pc_sync"

    .line 526
    .restart local v7    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 508
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public static addStatics_InstallingThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 551
    const-string v0, "package:"

    .line 554
    .local v0, "PACKAGE_INTENT_PREFIX":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 555
    :cond_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 556
    .local v1, "exception":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 572
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 561
    :cond_1
    const-string v3, "package:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 562
    const-string v3, "package:"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 566
    :cond_2
    new-instance v2, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v3, "statics"

    invoke-direct {v2, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v2, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v3, "statics_type"

    const-string v4, "installing_third_party_app"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    const-string v3, "param_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatics_MoCall(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entrance"    # I

    .prologue
    .line 369
    const-string v3, ""

    .line 370
    .local v3, "paramName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 372
    .local v2, "isEntranceError":Z
    const/16 v4, 0xa

    if-ge p1, v4, :cond_0

    .line 373
    const/4 v2, 0x1

    .line 423
    :goto_0
    if-eqz v2, :cond_b

    .line 424
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 425
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 436
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 374
    :cond_0
    const/16 v4, 0x14

    if-ge p1, v4, :cond_2

    .line 376
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0xa

    if-ge p1, v4, :cond_1

    .line 378
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_DIALER_PAD:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0xa

    aget-object v3, v4, v5

    goto :goto_0

    .line 381
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 383
    :cond_2
    const/16 v4, 0x1e

    if-ge p1, v4, :cond_4

    .line 385
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x14

    if-ge p1, v4, :cond_3

    .line 387
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_CALL_LOG:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x14

    aget-object v3, v4, v5

    goto :goto_0

    .line 390
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 392
    :cond_4
    const/16 v4, 0x28

    if-ge p1, v4, :cond_6

    .line 394
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1e

    if-ge p1, v4, :cond_5

    .line 396
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_PHONE_BOOK:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x1e

    aget-object v3, v4, v5

    goto :goto_0

    .line 399
    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    .line 401
    :cond_6
    const/16 v4, 0x32

    if-ge p1, v4, :cond_8

    .line 403
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x28

    if-ge p1, v4, :cond_7

    .line 405
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_SMS:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x28

    aget-object v3, v4, v5

    goto :goto_0

    .line 408
    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    .line 410
    :cond_8
    const/16 v4, 0x3c

    if-ge p1, v4, :cond_a

    .line 412
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x32

    if-ge p1, v4, :cond_9

    .line 414
    sget-object v4, Lcom/lenovo/smart/Smart$ConductionProvider$Statics;->PARAM_NAME_MO_CALL_FROM_STARRED:[Ljava/lang/String;

    add-int/lit8 v5, p1, -0x32

    aget-object v3, v4, v5

    goto :goto_0

    .line 417
    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    .line 420
    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    .line 430
    :cond_b
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v4, "statics"

    invoke-direct {v1, v4}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v1, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v4, "statics_type"

    const-string v5, "mo_call_entrance"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v4, "param_name"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public static addStatics_MoCallMistake(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "statics"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "statics_type"

    const-string v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v1, "param_name"

    const-string v2, "mo_call_mistake"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 449
    return-void
.end method

.method public static addStatics_SwitchMasterCard(Landroid/content/Context;I)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entrance"    # I

    .prologue
    .line 456
    const/16 v1, 0xa

    .line 457
    .local v1, "SWITCH_ENTRANCE_INIT":I
    const/16 v2, 0xa

    .line 458
    .local v2, "SWITCH_ENTRANCE_NOTIFICATION":I
    const/16 v0, 0x14

    .line 464
    .local v0, "SWITCH_ENTRANCE_DUAL_SIM_SETTING":I
    sparse-switch p1, :sswitch_data_0

    .line 477
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 478
    .local v3, "exception":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 491
    .end local v3    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 466
    :sswitch_0
    const-string v5, "switch_master_call_from_notification_bar"

    .line 485
    .local v5, "paramName":Ljava/lang/String;
    :goto_1
    new-instance v4, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v6, "statics"

    invoke-direct {v4, v6}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 487
    .local v4, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v6, "statics_type"

    const-string v7, "switch_master_call"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v6, "param_name"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 471
    .end local v4    # "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v5    # "paramName":Ljava/lang/String;
    :sswitch_1
    const-string v5, "switch_master_call_from_dual_sim_setting"

    .line 472
    .restart local v5    # "paramName":Ljava/lang/String;
    goto :goto_1

    .line 464
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public static addStatus_CallMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # I

    .prologue
    .line 292
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v1, "param_name"

    const-string v2, "call_master_card"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public static addStatus_ContactsNumber(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storageType"    # I
    .param p2, "number"    # I

    .prologue
    .line 309
    if-nez p1, :cond_0

    .line 310
    const-string v2, "contacts_number_phone_only"

    .line 323
    .local v2, "paramName":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v3, "status"

    invoke-direct {v1, v3}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v3, "status_type"

    const-string v4, "contacts_number"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    const-string v3, "param_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v3, "param_value"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 331
    .end local v1    # "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    .end local v2    # "paramName":Ljava/lang/String;
    :goto_1
    return-void

    .line 311
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 312
    const-string v2, "contacts_number_sim_only"

    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_0

    .line 313
    .end local v2    # "paramName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 314
    const-string v2, "contacts_number_all"

    .restart local v2    # "paramName":Ljava/lang/String;
    goto :goto_0

    .line 317
    .end local v2    # "paramName":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 318
    .local v0, "exception":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static addStatus_DataMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # I

    .prologue
    .line 353
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 355
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    const-string v1, "param_name"

    const-string v2, "data_master_card"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 361
    return-void
.end method

.method public static addStatus_HaveDualSim(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "haveDualSim"    # I

    .prologue
    .line 192
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "have_dual_sim"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method public static addStatus_IMEI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "imei"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method public static addStatus_InstalledThirdPartyApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "installed_third_party_app"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static addStatus_ShowContactsFilter(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showFilter"    # I

    .prologue
    .line 250
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "show_contacts_filter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method public static addStatus_Slot1SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simType"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "slot1_sim_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method public static addStatus_Slot2SimType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simType"    # Ljava/lang/String;

    .prologue
    .line 278
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "slot2_sim_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method public static addStatus_SmsMasterCardSetting(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # I

    .prologue
    .line 338
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "master_card_setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    const-string v1, "param_name"

    const-string v2, "sms_master_card"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v1, "param_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    return-void
.end method

.method public static addStatus_SwVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "swVersion"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Lcom/lenovo/smart/Smart$ConductionIntent;

    const-string v1, "status"

    invoke-direct {v0, v1}, Lcom/lenovo/smart/Smart$ConductionIntent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "intent":Lcom/lenovo/smart/Smart$ConductionIntent;
    const-string v1, "status_type"

    const-string v2, "sw_version"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "param_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private static sendSmartBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1134
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1139
    :goto_0
    return-void

    .line 1137
    :cond_0
    const-string v0, "Smart"

    const-string v1, "sendSmartBroadcast : system not ready yet!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
