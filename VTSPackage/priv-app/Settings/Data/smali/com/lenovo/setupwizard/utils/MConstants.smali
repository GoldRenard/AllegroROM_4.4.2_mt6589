.class public Lcom/lenovo/setupwizard/utils/MConstants;
.super Ljava/lang/Object;
.source "MConstants.java"


# static fields
.field public static final ETC_DIR:Ljava/lang/String; = "/system/etc/"

.field public static final ids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lenovo/setupwizard/utils/MConstants;->ids:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020178
        0x7f020179
        0x7f02017a
        0x7f02017b
        0x7f02017c
        0x7f02017d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
