.class public abstract Lcom/mediatek/calloption/VideoCallOptionHandler;
.super Lcom/mediatek/calloption/CallOptionBaseHandler;
.source "VideoCallOptionHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallOptionHandler"


# instance fields
.field private mIs3GSwitchManualEnabled:Z

.field private mRequest:Lcom/mediatek/calloption/Request;

.field private mThreeGSIMSelectCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mThreeGSIMSelectClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mThreeGSIMSelectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mThreeGServiceCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mThreeGServiceClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mThreeGServiceDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mediatek/calloption/CallOptionBaseHandler;-><init>()V

    .line 156
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$1;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 175
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$2;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 182
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$3;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 191
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$4;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$4;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 205
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$5;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$5;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 212
    new-instance v0, Lcom/mediatek/calloption/VideoCallOptionHandler$6;

    invoke-direct {v0, p0}, Lcom/mediatek/calloption/VideoCallOptionHandler$6;-><init>(Lcom/mediatek/calloption/VideoCallOptionHandler;)V

    iput-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/calloption/VideoCallOptionHandler;)Lcom/mediatek/calloption/Request;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/calloption/VideoCallOptionHandler;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, "VideoCallOptionHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method private requestCheckSimStatus(Lcom/mediatek/calloption/Request;I)V
    .locals 3
    .param p1, "request"    # Lcom/mediatek/calloption/Request;
    .param p2, "slot"    # I

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.phone.extra.slot"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getSimStatusCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v0

    .line 152
    .local v0, "simStatusHandler":Lcom/mediatek/calloption/CallOptionBaseHandler;
    invoke-virtual {p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getFinalCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->setSuccessor(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 153
    invoke-virtual {v0, p1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleRequest(Lcom/mediatek/calloption/Request;)V
    .locals 21
    .param p1, "request"    # Lcom/mediatek/calloption/Request;

    .prologue
    .line 65
    const-string v3, "handleRequest()"

    invoke-static {v3}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 66
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.video"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 69
    const-string v3, "handleRequest(), but not video"

    invoke-static {v3}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    if-eqz v3, :cond_0

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/CallOptionBaseHandler;->mSuccessor:Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySlots()Ljava/util/List;

    move-result-object v20

    .line 79
    .local v20, "slots3G":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->isDualTalkSupport()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mRequest:Lcom/mediatek/calloption/Request;

    invoke-virtual {v3}, Lcom/mediatek/calloption/Request;->isMultipleSim()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 80
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v16, "inserted3GSims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 82
    .local v19, "slot":I
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v19    # "slot":I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRequest(), inserted3GSims.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGSIMSelectCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4, v6}, Lcom/mediatek/calloption/VideoCallOptionHandler;->show3GSIMSelectDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 92
    const/4 v9, -0x1

    .line 93
    .local v9, "EMPTY_SLOT":I
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.android.phone.extra.slot"

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getSimStatusCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v18

    .line 96
    .local v18, "simStatusHandler":Lcom/mediatek/calloption/CallOptionBaseHandler;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->getCallOptionHandlerFactory()Lcom/mediatek/calloption/CallOptionHandlerFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/calloption/CallOptionHandlerFactory;->getFinalCallOptionHandler()Lcom/mediatek/calloption/CallOptionBaseHandler;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/mediatek/calloption/CallOptionBaseHandler;->setSuccessor(Lcom/mediatek/calloption/CallOptionBaseHandler;)V

    .line 97
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/calloption/CallOptionBaseHandler;->handleRequest(Lcom/mediatek/calloption/Request;)V

    goto/16 :goto_0

    .line 106
    .end local v9    # "EMPTY_SLOT":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "inserted3GSims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "simStatusHandler":Lcom/mediatek/calloption/CallOptionBaseHandler;
    :cond_5
    :try_start_0
    const-string v3, "phoneEx"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v15

    .line 107
    .local v15, "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    invoke-interface {v15}, Lcom/mediatek/common/telephony/ITelephonyEx;->is3GSwitchManualEnabled()Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mIs3GSwitchManualEnabled:Z

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIs3GSwitchManualEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mIs3GSwitchManualEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v15    # "iTelephonyEx":Lcom/mediatek/common/telephony/ITelephonyEx;
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mIs3GSwitchManualEnabled:Z

    if-eqz v3, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/calloption/Request;->is3GSwitchSupport()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {p1 .. p1}, Lcom/mediatek/calloption/CallOptionUtils;->get3GCapabilitySIM(Lcom/mediatek/calloption/Request;)I

    move-result v19

    .line 113
    .restart local v19    # "slot":I
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRequest() slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    .line 115
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 116
    .local v11, "defaultSlot3G":I
    :goto_4
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_b

    .line 121
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/mediatek/calloption/CallOptionUtils;->isSimReady(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/mediatek/calloption/VideoCallOptionHandler;->requestCheckSimStatus(Lcom/mediatek/calloption/Request;I)V

    goto/16 :goto_0

    .line 109
    .end local v11    # "defaultSlot3G":I
    .end local v19    # "slot":I
    :catch_0
    move-exception v12

    .line 110
    .local v12, "e":Landroid/os/RemoteException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/calloption/VideoCallOptionHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 112
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_6
    const/16 v19, 0x0

    goto :goto_3

    .line 115
    .restart local v19    # "slot":I
    :cond_7
    const/4 v11, -0x1

    goto :goto_4

    .line 127
    .restart local v11    # "defaultSlot3G":I
    :cond_8
    const/4 v5, 0x0

    .line 128
    .local v5, "isInsertSim":Z
    sget-object v10, Lcom/mediatek/phone/GeminiConstants;->SLOTS:[I

    .local v10, "arr$":[I
    array-length v0, v10

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_5
    move/from16 v0, v17

    if-ge v14, v0, :cond_9

    aget v13, v10, v14

    .line 129
    .local v13, "gs":I
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/mediatek/calloption/CallOptionUtils;->isSimInsert(Lcom/mediatek/calloption/Request;I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 130
    const/4 v5, 0x1

    .line 134
    .end local v13    # "gs":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceClickListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/calloption/VideoCallOptionHandler;->mThreeGServiceCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/mediatek/calloption/VideoCallOptionHandler;->showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 128
    .restart local v13    # "gs":I
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 137
    .end local v5    # "isInsertSim":Z
    .end local v10    # "arr$":[I
    .end local v13    # "gs":I
    .end local v14    # "i$":I
    .end local v17    # "len$":I
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/mediatek/calloption/VideoCallOptionHandler;->requestCheckSimStatus(Lcom/mediatek/calloption/Request;I)V

    goto/16 :goto_0
.end method

.method protected abstract show3GSIMSelectDialog(Lcom/mediatek/calloption/Request;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method

.method protected abstract showOpen3GServiceDialog(Lcom/mediatek/calloption/Request;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnCancelListener;)V
.end method
