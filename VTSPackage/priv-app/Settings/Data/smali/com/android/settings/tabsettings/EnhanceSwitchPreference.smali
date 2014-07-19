.class public Lcom/android/settings/tabsettings/EnhanceSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "EnhanceSwitchPreference.java"


# instance fields
.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;->m_context:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    iput-object p1, p0, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;->m_context:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;->m_context:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "key":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;->m_context:Landroid/content/Context;

    const-class v3, Lcom/android/settings/tabsettings/CharacterHelp;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 52
    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;->m_context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
