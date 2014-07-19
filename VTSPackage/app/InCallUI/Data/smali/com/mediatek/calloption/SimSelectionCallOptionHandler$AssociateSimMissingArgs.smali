.class public Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;
.super Ljava/lang/Object;
.source "SimSelectionCallOptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/calloption/SimSelectionCallOptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssociateSimMissingArgs"
.end annotation


# static fields
.field public static final ASSOCIATE_SIM_MISSING_YES_NO:I = 0x0

.field public static final ASSOCIATE_SIM_MISSING_YES_OTHER:I = 0x1


# instance fields
.field public mViaSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

.field public suggested:J

.field final synthetic this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/mediatek/calloption/SimSelectionCallOptionHandler;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mediatek/calloption/SimSelectionCallOptionHandler$AssociateSimMissingArgs;->this$0:Lcom/mediatek/calloption/SimSelectionCallOptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method
