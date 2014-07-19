.class final enum Landroid/view/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/view/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/view/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum DtmfStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum FMStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MATVStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MasterStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum MediaStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum RingerStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum SystemStream:Landroid/view/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Landroid/view/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamTitle:I

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x2

    const v14, 0x10802ae

    const v13, 0x1040426

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 181
    new-instance v0, Landroid/view/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v3, 0x6

    const v4, 0x1040427

    const v5, 0x3080088

    const v6, 0x3080088

    const v8, 0x30b002b

    move v7, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    .line 194
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "RingerStream"

    const v7, 0x1040428

    const v8, 0x3080091

    const v9, 0x3080097

    const v11, 0x30b002a

    move v5, v12

    move v6, v15

    move v10, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    .line 207
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "VoiceStream"

    const v7, 0x1040429

    const v8, 0x3080090

    const v9, 0x3080090

    const v11, 0x30b002c

    move v5, v15

    move v6, v2

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    .line 221
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "AlarmStream"

    const/4 v5, 0x3

    const/4 v6, 0x4

    const v7, 0x1040424

    const v8, 0x3080087

    const v9, 0x108029d

    const v11, 0x30b002d

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    .line 231
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "FMStream"

    const/4 v5, 0x4

    const/16 v6, 0xa

    const v7, 0x2050051

    const v8, 0x30800b8

    const v9, 0x30800b7

    const v11, 0x30b002e

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    .line 243
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MATVStream"

    const/4 v5, 0x5

    const/16 v6, 0xb

    const v7, 0x2050052

    const v8, 0x10803a3

    const v9, 0x10803a2

    const v11, 0x30b002f

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    .line 251
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MediaStream"

    const/4 v5, 0x6

    const/4 v6, 0x3

    const v7, 0x104042a

    const v8, 0x3080095

    const v11, 0x30b0030

    move v9, v14

    move v10, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    .line 263
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "NotificationStream"

    const/4 v5, 0x7

    const/4 v6, 0x5

    const v7, 0x104042b

    const v8, 0x308008c

    const v9, 0x308008d

    const v11, 0x30b0031

    move v10, v12

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    .line 275
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "MasterStream"

    const/16 v5, 0x8

    const/16 v6, -0x64

    const v7, 0x104042a

    const v8, 0x10802ac

    const v11, 0x30b0030

    move v9, v14

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    .line 284
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "RemoteStream"

    const/16 v5, 0x9

    const/16 v6, -0xc8

    const v7, 0x104042a

    const v8, 0x108032d

    const v9, 0x1080321

    const v11, 0x30b0030

    move v10, v2

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    .line 293
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "SystemStream"

    const/16 v5, 0xa

    const v8, 0x10802ac

    move v6, v12

    move v7, v13

    move v9, v14

    move v10, v2

    move v11, v13

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    .line 298
    new-instance v3, Landroid/view/VolumePanel$StreamResources;

    const-string v4, "DtmfStream"

    const/16 v5, 0xb

    const/16 v6, 0x8

    const v8, 0x10802ac

    move v7, v13

    move v9, v14

    move v10, v2

    move v11, v13

    invoke-direct/range {v3 .. v11}, Landroid/view/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZI)V

    sput-object v3, Landroid/view/VolumePanel$StreamResources;->DtmfStream:Landroid/view/VolumePanel$StreamResources;

    .line 180
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/VolumePanel$StreamResources;

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->BluetoothSCOStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v12

    sget-object v1, Landroid/view/VolumePanel$StreamResources;->VoiceStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v1, v0, v15

    const/4 v1, 0x3

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->FMStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MATVStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->MasterStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->RemoteStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->SystemStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/view/VolumePanel$StreamResources;->DtmfStream:Landroid/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZI)V
    .locals 0
    .param p3, "streamType"    # I
    .param p4, "descRes"    # I
    .param p5, "iconRes"    # I
    .param p6, "iconMuteRes"    # I
    .param p7, "show"    # Z
    .param p8, "streamTitle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZI)V"
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 320
    iput p3, p0, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .line 321
    iput p4, p0, Landroid/view/VolumePanel$StreamResources;->descRes:I

    .line 322
    iput p5, p0, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    .line 323
    iput p6, p0, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    .line 324
    iput-boolean p7, p0, Landroid/view/VolumePanel$StreamResources;->show:Z

    .line 326
    iput p8, p0, Landroid/view/VolumePanel$StreamResources;->streamTitle:I

    .line 328
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/view/VolumePanel$StreamResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 180
    const-class v0, Landroid/view/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Landroid/view/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Landroid/view/VolumePanel$StreamResources;->$VALUES:[Landroid/view/VolumePanel$StreamResources;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/VolumePanel$StreamResources;

    return-object v0
.end method
