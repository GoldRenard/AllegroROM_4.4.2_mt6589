.class public Lcom/lenovo/setupwizard/DefaultActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DefaultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;,
        Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;
    }
.end annotation


# static fields
.field private static final BACKGROUND_DATA_ENABLE:Ljava/lang/String; = "persist.backgrounddata.enable"

.field public static final FLAG_HOMEKEY_DISPATCHED:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "lenovo_wizard"


# instance fields
.field private boolExpCheck:Z

.field private boolIdCheck:Z

.field private boolLicenseCheck:Z

.field private btn1:Landroid/widget/Button;

.field private btn2:Landroid/widget/Button;

.field private btn3:Landroid/widget/Button;

.field private factoryModeCount:I

.field private fragmentHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private fragmentNameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFactoryPerson:Z

.field private lastStep:I

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mFmtServer:Lcom/lenovo/setupwizard/fragments/FmtServer;

.field private pm:Landroid/content/pm/PackageManager;

.field private ringtoneType:I

.field private step:I

.field private title:Landroid/widget/TextView;

.field private topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolLicenseCheck:Z

    .line 85
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->first:I

    iput v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    .line 86
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->last:I

    iput v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->lastStep:I

    .line 88
    iput v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->factoryModeCount:I

    .line 89
    iput-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->isFactoryPerson:Z

    .line 445
    return-void
.end method

.method private btnVisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 209
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private configAndFinish()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->configServer()V

    .line 290
    iget-boolean v4, p0, Lcom/lenovo/setupwizard/DefaultActivity;->isFactoryPerson:Z

    if-eqz v4, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_factory_device_provisioned"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    const-class v4, Lcom/lenovo/setupwizard/DefaultActivity;

    invoke-static {p0, v4}, Lcom/lenovo/setupwizard/service/WizardUtility;->disableComponent(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 309
    return-void

    .line 293
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "is_factory_device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    const-string v2, "yes,lincl1"

    .line 295
    .local v2, "mString":Ljava/lang/String;
    const-string v4, "first_boot"

    invoke-virtual {p0, v4, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 297
    .local v3, "searchConfig":Landroid/content/SharedPreferences;
    const-string v4, "first"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, "bFirst":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 300
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "first"

    const-string v5, "oye,change~"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private disableStatusBar(Z)V
    .locals 5
    .param p1, "disable"    # Z

    .prologue
    .line 386
    const-string v2, "lenovo_wizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableStatusBar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 388
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_1

    .line 390
    if-eqz p1, :cond_0

    const/high16 v2, 0x10000

    :goto_0
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :goto_1
    return-void

    .line 390
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "lenovo_wizard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableStatusBar exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 395
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    const-string v2, "lenovo_wizard"

    const-string v3, "Fail to get status bar instance"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private gotoNextPage()V
    .locals 2

    .prologue
    .line 274
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    iput v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->lastStep:I

    .line 275
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->last:I

    if-ne v0, v1, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->configAndFinish()V

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    .line 280
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->gotoTargetFragment()V

    goto :goto_0
.end method

.method private gotoTargetFragment()V
    .locals 5

    .prologue
    .line 320
    iget v2, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    sget v3, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->first:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    sget v3, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->last:I

    if-le v2, v3, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 325
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 326
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    const v3, 0x7f0b0008

    iget-object v2, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentHashMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 327
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 329
    invoke-virtual {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->refreshUI()V

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 161
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->mConnService:Landroid/net/ConnectivityManager;

    .line 165
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->initIntentHashMap()V

    .line 167
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->pm:Landroid/content/pm/PackageManager;

    .line 169
    const v0, 0x7f0b02aa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/setupwizard/view/ViewFlow;

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    .line 170
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->title:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn1:Landroid/widget/Button;

    .line 172
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn2:Landroid/widget/Button;

    .line 173
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn3:Landroid/widget/Button;

    .line 175
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->initViewFlow()V

    .line 177
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn2:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn3:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void
.end method

.method private initIntentHashMap()V
    .locals 4

    .prologue
    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentHashMap:Ljava/util/HashMap;

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentNameHashMap:Ljava/util/HashMap;

    .line 239
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->LanguagePicker:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;

    invoke-direct {v2}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->DateTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;

    invoke-direct {v2}, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->CommonSettings:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/setupwizard/fragments/FmtCommonSettings;

    invoke-direct {v2}, Lcom/lenovo/setupwizard/fragments/FmtCommonSettings;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->Server:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/lenovo/setupwizard/fragments/FmtServer;

    invoke-direct {v2}, Lcom/lenovo/setupwizard/fragments/FmtServer;-><init>()V

    iput-object v2, p0, Lcom/lenovo/setupwizard/DefaultActivity;->mFmtServer:Lcom/lenovo/setupwizard/fragments/FmtServer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentNameHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->LanguagePicker:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0908a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentNameHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->DateTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09050f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentNameHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->CommonSettings:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09013d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentNameHashMap:Ljava/util/HashMap;

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->Server:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    return-void
.end method

.method private initViewFlow()V
    .locals 4

    .prologue
    .line 187
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    new-instance v2, Lcom/lenovo/setupwizard/adapter/ImageAdapter;

    invoke-direct {v2, p0}, Lcom/lenovo/setupwizard/adapter/ImageAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->setAdapter(Landroid/widget/Adapter;)V

    .line 188
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    sget-object v2, Lcom/lenovo/setupwizard/utils/MConstants;->ids:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->setmSideBuffer(I)V

    .line 190
    const v1, 0x7f0b02ab

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    .line 191
    .local v0, "indic":Lcom/lenovo/setupwizard/view/CircleFlowIndicator;
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v1, v0}, Lcom/lenovo/setupwizard/view/ViewFlow;->setFlowIndicator(Lcom/lenovo/setupwizard/view/FlowIndicator;)V

    .line 192
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/setupwizard/view/ViewFlow;->setTimeSpan(J)V

    .line 193
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lenovo/setupwizard/view/ViewFlow;->setSelection(I)V

    .line 194
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->startAutoFlowTimer()V

    .line 195
    return-void
.end method

.method private isSetupwizard()Z
    .locals 10

    .prologue
    .line 130
    const-string v7, "ro.setupwizard.mode"

    const-string v8, "DISABLED"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ENABLED"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 131
    .local v5, "setupWizardEnabled":Z
    const/4 v6, 0x0

    .line 132
    .local v6, "setupWizardExists":Z
    const/4 v4, 0x0

    .line 135
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    .line 137
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/setupwizard/DefaultActivity;->pm:Landroid/content/pm/PackageManager;

    const-string v8, "com.google.android.setupwizard"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 141
    :goto_0
    if-eqz v4, :cond_0

    .line 142
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v7

    .line 143
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 144
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v7, v7, v2

    iget-object v0, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 145
    .local v0, "activityName":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v7, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 146
    const/4 v6, 0x1

    .line 153
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_0
    return v6

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "activityName":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "len":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public configServer()V
    .locals 3

    .prologue
    .line 404
    iget-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolIdCheck:Z

    if-eqz v1, :cond_0

    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.lsf.LenovoID_Boot_Registered"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "persist.backgrounddata.enable"

    iget-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolExpCheck:Z

    if-eqz v1, :cond_2

    const-string v1, "true"

    :goto_0
    invoke-static {v2, v1}, Lcom/lenovo/setupwizard/utils/SysProp;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolExpCheck:Z

    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->getLenovoExpVCode()I

    move-result v1

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_1

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lenovo.action.CHANGE_DATA_REAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "flag"

    iget-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolIdCheck:Z

    if-eqz v1, :cond_3

    const-string v1, "open"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 420
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void

    .line 410
    :cond_2
    const-string v1, "false"

    goto :goto_0

    .line 416
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v1, "close"

    goto :goto_1
.end method

.method public doNegativeClick()V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public doPositiveClick()V
    .locals 3

    .prologue
    .line 480
    iget-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolExpCheck:Z

    if-eqz v1, :cond_0

    .line 481
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolExpCheck:Z

    .line 485
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentHashMap:Ljava/util/HashMap;

    sget v2, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->Server:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/setupwizard/fragments/FmtServer;

    invoke-virtual {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->getServerConfig()Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/setupwizard/fragments/FmtServer;->setConfig(Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    :goto_1
    return-void

    .line 483
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolExpCheck:Z

    goto :goto_0

    .line 486
    :catch_0
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public getLenovoExpVCode()I
    .locals 5

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 516
    .local v1, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.lenovo.ue.service"

    const/16 v4, 0x80

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 518
    .local v2, "pInfo":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    .end local v2    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 519
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getServerConfig()Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;
    .locals 3

    .prologue
    .line 438
    new-instance v0, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    iget-boolean v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolIdCheck:Z

    iget-boolean v2, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolExpCheck:Z

    invoke-direct {v0, v1, v2}, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;-><init>(ZZ)V

    .line 439
    .local v0, "config":Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;
    return-object v0
.end method

.method public gotoPreviousPage()V
    .locals 2

    .prologue
    .line 261
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    iput v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->lastStep:I

    .line 262
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->first:I

    if-ne v0, v1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    .line 266
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->gotoTargetFragment()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 226
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/16 v1, 0x7b

    if-ne p1, v1, :cond_0

    .line 227
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 228
    .local v0, "uri":Landroid/net/Uri;
    iget v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->ringtoneType:I

    invoke-static {p0, v1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 231
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 232
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 374
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    sget v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->first:I

    if-le v0, v1, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->gotoPreviousPage()V

    .line 379
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 356
    :goto_0
    return-void

    .line 338
    :pswitch_0
    invoke-virtual {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->gotoPreviousPage()V

    goto :goto_0

    .line 343
    :pswitch_1
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->gotoNextPage()V

    goto :goto_0

    .line 346
    :pswitch_2
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->factoryModeCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->isFactoryPerson:Z

    .line 348
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->configAndFinish()V

    goto :goto_0

    .line 350
    :cond_0
    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->factoryModeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->factoryModeCount:I

    goto :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0031
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 93
    sget-boolean v0, Lcom/lenovo/setupwizard/service/BootCompletedReceived;->ROW_PRODUCT:Z

    if-nez v0, :cond_1

    .line 94
    const-string v0, "lenovo_wizard"

    const-string v1, "not row product"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v0, "lenovo_wizard"

    const-string v1, "DefaultActivity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 101
    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 103
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->init()V

    .line 104
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->gotoTargetFragment()V

    .line 106
    invoke-direct {p0, v2}, Lcom/lenovo/setupwizard/DefaultActivity;->disableStatusBar(Z)V

    .line 109
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->isSetupwizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "lenovo_wizard"

    const-string v1, "Wizard is setup already!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->configAndFinish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 120
    const-string v0, "lenovo_wizard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/setupwizard/DefaultActivity;->disableStatusBar(Z)V

    .line 123
    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->topViewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/view/ViewFlow;->stopAutoFlowTimer()V

    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 361
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 363
    :cond_0
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 201
    const-string v0, "lenovo_wizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->last:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->refreshUI()V

    .line 203
    return-void
.end method

.method public refreshUI()V
    .locals 3

    .prologue
    .line 497
    const-string v0, "lenovo_wizard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "step: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-direct {p0}, Lcom/lenovo/setupwizard/DefaultActivity;->btnVisible()V

    .line 501
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn2:Landroid/widget/Button;

    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    sget v2, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->last:I

    if-ne v0, v2, :cond_0

    const v0, 0x7f090a9a

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 502
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->btn2:Landroid/widget/Button;

    iget v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    sget v2, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->last:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->mFmtServer:Lcom/lenovo/setupwizard/fragments/FmtServer;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/fragments/FmtServer;->isAcceptLicense()Z

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 504
    iget-object v1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->fragmentNameHashMap:Ljava/util/HashMap;

    iget v2, p0, Lcom/lenovo/setupwizard/DefaultActivity;->step:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 505
    return-void

    .line 501
    :cond_0
    const v0, 0x7f0904f3

    goto :goto_0

    .line 502
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 476
    iput p1, p0, Lcom/lenovo/setupwizard/DefaultActivity;->ringtoneType:I

    .line 477
    return-void
.end method

.method public setServerConfig(Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;)V
    .locals 1
    .param p1, "config"    # Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;

    .prologue
    .line 429
    iget-boolean v0, p1, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bId:Z

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolIdCheck:Z

    .line 430
    iget-boolean v0, p1, Lcom/lenovo/setupwizard/DefaultActivity$ServerConfig;->bExp:Z

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/DefaultActivity;->boolExpCheck:Z

    .line 431
    return-void
.end method
