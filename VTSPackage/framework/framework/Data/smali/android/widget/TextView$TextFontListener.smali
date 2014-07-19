.class public Landroid/widget/TextView$TextFontListener;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFontListener"
.end annotation


# instance fields
.field public hasRegister:Z

.field public mstyle:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9749
    iput-object p1, p0, Landroid/widget/TextView$TextFontListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9746
    iput v0, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 9747
    iput-boolean v0, p0, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 9750
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;I)V
    .locals 1
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "nstyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 9752
    iput-object p1, p0, Landroid/widget/TextView$TextFontListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9746
    iput v0, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 9747
    iput-boolean v0, p0, Landroid/widget/TextView$TextFontListener;->hasRegister:Z

    .line 9753
    iput p3, p0, Landroid/widget/TextView$TextFontListener;->mstyle:I

    .line 9754
    return-void
.end method
