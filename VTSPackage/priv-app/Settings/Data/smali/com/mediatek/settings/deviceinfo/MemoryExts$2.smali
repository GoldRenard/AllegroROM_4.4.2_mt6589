.class Lcom/mediatek/settings/deviceinfo/MemoryExts$2;
.super Ljava/lang/Object;
.source "MemoryExts.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/MemoryExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 303
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/mediatek/settings/deviceinfo/RadioButtonPreference;

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/sdcard0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 307
    const-string v0, "flyrea"

    const-string v1, "is run hereddddd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const/4 v1, 0x4

    # invokes: Lcom/mediatek/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$200(Lcom/mediatek/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;

    .line 320
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    # invokes: Lcom/mediatek/settings/deviceinfo/MemoryExts;->updateDefaultWriteDisk()V
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$300(Lcom/mediatek/settings/deviceinfo/MemoryExts;)V

    .line 322
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 309
    :cond_2
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage/sdcard1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/MemoryExts$2;->this$0:Lcom/mediatek/settings/deviceinfo/MemoryExts;

    const/4 v1, 0x5

    # invokes: Lcom/mediatek/settings/deviceinfo/MemoryExts;->showDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/mediatek/settings/deviceinfo/MemoryExts;->access$200(Lcom/mediatek/settings/deviceinfo/MemoryExts;I)Landroid/app/Dialog;

    goto :goto_0
.end method
