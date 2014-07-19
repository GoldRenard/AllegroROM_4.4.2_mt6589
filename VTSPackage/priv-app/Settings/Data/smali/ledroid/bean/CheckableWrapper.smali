.class public final Lledroid/bean/CheckableWrapper;
.super Ljava/lang/Object;
.source "CheckableWrapper.java"

# interfaces
.implements Lledroid/bean/Checkable;


# instance fields
.field private mChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lledroid/bean/CheckableWrapper;->mChecked:Z

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 13
    iput-boolean p1, p0, Lledroid/bean/CheckableWrapper;->mChecked:Z

    .line 14
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lledroid/bean/CheckableWrapper;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lledroid/bean/CheckableWrapper;->setChecked(Z)V

    .line 19
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
