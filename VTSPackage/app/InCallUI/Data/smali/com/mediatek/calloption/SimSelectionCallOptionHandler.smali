.class public abstract Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "SimSelectionCallOptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;,
        Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    }
.end annotation


# static fields
.field public static ACTION_IP_SELECT:Ljava/lang/String; = null

.field private static final BUTTON_IP_NUMBER_1:Ljava/lang/String; = "button_ip_number1"

.field private static final BUTTON_IP_NUMBER_2:Ljava/lang/String; = "button_ip_number2"

.field private static final BUTTON_IP_NUMBER_3:Ljava/lang/String; = "button_ip_number3"

.field private static final BUTTON_IP_NUMBER_4:Ljava/lang/String; = "button_ip_number4"

.field private static final MAKE_CALL_REASON_ASK:I = 0x5

.field private static final MAKE_CALL_REASON_ASSOCIATE_MISSING:I = 0x6

.field private static final MAKE_CALL_REASON_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimSelectionCallOptionHandler"


# instance fields
.field private mAssociateMissingCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mAssociateMissingClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mAssociateMissingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

.field private mIpDialogCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mIpDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mReasonAskCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mReasonAskClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mReasonAskDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mRequest:Lcom/mediatek/calloption/Request;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 788
    const-string v0, "com.android.phone.intent.ACTION_IP_SELECT"

    sput-object v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->ACTION_IP_SELECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    .line 618
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$1;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 658
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$2;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 665
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$3;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 680
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$4;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 715
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$5;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$5;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 721
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$6;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$6;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 736
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$7;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$7;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mIpDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 758
    new-instance v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$8;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$8;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mIpDialogCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/Request;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mIpDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mIpDialogCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    return-object v0
.end method

.method private doSipCallOptionHandle()V
    .locals 4

    .prologue
    .line 768
    const-string v1, "doSipCallOptionHandle()"

    invoke-static {v1}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 769
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 770
    const-string v1, "doSipCallOptionHandle(), mRequest.getIntent() == null"

    invoke-static {v1}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 781
    :goto_0
    return-void

    .line 774
    :cond_0
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "follow_sim_management"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 775
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v2}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "number":Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "sip"

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 780
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getInternetCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1, v2}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method private getCallLogSuggessionId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 902
    const-string v2, "content://com.lenovo.smart.habit/telephony"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 903
    .local v3, "TELEPHONY_CONTENT_URI":Landroid/net/Uri;
    const-string v10, "sim_ID"

    .line 904
    .local v10, "SIM_ID":Ljava/lang/String;
    const-string v9, "number"

    .line 905
    .local v9, "NUMBER":Ljava/lang/String;
    const/4 v8, 0x5

    .line 906
    .local v8, "MAX_SIZE":I
    const-string v12, "transaction_type"

    .line 907
    .local v12, "TRANSACTION_TYPE":Ljava/lang/String;
    const-string v11, "_id DESC"

    .line 908
    .local v11, "SORT_ORDER":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v4, v2

    .line 910
    .local v4, "projection":[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v25

    .line 911
    .local v25, "simInfo_0":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    move-wide/from16 v21, v0

    .line 913
    .local v21, "simId_0":J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v26

    .line 914
    .local v26, "simInfo_1":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    move-wide/from16 v23, v0

    .line 915
    .local v23, "simId_1":J
    const/4 v14, 0x0

    .line 916
    .local v14, "count_0":I
    const/4 v15, 0x0

    .line 917
    .local v15, "count_1":I
    const-wide/16 v27, -0x5

    .line 919
    .local v27, "suggessionId":J
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 920
    .local v19, "n1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->isNumberEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide/from16 v29, v27

    .line 968
    .end local v27    # "suggessionId":J
    .local v29, "suggessionId":J
    :goto_0
    return-wide v29

    .line 923
    .end local v29    # "suggessionId":J
    .restart local v27    # "suggessionId":J
    :cond_0
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 924
    const-string v2, "*"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "#"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "+"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 925
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 926
    .local v20, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 927
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    const-string v2, "\""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 937
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .local v5, "selection":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " LIMIT "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 938
    .local v7, "order":Ljava/lang/String;
    const-string v2, "SimSelectionCallOptionHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "selection = "

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 942
    .local v16, "cursor":Landroid/database/Cursor;
    if-eqz v16, :cond_4

    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 943
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 944
    .local v13, "count":I
    const-string v2, "SimSelectionCallOptionHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "cursor.getCount() = "

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v31

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v17, v0

    .line 947
    .local v17, "id":J
    cmp-long v2, v17, v21

    if-nez v2, :cond_7

    .line 948
    add-int/lit8 v14, v14, 0x1

    .line 952
    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 955
    .end local v13    # "count":I
    .end local v17    # "id":J
    :cond_4
    if-eqz v16, :cond_5

    .line 956
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 959
    :cond_5
    const-string v2, "SimSelectionCallOptionHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "count_0 = "

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v31, ", count_1 = "

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-le v14, v15, :cond_9

    .line 962
    move-wide/from16 v27, v21

    :goto_3
    move-wide/from16 v29, v27

    .line 968
    .end local v27    # "suggessionId":J
    .restart local v29    # "suggessionId":J
    goto/16 :goto_0

    .line 933
    .end local v5    # "selection":Ljava/lang/String;
    .end local v7    # "order":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v29    # "suggessionId":J
    .restart local v27    # "suggessionId":J
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "selection":Ljava/lang/String;
    goto/16 :goto_1

    .line 949
    .restart local v7    # "order":Ljava/lang/String;
    .restart local v13    # "count":I
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v17    # "id":J
    :cond_7
    cmp-long v2, v17, v23

    if-nez v2, :cond_3

    .line 950
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 955
    .end local v13    # "count":I
    .end local v17    # "id":J
    :catchall_0
    move-exception v2

    if-eqz v16, :cond_8

    .line 956
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 963
    :cond_9
    if-ge v14, v15, :cond_a

    .line 964
    move-wide/from16 v27, v23

    goto :goto_3

    .line 966
    :cond_a
    const-wide/16 v27, -0x5

    goto :goto_3
.end method

.method private getCardOp(I)Ljava/lang/String;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 878
    if-nez p1, :cond_1

    .line 879
    const-string v1, "gsm.sim.operator.numeric"

    .line 883
    .local v1, "operatorNumberic":Ljava/lang/String;
    :goto_0
    const-string v2, "-1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "numeric":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 887
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 889
    :cond_0
    const-string v2, "CMCC_SIM"

    .line 898
    :goto_1
    return-object v2

    .line 881
    .end local v0    # "numeric":Ljava/lang/String;
    .end local v1    # "operatorNumberic":Ljava/lang/String;
    :cond_1
    const-string v1, "gsm.sim.operator.numeric.2"

    .restart local v1    # "operatorNumberic":Ljava/lang/String;
    goto :goto_0

    .line 890
    .restart local v0    # "numeric":Ljava/lang/String;
    :cond_2
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 891
    const-string v2, "CUCC_SIM"

    goto :goto_1

    .line 892
    :cond_3
    const-string v2, "20801"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "23433"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "21403"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 894
    :cond_4
    const-string v2, "UNKNOWN"

    goto :goto_1

    .line 898
    :cond_5
    const-string v2, "UNKNOWN"

    goto :goto_1
.end method

.method private getOpNumberSuggesionId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x5

    .line 814
    const-string v0, "10086"

    .line 815
    .local v0, "cmcc":Ljava/lang/String;
    const-string v1, "10010"

    .line 816
    .local v1, "cucc":Ljava/lang/String;
    const/4 v5, -0x1

    .line 817
    .local v5, "slot":I
    const-string v8, "SimSelectionCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "number = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-wide v6

    .line 823
    :cond_1
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->getCardOp(I)Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, "op1":Ljava/lang/String;
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->getCardOp(I)Ljava/lang/String;

    move-result-object v3

    .line 825
    .local v3, "op2":Ljava/lang/String;
    const-string v8, "SimSelectionCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "op1 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", op2 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 827
    const-string v8, "SimSelectionCallOptionHandler"

    const-string v9, "cmcc"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v8, "CMCC_SIM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "CMCC_SIM"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 829
    const/4 v5, -0x1

    .line 845
    :cond_2
    :goto_1
    const-string v8, "SimSelectionCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v8, -0x1

    if-eq v5, v8, :cond_0

    .line 848
    invoke-static {p1, v5}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 849
    .local v4, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v8, "SimSelectionCallOptionHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "simInfo = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-eqz v4, :cond_0

    .line 851
    const-string v6, "SimSelectionCallOptionHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSimId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-wide v6, v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto/16 :goto_0

    .line 830
    .end local v4    # "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    const-string v8, "CMCC_SIM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 831
    const/4 v5, 0x0

    goto :goto_1

    .line 832
    :cond_4
    const-string v8, "CMCC_SIM"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 833
    const/4 v5, 0x1

    goto :goto_1

    .line 835
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 836
    const-string v8, "SimSelectionCallOptionHandler"

    const-string v9, "cucc"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v8, "CUCC_SIM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "CUCC_SIM"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 838
    const/4 v5, -0x1

    goto/16 :goto_1

    .line 839
    :cond_6
    const-string v8, "CUCC_SIM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 840
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 841
    :cond_7
    const-string v8, "CUCC_SIM"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 842
    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method public static initIpDialListArray(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 791
    .local v1, "pre":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v0, "arrayIpDialList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "button_ip_number1"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 794
    .local v2, "strIpDial1":Ljava/lang/String;
    const-string v6, "button_ip_number2"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, "strIpDial2":Ljava/lang/String;
    const-string v6, "button_ip_number3"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, "strIpDial3":Ljava/lang/String;
    const-string v6, "button_ip_number4"

    const-string v7, ""

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, "strIpDial4":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 799
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    :cond_0
    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 802
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_1
    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 805
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    :cond_2
    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 808
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    :cond_3
    return-object v0
.end method

.method private isNumberEmpty(Ljava/lang/String;)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 971
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 981
    :cond_0
    :goto_0
    return v3

    .line 974
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 975
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 976
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 977
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 978
    const/4 v3, 0x0

    goto :goto_0

    .line 975
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 985
    const-string v0, "SimSelectionCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 35
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    .line 130
    const-string v3, "handleRequest()"

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 131
    const/16 v20, 0x0

    .line 132
    .local v20, "isVoiceMail":Z
    const-string v3, "voicemail:"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const/16 v20, 0x1

    .line 136
    :cond_0
    const/4 v3, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v6, "com.android.phone.extra.slot"

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v3, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 496
    :cond_1
    :goto_0
    return-void

    .line 143
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/calloption/CallOptionUtils;->getInitialNumber(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "number":Ljava/lang/String;
    new-instance v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;ILjava/lang/String;JLjava/lang/Object;)V

    .line 150
    .local v2, "callbackArgs":Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.original"

    const-wide/16 v6, -0x5

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 153
    .local v22, "originalSim":J
    const-wide/16 v30, -0x5

    .line 154
    .local v30, "suggestedSim":J
    const-wide/16 v9, -0x5

    .line 155
    .local v9, "associateSim":J
    const/4 v11, 0x0

    .line 156
    .local v11, "associateSimInserts":I
    const/16 v24, 0x0

    .line 158
    .local v24, "originalSimInsert":Z
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v27

    .line 160
    .local v27, "simInfoWrapper":Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.force.slot"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 161
    .local v19, "isForceSlot":Z
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 162
    .local v29, "slotId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeVoiceCall, isForceSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 163
    if-eqz v19, :cond_3

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move/from16 v0, v29

    invoke-static {v3, v0}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v25

    .line 165
    .local v25, "sInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 166
    move-object/from16 v0, v25

    iget-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    iput-wide v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 167
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 172
    .end local v25    # "sInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_call_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    .line 175
    .local v14, "defaultSim":J
    const/16 v26, 0x0

    .line 176
    .local v26, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimAssociateHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/calloption/SimAssociateHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mediatek/calloption/SimAssociateHandler;->query(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 177
    .local v13, "associateSims":Ljava/util/ArrayList;
    if-eqz v13, :cond_5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/16 v16, 0x1

    .line 178
    .local v16, "hasAssociateSims":Z
    :goto_1
    if-eqz v16, :cond_6

    .line 179
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 180
    .local v21, "item":Ljava/lang/Object;
    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "item":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 181
    .local v32, "temp":I
    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v28

    .line 182
    .local v28, "slot":I
    if-ltz v28, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 183
    add-int/lit8 v11, v11, 0x1

    .line 184
    move/from16 v0, v32

    int-to-long v9, v0

    goto :goto_2

    .line 177
    .end local v16    # "hasAssociateSims":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v28    # "slot":I
    .end local v32    # "temp":I
    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    .line 189
    .restart local v16    # "hasAssociateSims":Z
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_internet_call_value"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 193
    .local v18, "internetEnableSetting":I
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    if-nez v3, :cond_8

    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-eqz v3, :cond_8

    .line 198
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_7

    .line 200
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 201
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 207
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 204
    :cond_7
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 205
    const-wide/16 v3, -0x2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_3

    .line 211
    :cond_8
    const-wide/16 v3, -0x5

    cmp-long v3, v14, v3

    if-nez v3, :cond_9

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 215
    :cond_9
    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-eqz v3, :cond_a

    .line 216
    move-wide/from16 v0, v22

    long-to-int v3, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v28

    .line 217
    .restart local v28    # "slot":I
    if-ltz v28, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v24, 0x1

    .line 218
    :goto_4
    const-wide/16 v3, -0x2

    cmp-long v3, v22, v3

    if-nez v3, :cond_a

    .line 219
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_c

    const/16 v24, 0x1

    .line 223
    .end local v28    # "slot":I
    :cond_a
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeVoiceCall, number = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", originalSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defaultSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", associateSims = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 227
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-nez v3, :cond_15

    .line 236
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v3, v0, :cond_d

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    if-nez v3, :cond_d

    .line 237
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 217
    .restart local v28    # "slot":I
    :cond_b
    const/16 v24, 0x0

    goto :goto_4

    .line 219
    :cond_c
    const/16 v24, 0x0

    goto :goto_5

    .line 243
    .end local v28    # "slot":I
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "always, associateSimInserts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " originalSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x1

    if-le v11, v3, :cond_13

    .line 245
    const-wide/16 v30, -0x5

    .line 252
    :cond_e
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    .line 262
    const-wide/16 v3, -0x5

    cmp-long v3, v30, v3

    if-nez v3, :cond_f

    .line 263
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->getOpNumberSuggesionId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v30

    .line 266
    :cond_f
    const-wide/16 v3, -0x5

    cmp-long v3, v30, v3

    if-nez v3, :cond_10

    .line 269
    :cond_10
    const-wide/16 v3, -0x5

    cmp-long v3, v30, v3

    if-nez v3, :cond_11

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->getCallLogSuggessionId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v30

    .line 278
    :cond_11
    if-eqz v20, :cond_12

    .line 279
    const-wide/16 v30, -0x5

    .line 282
    :cond_12
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 283
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 284
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 246
    :cond_13
    const/4 v3, 0x1

    if-ne v11, v3, :cond_14

    .line 247
    move-wide/from16 v30, v9

    goto :goto_6

    .line 248
    :cond_14
    if-eqz v24, :cond_e

    .line 249
    move-wide/from16 v30, v22

    goto :goto_6

    .line 289
    :cond_15
    if-nez v16, :cond_17

    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-eqz v3, :cond_17

    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-nez v3, :cond_17

    cmp-long v3, v22, v14

    if-eqz v3, :cond_17

    .line 292
    if-eqz v24, :cond_16

    .line 293
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 297
    :goto_7
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 298
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 295
    :cond_16
    const-wide/16 v3, -0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_7

    .line 303
    :cond_17
    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-nez v3, :cond_1d

    .line 304
    if-nez v16, :cond_18

    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-eqz v3, :cond_1c

    const-wide/16 v3, -0x2

    cmp-long v3, v22, v3

    if-eqz v3, :cond_1c

    .line 307
    :cond_18
    const/4 v3, 0x1

    if-le v11, v3, :cond_1a

    .line 308
    const-wide/16 v30, -0x5

    .line 315
    :cond_19
    :goto_8
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 316
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 317
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 309
    :cond_1a
    const/4 v3, 0x1

    if-ne v11, v3, :cond_1b

    .line 310
    move-wide/from16 v30, v9

    goto :goto_8

    .line 311
    :cond_1b
    if-eqz v24, :cond_19

    .line 312
    move-wide/from16 v30, v22

    goto :goto_8

    .line 320
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V

    goto/16 :goto_0

    .line 325
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_21

    .line 336
    const-wide/16 v3, -0x5

    cmp-long v3, v30, v3

    if-nez v3, :cond_1e

    .line 337
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->getOpNumberSuggesionId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v30

    .line 340
    :cond_1e
    const-wide/16 v3, -0x5

    cmp-long v3, v30, v3

    if-nez v3, :cond_1f

    .line 343
    :cond_1f
    const-wide/16 v3, -0x5

    cmp-long v3, v30, v3

    if-nez v3, :cond_20

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->getCallLogSuggessionId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v30

    .line 349
    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "suggestedSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deaultSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 350
    cmp-long v3, v14, v30

    if-eqz v3, :cond_21

    const-wide/16 v3, -0x5

    cmp-long v3, v30, v3

    if-eqz v3, :cond_21

    .line 351
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 352
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 353
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 360
    :cond_21
    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-nez v3, :cond_22

    if-nez v16, :cond_22

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deaultSim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 362
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 363
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 370
    :cond_22
    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-eqz v3, :cond_26

    if-nez v16, :cond_26

    .line 372
    cmp-long v3, v14, v22

    if-eqz v3, :cond_23

    if-nez v24, :cond_24

    .line 374
    :cond_23
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 375
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 376
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 381
    :cond_24
    const-wide/16 v30, -0x5

    .line 382
    if-eqz v24, :cond_25

    .line 383
    move-wide/from16 v30, v22

    .line 385
    :cond_25
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 386
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 387
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 392
    :cond_26
    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-nez v3, :cond_2c

    if-eqz v16, :cond_2c

    .line 394
    const/4 v3, 0x2

    if-lt v11, v3, :cond_27

    .line 395
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 396
    const-wide/16 v3, -0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 397
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 401
    :cond_27
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_29

    .line 402
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    .line 415
    :cond_28
    :goto_9
    const/4 v3, 0x1

    if-ne v11, v3, :cond_2c

    .line 416
    cmp-long v3, v14, v9

    if-nez v3, :cond_2b

    .line 417
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 418
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 423
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 403
    :cond_29
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_28

    .line 405
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17    # "i$":Ljava/util/Iterator;
    :cond_2a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    .line 406
    .restart local v21    # "item":Ljava/lang/Object;
    check-cast v21, Ljava/lang/Integer;

    .end local v21    # "item":Ljava/lang/Object;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 407
    .restart local v32    # "temp":I
    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v28

    .line 408
    .restart local v28    # "slot":I
    if-ltz v28, :cond_2a

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 409
    move/from16 v0, v32

    int-to-long v9, v0

    .line 410
    goto :goto_9

    .line 420
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v28    # "slot":I
    .end local v32    # "temp":I
    :cond_2b
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 421
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_a

    .line 429
    :cond_2c
    cmp-long v3, v14, v22

    if-nez v3, :cond_2d

    cmp-long v3, v14, v9

    if-nez v3, :cond_2d

    .line 430
    const/4 v3, 0x0

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 431
    iput-wide v14, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 432
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 437
    :cond_2d
    cmp-long v3, v14, v22

    if-nez v3, :cond_2e

    if-eqz v16, :cond_2e

    if-nez v11, :cond_2e

    .line 438
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 439
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 445
    :cond_2e
    const-wide/16 v3, -0x5

    cmp-long v3, v22, v3

    if-eqz v3, :cond_2f

    if-eqz v16, :cond_2f

    if-nez v11, :cond_2f

    .line 447
    move-wide/from16 v0, v22

    long-to-int v3, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v28

    .line 448
    .restart local v28    # "slot":I
    if-ltz v28, :cond_2f

    cmp-long v3, v22, v14

    if-eqz v3, :cond_2f

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 450
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 451
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 452
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 457
    .end local v28    # "slot":I
    :cond_2f
    const/4 v3, 0x2

    if-lt v11, v3, :cond_30

    .line 458
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 459
    const-wide/16 v3, -0x5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 460
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 464
    :cond_30
    const/4 v3, 0x1

    if-ne v11, v3, :cond_31

    .line 465
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 466
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    .line 495
    .end local v22    # "originalSim":J
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V

    goto/16 :goto_0

    .line 469
    .restart local v22    # "originalSim":J
    :cond_31
    const-wide/16 v3, -0x5

    cmp-long v3, v9, v3

    if-nez v3, :cond_32

    .line 470
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v9, v3

    .line 472
    :cond_32
    iput-wide v9, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    .line 473
    const/4 v3, 0x6

    iput v3, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    .line 474
    new-instance v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;-><init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V

    .line 475
    .local v12, "associateSimMissingArgs":Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_36

    .line 476
    const/4 v3, 0x0

    iput v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    .line 478
    if-eqz v24, :cond_34

    move-wide/from16 v33, v22

    .line 480
    .local v33, "viaSimId":J
    :goto_c
    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-nez v3, :cond_35

    .line 481
    const-wide/16 v3, -0x2

    iput-wide v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->suggested:J

    .line 493
    .end local v22    # "originalSim":J
    .end local v33    # "viaSimId":J
    :cond_33
    :goto_d
    iput-object v12, v2, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    goto :goto_b

    .restart local v22    # "originalSim":J
    :cond_34
    move-wide/from16 v33, v14

    .line 478
    goto :goto_c

    .line 483
    .restart local v33    # "viaSimId":J
    :cond_35
    move-wide/from16 v0, v33

    long-to-int v3, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    iput-object v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    goto :goto_d

    .line 486
    .end local v33    # "viaSimId":J
    :cond_36
    const/4 v3, 0x1

    iput v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->type:I

    .line 487
    if-eqz v24, :cond_37

    .end local v22    # "originalSim":J
    :goto_e
    move-wide/from16 v0, v22

    iput-wide v0, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->suggested:J

    .line 488
    const-wide/16 v3, -0x1

    cmp-long v3, v14, v3

    if-eqz v3, :cond_33

    const-wide/16 v3, -0x2

    cmp-long v3, v14, v3

    if-eqz v3, :cond_33

    .line 490
    long-to-int v3, v14

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    iput-object v3, v12, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    goto :goto_d

    .restart local v22    # "originalSim":J
    :cond_37
    move-wide/from16 v22, v14

    .line 487
    goto :goto_e
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 563
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, dialog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " which = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    move-object v0, p1

    .line 566
    check-cast v0, Landroid/app/AlertDialog;

    .line 567
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 568
    .local v1, "listAdapter":Landroid/widget/ListAdapter;
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 571
    .local v2, "slot":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick, slot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 572
    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 573
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 574
    invoke-direct {p0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->doSipCallOptionHandle()V

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 577
    iget-object v3, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    iget-object v3, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v4, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3, v4}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0
.end method

.method public onMakeCall(Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;)V
    .locals 14
    .param p1, "args"    # Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMakeCall, reason = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " args = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 506
    iget v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->reason:I

    sparse-switch v0, :sswitch_data_0

    .line 552
    const-string v0, "onMakeCall: no match case found!"

    invoke-static {v0}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->log(Ljava/lang/String;)V

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 508
    :sswitch_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-wide v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v13

    .line 512
    .local v13, "slot":I
    const/4 v0, -0x1

    if-ne v13, v0, :cond_1

    .line 513
    const/4 v13, 0x0

    .line 516
    :cond_1
    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 517
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0, v1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto :goto_0

    .line 523
    .end local v13    # "slot":I
    :sswitch_1
    iget-object v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    if-nez v0, :cond_3

    const-wide/16 v2, -0x5

    .line 526
    .local v2, "suggestedSim":J
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v0}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "com.android.phone.extra.international"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v4, v0, :cond_4

    .line 534
    .local v4, "addInternet":Z
    :goto_2
    const-string v0, "voicemail:"

    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const/4 v4, 0x0

    .line 537
    :cond_2
    iget-object v1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    iget-object v5, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v6, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v7, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mReasonAskCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->showReasonAskDialog(Lcom/mediatek/calloption/Request;JZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 523
    .end local v2    # "suggestedSim":J
    .end local v4    # "addInternet":Z
    :cond_3
    iget-object v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_1

    .restart local v2    # "suggestedSim":J
    :cond_4
    move v4, v1

    .line 526
    goto :goto_2

    .line 542
    .end local v2    # "suggestedSim":J
    :sswitch_2
    iget-object v0, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    check-cast v0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    iput-object v0, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateSimMissingArgs:Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    .line 543
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-wide v5, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->id:J

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v7

    .line 544
    .local v7, "associateSimInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-object v6, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    iget-object v8, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->number:Ljava/lang/String;

    iget-object v9, p1, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$CallbackArgs;->args:Ljava/lang/Object;

    check-cast v9, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;

    iget-object v10, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v11, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v12, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->mAssociateMissingCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/mediatek/calloption/SimSelectionCallOptionHandler;->showAssociateMissingDialog(Lcom/mediatek/calloption/Request;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 506
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0x6 -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract setIpPrefix(Ljava/lang/String;)V
.end method

.method protected abstract showAssociateMissingDialog(Lcom/mediatek/calloption/Request;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.method protected abstract showIpSelectDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
.end method

.method protected abstract showReasonAskDialog(Lcom/mediatek/calloption/Request;JZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method
