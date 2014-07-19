.class Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$2;
.super Ljava/lang/Object;
.source "FmtDateTimeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->showTimezonePicker(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;


# direct methods
.method constructor <init>(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$2;->this$0:Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v1

    .line 97
    .local v1, "tz":Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$2;->this$0:Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;

    const-string v3, "alarm"

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v2, v3}, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->access$200(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 98
    .local v0, "alarm":Landroid/app/AlarmManager;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 99
    iget-object v2, p0, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings$2;->this$0:Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;

    # getter for: Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->mTimeZonePopup:Landroid/widget/ListPopupWindow;
    invoke-static {v2}, Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;->access$100(Lcom/lenovo/setupwizard/fragments/FmtDateTimeSettings;)Landroid/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 100
    return-void
.end method
