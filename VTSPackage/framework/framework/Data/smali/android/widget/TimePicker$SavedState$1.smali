.class final Landroid/widget/TimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/widget/TimePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/TimePicker$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 411
    new-instance v0, Landroid/widget/TimePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcel;Landroid/widget/TimePicker$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/TimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/widget/TimePicker$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 415
    new-array v0, p1, [Landroid/widget/TimePicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Landroid/widget/TimePicker$SavedState$1;->newArray(I)[Landroid/widget/TimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method