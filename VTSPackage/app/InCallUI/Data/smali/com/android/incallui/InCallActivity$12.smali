.class Lcom/android/incallui/InCallActivity$12;
.super Landroid/os/Handler;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x3c

    const/4 v7, 0x0

    .line 1142
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1180
    const-string v2, "unhandled msg!!"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1144
    :sswitch_0
    const-string v2, "VT_VOICE_ANSWER_OVER ! "

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getInVoiceAnswerVideoCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1146
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v7}, Lcom/android/incallui/InCallActivity;->setInVoiceAnswerVideoCall(Z)V

    .line 1147
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->finish()V

    goto :goto_0

    .line 1152
    :sswitch_1
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mHour:I
    invoke-static {v5}, Lcom/android/incallui/InCallActivity;->access$400(Lcom/android/incallui/InCallActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mMinute:I
    invoke-static {v6}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mSecond:I
    invoke-static {v6}, Lcom/android/incallui/InCallActivity;->access$600(Lcom/android/incallui/InCallActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "recordElapsedTime":Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1154
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;)Lcom/mediatek/incallui/vt/VTCallFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1155
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;)Lcom/mediatek/incallui/vt/VTCallFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateRecord(Ljava/lang/String;)V

    .line 1162
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # operator++ for: Lcom/android/incallui/InCallActivity;->mSecond:I
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$608(Lcom/android/incallui/InCallActivity;)I

    .line 1163
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mSecond:I
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$600(Lcom/android/incallui/InCallActivity;)I

    move-result v2

    if-ne v2, v8, :cond_2

    .line 1164
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # setter for: Lcom/android/incallui/InCallActivity;->mSecond:I
    invoke-static {v2, v7}, Lcom/android/incallui/InCallActivity;->access$602(Lcom/android/incallui/InCallActivity;I)I

    .line 1165
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # operator++ for: Lcom/android/incallui/InCallActivity;->mMinute:I
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$508(Lcom/android/incallui/InCallActivity;)I

    .line 1167
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mMinute:I
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)I

    move-result v2

    if-ne v2, v8, :cond_3

    .line 1168
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # setter for: Lcom/android/incallui/InCallActivity;->mMinute:I
    invoke-static {v2, v7}, Lcom/android/incallui/InCallActivity;->access$502(Lcom/android/incallui/InCallActivity;I)I

    .line 1169
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # operator++ for: Lcom/android/incallui/InCallActivity;->mHour:I
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$408(Lcom/android/incallui/InCallActivity;)I

    .line 1171
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$300(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xaa

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1158
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$800(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1159
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$800(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/CallButtonFragment;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/CallButtonFragment;->updateRecordBtnTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 1174
    .end local v1    # "recordElapsedTime":Ljava/lang/String;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1175
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/android/incallui/InCallActivity$12;->this$0:Lcom/android/incallui/InCallActivity;
	
	const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Lcom/android/incallui/InCallActivity;->setBackground(Landroid/graphics/drawable/Drawable;Z)V

    goto/16 :goto_0

    .line 1142
    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_0
        0xaa -> :sswitch_1
        0xab -> :sswitch_2
    .end sparse-switch
.end method
