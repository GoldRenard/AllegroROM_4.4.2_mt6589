.class public Lcom/lenovo/setupwizard/service/WizardUtility;
.super Ljava/lang/Object;
.source "WizardUtility.java"


# static fields
.field public static final HARDWARE_MTK:Ljava/lang/String; = "mt"

.field public static final HARDWARE_QCOM:Ljava/lang/String; = "qcom"

.field public static final TAG:Ljava/lang/String; = "lenovo_wizard"

.field public static mInstance:Lcom/lenovo/setupwizard/service/WizardUtility;

.field private static mIsMtkPlatform:Z

.field private static mIsQcom:Z

.field private static mOperator:Ljava/lang/String;

.field private static mProductName:Ljava/lang/String;


# instance fields
.field final action:Ljava/lang/String;

.field final category:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mProductName:Ljava/lang/String;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mOperator:Ljava/lang/String;

    .line 63
    sput-boolean v1, Lcom/lenovo/setupwizard/service/WizardUtility;->mIsMtkPlatform:Z

    .line 64
    sput-boolean v1, Lcom/lenovo/setupwizard/service/WizardUtility;->mIsQcom:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v2, "android.intent.action.MAIN"

    iput-object v2, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->action:Ljava/lang/String;

    .line 55
    const-string v2, "android.intent.category.DEFAULT"

    iput-object v2, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->category:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    .line 68
    const-string v2, "ro.operator.optr"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "optr":Ljava/lang/String;
    const-string v2, "ro.lenovo.operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/lenovo/setupwizard/service/WizardUtility;->mOperator:Ljava/lang/String;

    .line 70
    const-string v2, "ro.hardware"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "hardware":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "mt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    const-string v2, "lenovo_wizard"

    const-string v3, "hardware is MTK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sput-boolean v4, Lcom/lenovo/setupwizard/service/WizardUtility;->mIsMtkPlatform:Z

    .line 75
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "qcom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    const-string v2, "lenovo_wizard"

    const-string v3, "hardware is QCOM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput-boolean v4, Lcom/lenovo/setupwizard/service/WizardUtility;->mIsQcom:Z

    .line 80
    :cond_1
    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v2, Lcom/lenovo/setupwizard/service/WizardUtility;->mProductName:Ljava/lang/String;

    .line 81
    const-string v2, "lenovo_wizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProductName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/setupwizard/service/WizardUtility;->mProductName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v2, "lenovo_wizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperatorName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lenovo/setupwizard/service/WizardUtility;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method private LenovoSetWifiChannel()V
    .locals 12

    .prologue
    .line 542
    const-string v9, "lenovo_wizard"

    const-string v10, "........... Start LenovoSetWifiChannel "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    iget-object v9, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 544
    .local v6, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v7

    .line 545
    .local v7, "wifi_contry":Ljava/lang/String;
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........wifi_contry......."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v9, "NvRAMAgent"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 547
    .local v1, "binder":Landroid/os/IBinder;
    const/16 v3, 0xa

    .line 548
    .local v3, "country_code_offset":I
    if-eqz v1, :cond_5

    .line 549
    invoke-static {v1}, Lcom/lenovo/setupwizard/service/NvRAMAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lenovo/setupwizard/service/NvRAMAgent;

    move-result-object v0

    .line 550
    .local v0, "agent":Lcom/lenovo/setupwizard/service/NvRAMAgent;
    const/16 v5, 0x1d

    .line 551
    .local v5, "file_lid":I
    const/4 v2, 0x0

    .line 556
    .local v2, "buff":[B
    :try_start_0
    invoke-interface {v0, v5}, Lcom/lenovo/setupwizard/service/NvRAMAgent;->readFile(I)[B

    move-result-object v2

    .line 557
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[0] =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[1] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[2] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[3] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[4] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x4

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[5] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x5

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[6] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x6

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[7] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x7

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[8] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x8

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[9] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x9

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[10] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff[11] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xb

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    if-nez v7, :cond_1

    .line 615
    .end local v0    # "agent":Lcom/lenovo/setupwizard/service/NvRAMAgent;
    .end local v2    # "buff":[B
    .end local v5    # "file_lid":I
    :cond_0
    :goto_1
    return-void

    .line 569
    .restart local v0    # "agent":Lcom/lenovo/setupwizard/service/NvRAMAgent;
    .restart local v2    # "buff":[B
    .restart local v5    # "file_lid":I
    :catch_0
    move-exception v4

    .line 571
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 579
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v9, "ru"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "US"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 581
    :cond_2
    const-string v9, "lenovo_wizard"

    const-string v10, "...........wifi_contry + US"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v9, 0xa

    const/16 v10, 0x55

    aput-byte v10, v2, v9

    .line 583
    const/16 v9, 0xb

    const/16 v10, 0x53

    aput-byte v10, v2, v9

    .line 599
    :goto_2
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xa

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "...........buff["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0xb

    aget-byte v11, v2, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :try_start_1
    invoke-interface {v0, v5, v2}, Lcom/lenovo/setupwizard/service/NvRAMAgent;->writeFile(I[B)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 605
    .local v8, "write_result":I
    if-lez v8, :cond_0

    goto :goto_1

    .line 585
    .end local v8    # "write_result":I
    :cond_3
    const-string v9, "ja"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 587
    const-string v9, "lenovo_wizard"

    const-string v10, "...........wifi_contry+ ja"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const/16 v9, 0xa

    const/16 v10, 0x4a

    aput-byte v10, v2, v9

    .line 589
    const/16 v9, 0xb

    const/16 v10, 0x41

    aput-byte v10, v2, v9

    goto :goto_2

    .line 593
    :cond_4
    const-string v9, "lenovo_wizard"

    const-string v10, "...........wifi_contry+ EU"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    const/16 v9, 0xa

    const/16 v10, 0x45

    aput-byte v10, v2, v9

    .line 595
    const/16 v9, 0xb

    const/16 v10, 0x55

    aput-byte v10, v2, v9

    goto/16 :goto_2

    .line 608
    :catch_1
    move-exception v4

    .line 610
    .restart local v4    # "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 613
    .end local v0    # "agent":Lcom/lenovo/setupwizard/service/NvRAMAgent;
    .end local v2    # "buff":[B
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "file_lid":I
    :cond_5
    const-string v9, "lenovo_wizard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NvRAMAgent service = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private UpdateByProduct()V
    .locals 5

    .prologue
    .line 280
    iget-object v2, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 281
    .local v0, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "simCountryIso":Ljava/lang/String;
    const-string v2, "lenovo_wizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "...........simCountryIso...."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-nez v1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    const-string v2, "RU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    const-string v2, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 300
    const-string v2, "IN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    const-string v2, "PH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 308
    const-string v2, "HK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 313
    const-string v2, "CO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    const-string v2, "VN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    const-string v2, "AR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 327
    const-string v2, "TH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    const-string v2, "MY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    const-string v2, "UA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    const-string v2, "RS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 343
    const-string v2, "PE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    const-string v2, "CL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    const-string v2, "VE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 358
    const-string v2, "MX"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0
.end method

.method private UpdateBySimCountryIso()V
    .locals 13

    .prologue
    .line 371
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 372
    .local v2, "mgr":Landroid/telephony/TelephonyManager;
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 373
    .local v9, "timeZone":Landroid/app/AlarmManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v8

    .line 374
    .local v8, "simCountryIso":Ljava/lang/String;
    const-string v10, "lenovo_wizard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "...........simCountryIso...."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-nez v8, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string v10, "RU"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 389
    const-string v10, "Europe/Moscow"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    const-string v10, "CN"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 394
    const-string v10, "Asia/Shanghai"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_3
    const-string v10, "ID"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 400
    const-string v10, "Asia/Makassar"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 402
    :cond_4
    const-string v10, "IN"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 405
    const-string v10, "Asia/Calcutta"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 407
    :cond_5
    const-string v10, "PH"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 410
    const-string v10, "Asia/Manila"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_6
    const-string v10, "HK"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 415
    const-string v10, "Asia/Hong_Kong"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_7
    const-string v10, "CO"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 429
    const-string v10, "America/Bogota"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :cond_8
    const-string v10, "VN"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 434
    const-string v10, "Asia/Ho_Chi_Minh"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 438
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v11, "audioprofile"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 440
    .local v5, "profileManager":Lcom/mediatek/audioprofile/AudioProfileManager;
    const-string v10, "mtk_audioprofile_general"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 448
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    const v12, 0xea60

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness_mode"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 456
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 457
    .local v3, "pm":Landroid/os/PowerManager;
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v7

    .line 458
    .local v7, "screenBrightnessMinimum":I
    invoke-virtual {v3}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v6

    .line 459
    .local v6, "screenBrightnessMaximum":I
    add-int v10, v6, v7

    div-int/lit8 v0, v10, 0x2

    .line 462
    .local v0, "brightness":I
    :try_start_0
    const-string v10, "power"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v4

    .line 465
    .local v4, "power":Landroid/os/IPowerManager;
    if-eqz v4, :cond_9

    .line 466
    invoke-interface {v4}, Landroid/os/IPowerManager;->isScreenOn()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 467
    invoke-interface {v4, v0}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v4    # "power":Landroid/os/IPowerManager;
    :cond_9
    :goto_1
    iget-object v10, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_brightness"

    invoke-static {v10, v11, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 469
    .restart local v4    # "power":Landroid/os/IPowerManager;
    :cond_a
    const/4 v10, -0x1

    :try_start_1
    invoke-interface {v4, v10}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 472
    .end local v4    # "power":Landroid/os/IPowerManager;
    :catch_0
    move-exception v1

    .line 473
    .local v1, "exception":Landroid/os/RemoteException;
    const-string v10, "lenovo_wizard"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 494
    .end local v0    # "brightness":I
    .end local v1    # "exception":Landroid/os/RemoteException;
    .end local v3    # "pm":Landroid/os/PowerManager;
    .end local v5    # "profileManager":Lcom/mediatek/audioprofile/AudioProfileManager;
    .end local v6    # "screenBrightnessMaximum":I
    .end local v7    # "screenBrightnessMinimum":I
    :cond_b
    const-string v10, "AR"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 497
    const-string v10, "Asia/Dubai"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 499
    :cond_c
    const-string v10, "TH"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 502
    const-string v10, "Asia/Bangkok"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 504
    :cond_d
    const-string v10, "MY"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 507
    const-string v10, "Asia/Kuala_Lumpur"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 509
    :cond_e
    const-string v10, "UA"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 512
    const-string v10, "Europe/Belgrade"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 514
    :cond_f
    const-string v10, "RS"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 517
    const-string v10, "Europe/Belgrade"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_10
    const-string v10, "PE"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 522
    const-string v10, "America/Bogota"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :cond_11
    const-string v10, "CL"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 527
    const-string v10, "America/Santiago"

    invoke-virtual {v9, v10}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_12
    const-string v10, "VE"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 533
    const-string v10, "MX"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_0
.end method

.method public static disableApplication(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "lenovo_wizard"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static disableApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 113
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "lenovo_wizard"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static disableComponent(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 135
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v3, 0x2

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "lenovo_wizard"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 125
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "lenovo_wizard"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static enableComponent(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 147
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 149
    .local v1, "name":Landroid/content/ComponentName;
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "lenovo_wizard"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/setupwizard/service/WizardUtility;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    sget-object v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mInstance:Lcom/lenovo/setupwizard/service/WizardUtility;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/lenovo/setupwizard/service/WizardUtility;

    invoke-direct {v0, p0}, Lcom/lenovo/setupwizard/service/WizardUtility;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mInstance:Lcom/lenovo/setupwizard/service/WizardUtility;

    .line 89
    :cond_0
    sget-object v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mInstance:Lcom/lenovo/setupwizard/service/WizardUtility;

    return-object v0
.end method

.method private static getMccFromSim(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 858
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 859
    .local v5, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, "mccmnc":Ljava/lang/String;
    const-string v6, "lenovo_wizard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...........mccmnc.........."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v1, 0x0

    .line 862
    .local v1, "mcc":I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 864
    const/4 v6, 0x0

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 865
    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 871
    .local v4, "mnc":I
    if-eqz v1, :cond_0

    move v2, v1

    .line 875
    .end local v1    # "mcc":I
    .end local v4    # "mnc":I
    .local v2, "mcc":I
    :goto_0
    return v2

    .line 866
    .end local v2    # "mcc":I
    .restart local v1    # "mcc":I
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v6, "lenovo_wizard"

    const-string v7, "Error parsing IMSI"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 868
    .end local v1    # "mcc":I
    .restart local v2    # "mcc":I
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "mcc":I
    .restart local v1    # "mcc":I
    :cond_0
    move v2, v1

    .line 875
    .end local v1    # "mcc":I
    .restart local v2    # "mcc":I
    goto :goto_0
.end method

.method public static isSimReady(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 724
    const/4 v2, 0x0

    .line 726
    .local v2, "sim_ready":Z
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 727
    .local v1, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 728
    .local v3, "sim_state":I
    packed-switch v3, :pswitch_data_0

    .line 749
    const-string v4, "lenovo_wizard"

    const-string v5, "===unknown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v1    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v3    # "sim_state":I
    :goto_0
    return v2

    .line 730
    .restart local v1    # "mgr":Landroid/telephony/TelephonyManager;
    .restart local v3    # "sim_state":I
    :pswitch_0
    const-string v4, "lenovo_wizard"

    const-string v5, "===SIM_STATE_ABSENT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    .end local v1    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v3    # "sim_state":I
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 733
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mgr":Landroid/telephony/TelephonyManager;
    .restart local v3    # "sim_state":I
    :pswitch_1
    :try_start_1
    const-string v4, "lenovo_wizard"

    const-string v5, "===SIM_STATE_NETWORK_LOCKED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 736
    :pswitch_2
    const-string v4, "lenovo_wizard"

    const-string v5, "===SIM_STATE_PIN_REQUIREbnD"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 739
    :pswitch_3
    const-string v4, "lenovo_wizard"

    const-string v5, "===SIM_STATE_PUK_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 742
    :pswitch_4
    const-string v4, "lenovo_wizard"

    const-string v5, "===SIM_STATE_READY"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v2, 0x1

    .line 744
    goto :goto_0

    .line 746
    :pswitch_5
    const-string v4, "lenovo_wizard"

    const-string v5, "===SIM_STATE_UNKNOWN"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static isWifiOnlyBuild()Z
    .locals 8

    .prologue
    .line 759
    const/4 v2, 0x0

    .line 761
    .local v2, "ret":Z
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 762
    .local v1, "localMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 763
    const-string v3, "wifi-only"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.carrier"

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 767
    .end local v1    # "localMethod":Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "localException":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setLocaleFromSimIfNeeded(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 771
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 772
    .local v5, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 773
    .local v4, "mccmnc":Ljava/lang/String;
    const-string v7, "lenovo_wizard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "...........mccmnc...."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 778
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 779
    .local v3, "mcc":I
    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 785
    .local v6, "mnc":I
    const-string v7, "lenovo_wizard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateMccMncConfiguration: mcc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mnc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    if-eqz v3, :cond_0

    .line 790
    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->defaultLanguageForMcc(I)Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, "language":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "country":Ljava/lang/String;
    const-string v7, "lenovo_wizard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "locale set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {p0, v2, v0}, Lcom/lenovo/setupwizard/service/WizardUtility;->setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    .end local v0    # "country":Ljava/lang/String;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "mcc":I
    .end local v6    # "mnc":I
    :cond_0
    :goto_0
    return-void

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v7, "lenovo_wizard"

    const-string v8, "Error parsing IMSI"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static setSystemLocale(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    .line 803
    const-string v10, "persist.sys.language"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 804
    .local v6, "l":Ljava/lang/String;
    const-string v10, "persist.sys.country"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 806
    .local v2, "c":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 810
    if-nez p2, :cond_2

    .line 811
    const-string p2, ""

    .line 813
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    .line 817
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v7

    .line 818
    .local v7, "locales":[Ljava/lang/String;
    array-length v0, v7

    .line 819
    .local v0, "N":I
    const/4 v1, 0x0

    .line 820
    .local v1, "bestMatch":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_3

    .line 822
    aget-object v10, v7, v5

    if-eqz v10, :cond_5

    aget-object v10, v7, v5

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-lt v10, v11, :cond_5

    aget-object v10, v7, v5

    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 824
    aget-object v10, v7, v5

    const/4 v11, 0x3

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 825
    aget-object v1, v7, v5

    .line 833
    :cond_3
    if-eqz v1, :cond_0

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 835
    .local v8, "resources":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 836
    .local v3, "config":Landroid/content/res/Configuration;
    new-instance v9, Ljava/util/Locale;

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    const/4 v12, 0x5

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    .local v9, "simLocale":Ljava/util/Locale;
    const-string v10, "lenovo_wizard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " simLocale is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " config.locale is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v10, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 840
    invoke-static {v9}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 852
    .end local v0    # "N":I
    .end local v1    # "bestMatch":Ljava/lang/String;
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v5    # "i":I
    .end local v7    # "locales":[Ljava/lang/String;
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v9    # "simLocale":Ljava/util/Locale;
    :catch_0
    move-exception v4

    .line 853
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "lenovo_wizard"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 827
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "N":I
    .restart local v1    # "bestMatch":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v7    # "locales":[Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 828
    :try_start_1
    aget-object v1, v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 820
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1
.end method

.method private static uninstallApplication(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 879
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    :goto_0
    return-void

    .line 882
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 884
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 885
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 886
    const-string v3, "lenovo_wizard"

    const-string v4, "no such application"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 889
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 890
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "lenovo_wizard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 893
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lenovo/setupwizard/service/WizardUtility$1;

    invoke-direct {v4, v2, p1}, Lcom/lenovo/setupwizard/service/WizardUtility$1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private updateInputMethod()V
    .locals 18

    .prologue
    .line 209
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 210
    .local v12, "mgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v14

    .line 211
    .local v14, "simCountryIso":Ljava/lang/String;
    const-string v15, "lenovo_wizard"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "...........simCountryIso...."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-nez v14, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-string v15, "HK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "TW"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    const-string v15, "SG"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 223
    :cond_2
    const-string v4, "com.google.android.apps.inputmethod.zhuyin/.ZhuyinInputMethodService"

    .line 224
    .local v4, "default_imiId":Ljava/lang/String;
    const-string v15, "lenovo_wizard"

    const-string v16, "try to set defaultInputMethodId: com.google.android.apps.inputmethod.zhuyin/.ZhuyinInputMethodService"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v3, 0x0

    .line 227
    .local v3, "default_imi":Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v16, "input_method"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 228
    .local v9, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v11

    .line 229
    .local v11, "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 230
    .local v13, "resolver":Landroid/content/ContentResolver;
    invoke-static {v13}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v6

    .line 233
    .local v6, "enabledIMEAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    const/4 v10, 0x0

    .line 234
    .local v10, "inputMethodFound":Z
    if-nez v11, :cond_4

    const/4 v1, 0x0

    .line 235
    .local v1, "N":I
    :goto_1
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v1, :cond_3

    .line 236
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v15}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v8

    .line 237
    .local v8, "imiId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 238
    const-string v15, "lenovo_wizard"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "imiId: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v15, "com.google.android.apps.inputmethod.zhuyin/.ZhuyinInputMethodService"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 240
    const/4 v10, 0x1

    .line 241
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "default_imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 246
    .end local v8    # "imiId":Ljava/lang/String;
    .restart local v3    # "default_imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    if-nez v10, :cond_6

    .line 247
    const-string v15, "lenovo_wizard"

    const-string v16, "not found default input method"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 234
    .end local v1    # "N":I
    .end local v7    # "i":I
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    .line 235
    .restart local v1    # "N":I
    .restart local v7    # "i":I
    .restart local v8    # "imiId":Ljava/lang/String;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 251
    .end local v8    # "imiId":Ljava/lang/String;
    :cond_6
    const-string v15, "com.google.android.apps.inputmethod.zhuyin/.ZhuyinInputMethodService"

    invoke-virtual {v6, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 253
    const-string v15, "lenovo_wizard"

    const-string v16, "enable default input method"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v15, "com.google.android.apps.inputmethod.zhuyin/.ZhuyinInputMethodService"

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-static {v2, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    .line 257
    const-string v15, "lenovo_wizard"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ENABLED_INPUT_METHODS: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v15, "enabled_input_methods"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 261
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    if-eqz v3, :cond_8

    .line 262
    const-string v15, "default_input_method"

    const-string v16, "com.google.android.apps.inputmethod.zhuyin/.ZhuyinInputMethodService"

    move-object/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 263
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v5

    .line 264
    .local v5, "default_subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const-string v15, "lenovo_wizard"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "subtype hashcode: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v15, "selected_input_method_subtype"

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 273
    .end local v1    # "N":I
    .end local v3    # "default_imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "default_imiId":Ljava/lang/String;
    .end local v5    # "default_subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v6    # "enabledIMEAndSubtypesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v7    # "i":I
    .end local v9    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v10    # "inputMethodFound":Z
    .end local v11    # "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    .end local v13    # "resolver":Landroid/content/ContentResolver;
    :cond_8
    :goto_3
    const-string v15, "CN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 274
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v16, "com.google.android.inputmethod.pinyin"

    invoke-static/range {v15 .. v16}, Lcom/lenovo/setupwizard/service/WizardUtility;->disableApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 270
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v16, "com.google.android.apps.inputmethod.zhuyin"

    invoke-static/range {v15 .. v16}, Lcom/lenovo/setupwizard/service/WizardUtility;->disableApplication(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public UpdateConfigurationBySim()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/lenovo/setupwizard/service/WizardUtility;->updateInputMethod()V

    .line 202
    invoke-direct {p0}, Lcom/lenovo/setupwizard/service/WizardUtility;->UpdateBySimCountryIso()V

    .line 203
    invoke-direct {p0}, Lcom/lenovo/setupwizard/service/WizardUtility;->UpdateByProduct()V

    .line 206
    return-void
.end method

.method public action_BOOT_COMPLETED()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public action_LOCALE_CHANGED()V
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 188
    .local v0, "config":Landroid/content/res/Configuration;
    const-string v1, "lenovo_wizard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Locale is changed to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v1, "lenovo_wizard"

    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :cond_0
    return-void
.end method

.method public action_SIM_STATE_CHANGED()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public disableKeyGuard()V
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/lenovo/setupwizard/service/WizardUtility;->mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 94
    .local v1, "mManager":Landroid/app/KeyguardManager;
    const-string v2, "Lock"

    invoke-virtual {v1, v2}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    .line 95
    .local v0, "mKeyguardLock":Landroid/app/KeyguardManager$KeyguardLock;
    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 96
    return-void
.end method
