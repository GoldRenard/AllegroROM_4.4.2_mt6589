.class public Lcom/android/incallui/InCallApp;
.super Landroid/app/Application;
.source "InCallApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallApp$ReminderBroadcastReceiver;,
        Lcom/android/incallui/InCallApp$NotificationBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_HANG_UP_ONGOING_CALL:Ljava/lang/String; = "com.android.incallui.ACTION_HANG_UP_ONGOING_CALL"

.field private static sMe:Lcom/android/incallui/InCallApp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 60
    sput-object p0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    .line 61
    return-void
.end method

.method public static getInstance()Lcom/android/incallui/InCallApp;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No InCallApp here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallApp;->sMe:Lcom/android/incallui/InCallApp;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
