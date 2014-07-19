.class public Lcom/android/settings/tabsettings/WideTouchSwitchPreference;
.super Lcom/android/settings/tabsettings/EnhanceSwitchPreference;
.source "WideTouchSwitchPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/android/settings/tabsettings/WideTouchSwitchPreference;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object p1, p0, Lcom/android/settings/tabsettings/WideTouchSwitchPreference;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/tabsettings/EnhanceSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput-object p1, p0, Lcom/android/settings/tabsettings/WideTouchSwitchPreference;->mContext:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private startCalibartion()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v1, "com.lenovo.widetouch"

    const-string v2, "com.lenovo.widetouch.SettingActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/android/settings/tabsettings/WideTouchSwitchPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected onClick()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/settings/tabsettings/WideTouchSwitchPreference;->startCalibartion()V

    .line 32
    return-void
.end method
