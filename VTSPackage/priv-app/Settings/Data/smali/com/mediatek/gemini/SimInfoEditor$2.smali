.class Lcom/mediatek/gemini/SimInfoEditor$2;
.super Ljava/lang/Object;
.source "SimInfoEditor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimInfoEditor;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimInfoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimInfoEditor;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoEditor$2;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 419
    return-void
.end method
