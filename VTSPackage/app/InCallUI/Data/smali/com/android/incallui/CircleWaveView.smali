.class public Lcom/android/incallui/CircleWaveView;
.super Landroid/view/View;
.source "CircleWaveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CircleWaveView$CircleData;
    }
.end annotation


# instance fields
.field private final mCircleData:[Lcom/android/incallui/CircleWaveView$CircleData;

.field private mCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CircleWaveView;->mCount:I

    .line 14
    const/16 v0, 0x23

    new-array v8, v0, [Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v9, 0x0

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x48

    const v3, 0x7fffffff

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x51

    const v3, 0x7affffff

    const/16 v4, 0x11

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x5a

    const v3, 0x75ffffff

    const/16 v4, 0x11

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x64

    const v3, 0x6fffffff

    const/16 v4, 0x11

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x6c

    const v3, 0x6affffff

    const/16 v4, 0xf

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x75

    const v3, 0x65ffffff

    const/16 v4, 0xf

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x7e

    const v3, 0x5fffffff

    const/16 v4, 0xf

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x87

    const v3, 0x5affffff

    const/16 v4, 0xe

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x91

    const v3, 0x55ffffff

    const/16 v4, 0xe

    const/16 v5, 0x51

    const v6, 0x7affffff

    const/16 v7, 0x11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x99

    const v3, 0x4fffffff

    const/16 v4, 0xd

    const/16 v5, 0x5a

    const v6, 0x75ffffff

    const/16 v7, 0x11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xa3

    const v3, 0x4affffff

    const/16 v4, 0xc

    const/16 v5, 0x64

    const v6, 0x6fffffff

    const/16 v7, 0x11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xac

    const v3, 0x46ffffff

    const/16 v4, 0xb

    const/16 v5, 0x6c

    const v6, 0x6affffff

    const/16 v7, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xc

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xb4

    const v3, 0x42ffffff

    const/16 v4, 0xb

    const/16 v5, 0x75

    const v6, 0x65ffffff

    const/16 v7, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xd

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xbe

    const v3, 0x3dffffff

    const/16 v4, 0xb

    const/16 v5, 0x7e

    const v6, 0x5fffffff

    const/16 v7, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xe

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xc7

    const v3, 0x39ffffff

    const/16 v4, 0xa

    const/16 v5, 0x87

    const v6, 0x5affffff

    const/16 v7, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xf

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xd0

    const v3, 0x35ffffff

    const/16 v4, 0xa

    const/16 v5, 0x91

    const v6, 0x55ffffff

    const/16 v7, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x10

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xd8

    const v3, 0x31ffffff

    const/16 v4, 0x9

    const/16 v5, 0x99

    const v6, 0x4fffffff

    const/16 v7, 0xd

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x11

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xe1

    const v3, 0x2cffffff

    const/16 v4, 0x8

    const/16 v5, 0xa3

    const v6, 0x4affffff

    const/16 v7, 0xc

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x12

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xeb

    const v3, 0x28ffffff

    const/16 v4, 0x8

    const/16 v5, 0xac

    const v6, 0x46ffffff

    const/16 v7, 0xb

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x13

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xf4

    const v3, 0x24ffffff

    const/16 v4, 0x8

    const/16 v5, 0xb4

    const v6, 0x42ffffff

    const/16 v7, 0xb

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x14

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xfd

    const v3, 0x1fffffff

    const/4 v4, 0x7

    const/16 v5, 0xbe

    const v6, 0x3dffffff

    const/16 v7, 0xb

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x15

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x106

    const v3, 0x1bffffff

    const/4 v4, 0x7

    const/16 v5, 0xc7

    const v6, 0x39ffffff

    const/16 v7, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x16

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x10f

    const v3, 0x17ffffff

    const/4 v4, 0x6

    const/16 v5, 0xd0

    const v6, 0x35ffffff

    const/16 v7, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x17

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x118

    const v3, 0x13ffffff

    const/4 v4, 0x6

    const/16 v5, 0xd8

    const v6, 0x31ffffff

    const/16 v7, 0x9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x18

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x121

    const v3, 0xeffffff

    const/4 v4, 0x5

    const/16 v5, 0xe1

    const v6, 0x2cffffff

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x19

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x12b

    const v3, 0xaffffff

    const/4 v4, 0x5

    const/16 v5, 0xeb

    const v6, 0x28ffffff

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1a

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x132

    const v3, 0x6ffffff

    const/4 v4, 0x4

    const/16 v5, 0xf4

    const v6, 0x24ffffff

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1b

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x13e

    const v3, 0x2ffffff

    const/4 v4, 0x4

    const/16 v5, 0xfd

    const v6, 0x1fffffff

    const/4 v7, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1c

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x106

    const v6, 0x1bffffff

    const/4 v7, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1d

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10f

    const v6, 0x17ffffff

    const/4 v7, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1e

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x118

    const v6, 0x13ffffff

    const/4 v7, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1f

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x121

    const v6, 0xeffffff

    const/4 v7, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x20

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12b

    const v6, 0xaffffff

    const/4 v7, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x21

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x132

    const v6, 0x6ffffff

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x22

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x13e

    const v6, 0x2ffffff

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    iput-object v8, p0, Lcom/android/incallui/CircleWaveView;->mCircleData:[Lcom/android/incallui/CircleWaveView$CircleData;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/CircleWaveView;->mCount:I

    .line 14
    const/16 v0, 0x23

    new-array v8, v0, [Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v9, 0x0

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x48

    const v3, 0x7fffffff

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x1

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x51

    const v3, 0x7affffff

    const/16 v4, 0x11

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x5a

    const v3, 0x75ffffff

    const/16 v4, 0x11

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x64

    const v3, 0x6fffffff

    const/16 v4, 0x11

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x6c

    const v3, 0x6affffff

    const/16 v4, 0xf

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x75

    const v3, 0x65ffffff

    const/16 v4, 0xf

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x7e

    const v3, 0x5fffffff

    const/16 v4, 0xf

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x87

    const v3, 0x5affffff

    const/16 v4, 0xe

    const/16 v5, 0x48

    const v6, 0x7fffffff

    const/16 v7, 0x12

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x91

    const v3, 0x55ffffff

    const/16 v4, 0xe

    const/16 v5, 0x51

    const v6, 0x7affffff

    const/16 v7, 0x11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x99

    const v3, 0x4fffffff

    const/16 v4, 0xd

    const/16 v5, 0x5a

    const v6, 0x75ffffff

    const/16 v7, 0x11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xa3

    const v3, 0x4affffff

    const/16 v4, 0xc

    const/16 v5, 0x64

    const v6, 0x6fffffff

    const/16 v7, 0x11

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xb

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xac

    const v3, 0x46ffffff

    const/16 v4, 0xb

    const/16 v5, 0x6c

    const v6, 0x6affffff

    const/16 v7, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xc

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xb4

    const v3, 0x42ffffff

    const/16 v4, 0xb

    const/16 v5, 0x75

    const v6, 0x65ffffff

    const/16 v7, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xd

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xbe

    const v3, 0x3dffffff

    const/16 v4, 0xb

    const/16 v5, 0x7e

    const v6, 0x5fffffff

    const/16 v7, 0xf

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xe

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xc7

    const v3, 0x39ffffff

    const/16 v4, 0xa

    const/16 v5, 0x87

    const v6, 0x5affffff

    const/16 v7, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0xf

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xd0

    const v3, 0x35ffffff

    const/16 v4, 0xa

    const/16 v5, 0x91

    const v6, 0x55ffffff

    const/16 v7, 0xe

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x10

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xd8

    const v3, 0x31ffffff

    const/16 v4, 0x9

    const/16 v5, 0x99

    const v6, 0x4fffffff

    const/16 v7, 0xd

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x11

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xe1

    const v3, 0x2cffffff

    const/16 v4, 0x8

    const/16 v5, 0xa3

    const v6, 0x4affffff

    const/16 v7, 0xc

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x12

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xeb

    const v3, 0x28ffffff

    const/16 v4, 0x8

    const/16 v5, 0xac

    const v6, 0x46ffffff

    const/16 v7, 0xb

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x13

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xf4

    const v3, 0x24ffffff

    const/16 v4, 0x8

    const/16 v5, 0xb4

    const v6, 0x42ffffff

    const/16 v7, 0xb

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x14

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0xfd

    const v3, 0x1fffffff

    const/4 v4, 0x7

    const/16 v5, 0xbe

    const v6, 0x3dffffff

    const/16 v7, 0xb

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x15

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x106

    const v3, 0x1bffffff

    const/4 v4, 0x7

    const/16 v5, 0xc7

    const v6, 0x39ffffff

    const/16 v7, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x16

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x10f

    const v3, 0x17ffffff

    const/4 v4, 0x6

    const/16 v5, 0xd0

    const v6, 0x35ffffff

    const/16 v7, 0xa

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x17

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x118

    const v3, 0x13ffffff

    const/4 v4, 0x6

    const/16 v5, 0xd8

    const v6, 0x31ffffff

    const/16 v7, 0x9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x18

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x121

    const v3, 0xeffffff

    const/4 v4, 0x5

    const/16 v5, 0xe1

    const v6, 0x2cffffff

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x19

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x12b

    const v3, 0xaffffff

    const/4 v4, 0x5

    const/16 v5, 0xeb

    const v6, 0x28ffffff

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1a

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x132

    const v3, 0x6ffffff

    const/4 v4, 0x4

    const/16 v5, 0xf4

    const v6, 0x24ffffff

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1b

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/16 v2, 0x13e

    const v3, 0x2ffffff

    const/4 v4, 0x4

    const/16 v5, 0xfd

    const v6, 0x1fffffff

    const/4 v7, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1c

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x106

    const v6, 0x1bffffff

    const/4 v7, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1d

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10f

    const v6, 0x17ffffff

    const/4 v7, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1e

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x118

    const v6, 0x13ffffff

    const/4 v7, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x1f

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x121

    const v6, 0xeffffff

    const/4 v7, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x20

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x12b

    const v6, 0xaffffff

    const/4 v7, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x21

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x132

    const v6, 0x6ffffff

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    const/16 v9, 0x22

    new-instance v0, Lcom/android/incallui/CircleWaveView$CircleData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x13e

    const v6, 0x2ffffff

    const/4 v7, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/incallui/CircleWaveView$CircleData;-><init>(Lcom/android/incallui/CircleWaveView;IIIIII)V

    aput-object v0, v8, v9

    iput-object v8, p0, Lcom/android/incallui/CircleWaveView;->mCircleData:[Lcom/android/incallui/CircleWaveView$CircleData;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CircleWaveView;Landroid/view/View;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CircleWaveView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # F

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CircleWaveView;->dip2px(Landroid/view/View;F)F

    move-result v0

    return v0
.end method

.method private dip2px(Landroid/view/View;F)F
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dpValue"    # F

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x447a0000

    div-float v1, v2, v3

    .line 97
    .local v1, "wave_scale":F
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v2, v1

    .line 98
    .local v0, "scale":F
    mul-float v2, p2, v0

    return v2
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget v5, p0, Lcom/android/incallui/CircleWaveView;->mCount:I

    iget-object v6, p0, Lcom/android/incallui/CircleWaveView;->mCircleData:[Lcom/android/incallui/CircleWaveView$CircleData;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 74
    iget-object v5, p0, Lcom/android/incallui/CircleWaveView;->mCircleData:[Lcom/android/incallui/CircleWaveView$CircleData;

    iget v6, p0, Lcom/android/incallui/CircleWaveView;->mCount:I

    aget-object v2, v5, v6

    .line 75
    .local v2, "cd":Lcom/android/incallui/CircleWaveView$CircleData;
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 76
    .local v1, "c_y":I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 77
    .local v0, "c_x":I
    iget v5, v2, Lcom/android/incallui/CircleWaveView$CircleData;->r1:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_0

    .line 78
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 79
    .local v3, "p1":Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget v5, v2, Lcom/android/incallui/CircleWaveView$CircleData;->c1:I

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget v5, v2, Lcom/android/incallui/CircleWaveView$CircleData;->w1:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 82
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    int-to-float v5, v0

    int-to-float v6, v1

    iget v7, v2, Lcom/android/incallui/CircleWaveView$CircleData;->r1:F

    invoke-virtual {p1, v5, v6, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 85
    .end local v3    # "p1":Landroid/graphics/Paint;
    :cond_0
    iget v5, v2, Lcom/android/incallui/CircleWaveView$CircleData;->r2:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1

    .line 86
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .local v4, "p2":Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget v5, v2, Lcom/android/incallui/CircleWaveView$CircleData;->c2:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 89
    iget v5, v2, Lcom/android/incallui/CircleWaveView$CircleData;->w2:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 90
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    int-to-float v5, v0

    int-to-float v6, v1

    iget v7, v2, Lcom/android/incallui/CircleWaveView$CircleData;->r2:F

    invoke-virtual {p1, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    .end local v0    # "c_x":I
    .end local v1    # "c_y":I
    .end local v2    # "cd":Lcom/android/incallui/CircleWaveView$CircleData;
    .end local v4    # "p2":Landroid/graphics/Paint;
    :cond_1
    return-void
.end method

.method public updateCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/incallui/CircleWaveView;->mCount:I

    .line 66
    return-void
.end method
