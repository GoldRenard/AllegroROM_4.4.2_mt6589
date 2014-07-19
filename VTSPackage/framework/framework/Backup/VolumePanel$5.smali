.class Landroid/view/VolumePanel$5;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel;->initAudioProfile(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    .prologue
    .line 1722
    iput-object p1, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 1727
    packed-switch p2, :pswitch_data_0

    .line 1751
    :goto_0
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # invokes: Landroid/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$000(Landroid/view/VolumePanel;)V

    .line 1753
    :goto_1
    return-void

    .line 1731
    :pswitch_0
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    # getter for: Landroid/view/VolumePanel;->isCurrModeUserDifine:Z
    invoke-static {v0}, Landroid/view/VolumePanel;->access$900(Landroid/view/VolumePanel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const/4 v1, 0x0

    # setter for: Landroid/view/VolumePanel;->isCurrModeUserDifine:Z
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$902(Landroid/view/VolumePanel;Z)Z

    goto :goto_1

    .line 1736
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string/jumbo v1, "mtk_audioprofile_general"

    # invokes: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1739
    :pswitch_1
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string/jumbo v1, "mtk_audioprofile_silent"

    # invokes: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1742
    :pswitch_2
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string/jumbo v1, "mtk_audioprofile_meeting"

    # invokes: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1745
    :pswitch_3
    iget-object v0, p0, Landroid/view/VolumePanel$5;->this$0:Landroid/view/VolumePanel;

    const-string/jumbo v1, "mtk_audioprofile_outdoor"

    # invokes: Landroid/view/VolumePanel;->changedProfile(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/view/VolumePanel;->access$1000(Landroid/view/VolumePanel;Ljava/lang/String;)V

    goto :goto_0

    .line 1727
    :pswitch_data_0
    .packed-switch 0x30c001e
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
