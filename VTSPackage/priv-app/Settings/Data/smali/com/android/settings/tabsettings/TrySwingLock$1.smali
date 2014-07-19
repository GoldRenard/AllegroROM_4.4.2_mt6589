.class Lcom/android/settings/tabsettings/TrySwingLock$1;
.super Ljava/lang/Object;
.source "TrySwingLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/TrySwingLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/TrySwingLock;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/TrySwingLock;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/tabsettings/TrySwingLock$1;->this$0:Lcom/android/settings/tabsettings/TrySwingLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/tabsettings/TrySwingLock$1;->this$0:Lcom/android/settings/tabsettings/TrySwingLock;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 71
    return-void
.end method
