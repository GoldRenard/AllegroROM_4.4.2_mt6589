.class Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$2;
.super Ljava/lang/Object;
.source "FmtLanguagePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$2;->this$0:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;

    iput-object p2, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$2;->val$locale:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$2;->val$locale:Ljava/util/Locale;

    invoke-static {v0}, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->updateLocale(Ljava/util/Locale;)V

    .line 236
    iget-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker$2;->this$0:Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;

    iget-object v0, v0, Lcom/lenovo/setupwizard/fragments/FmtLanguagePicker;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 237
    return-void
.end method
