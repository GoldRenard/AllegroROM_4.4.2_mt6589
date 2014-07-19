.class Lcom/android/settings/tabsettings/CharacterHelp$2;
.super Ljava/lang/Object;
.source "CharacterHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/tabsettings/CharacterHelp;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/CharacterHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/CharacterHelp;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/settings/tabsettings/CharacterHelp$2;->this$0:Lcom/android/settings/tabsettings/CharacterHelp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterHelp$2;->this$0:Lcom/android/settings/tabsettings/CharacterHelp;

    const-class v2, Lcom/android/settings/tabsettings/TrySwingLock;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterHelp$2;->this$0:Lcom/android/settings/tabsettings/CharacterHelp;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/tabsettings/CharacterHelp$2;->this$0:Lcom/android/settings/tabsettings/CharacterHelp;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 135
    return-void
.end method
