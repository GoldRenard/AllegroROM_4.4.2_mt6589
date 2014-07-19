.class public final Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;
.super Ljava/lang/Object;
.source "DefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/setupwizard/DefaultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentStep"
.end annotation


# static fields
.field static final CommonSettings:I

.field static final DateTime:I

.field static final LanguagePicker:I

.field static final Server:I

.field static base:I

.field static final first:I

.field static final last:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    .line 70
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    sput v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->first:I

    .line 71
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    sput v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->LanguagePicker:I

    .line 72
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    sput v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->DateTime:I

    .line 73
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    sput v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->CommonSettings:I

    .line 77
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    sput v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->Server:I

    .line 78
    sget v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->base:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/lenovo/setupwizard/DefaultActivity$FragmentStep;->last:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
