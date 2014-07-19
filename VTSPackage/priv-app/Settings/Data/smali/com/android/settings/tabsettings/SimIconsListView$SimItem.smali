.class Lcom/android/settings/tabsettings/SimIconsListView$SimItem;
.super Ljava/lang/Object;
.source "SimIconsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/SimIconsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimItem"
.end annotation


# instance fields
.field public mColor:I

.field public mDispalyNumberFormat:I

.field public mIsCU:Z

.field public mIsSim:Z

.field public mName:Ljava/lang/String;

.field public mNumber:Ljava/lang/String;

.field public mSimID:J

.field public mSlot:I

.field public mState:I

.field final synthetic this$0:Lcom/android/settings/tabsettings/SimIconsListView;


# direct methods
.method public constructor <init>(Lcom/android/settings/tabsettings/SimIconsListView;Landroid/provider/Telephony$SIMInfo;)V
    .locals 3
    .param p2, "siminfo"    # Landroid/provider/Telephony$SIMInfo;

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 308
    iput-object p1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-boolean v2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    .line 291
    iput-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    .line 292
    iput-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mDispalyNumberFormat:I

    .line 294
    iput v1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    .line 295
    iput v1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSlot:I

    .line 296
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    .line 297
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mState:I

    .line 298
    iput-boolean v2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsCU:Z

    .line 309
    iput-boolean v2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    .line 310
    iget-object v0, p2, Landroid/provider/Telephony$SIMInfo;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    .line 311
    iget-object v0, p2, Landroid/provider/Telephony$SIMInfo;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    .line 312
    iget v0, p2, Landroid/provider/Telephony$SIMInfo;->mDispalyNumberFormat:I

    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mDispalyNumberFormat:I

    .line 314
    iget v0, p2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    if-nez v0, :cond_0

    .line 315
    const v0, 0x20200d1

    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    .line 321
    :goto_0
    iget v0, p2, Landroid/provider/Telephony$SIMInfo;->mSlot:I

    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSlot:I

    .line 322
    iget-wide v0, p2, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    iput-wide v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    .line 323
    return-void

    .line 317
    :cond_0
    const v0, 0x20200d6

    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/tabsettings/SimIconsListView;Ljava/lang/String;IJ)V
    .locals 4
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "color"    # I
    .param p4, "simID"    # J

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 301
    iput-object p1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->this$0:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-boolean v3, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    .line 291
    iput-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    .line 292
    iput-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    .line 293
    iput v2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mDispalyNumberFormat:I

    .line 294
    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    .line 295
    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSlot:I

    .line 296
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    .line 297
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mState:I

    .line 298
    iput-boolean v3, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsCU:Z

    .line 302
    iput-object p2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mName:Ljava/lang/String;

    .line 303
    iput p3, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mColor:I

    .line 304
    iput-boolean v2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    .line 305
    iput-wide p4, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    .line 306
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->getFormatedNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormatedNumber()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 326
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 327
    :cond_0
    const-string v0, ""

    .line 346
    :goto_0
    return-object v0

    .line 330
    :cond_1
    const-string v0, "SimIconsListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFormatedNumber called, mNumber is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mDispalyNumberFormat:I

    packed-switch v0, :pswitch_data_0

    .line 346
    const-string v0, ""

    goto :goto_0

    .line 334
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_2

    .line 335
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_3

    .line 340
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    iget-object v2, p0, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 344
    :pswitch_2
    const-string v0, ""

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
