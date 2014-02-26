.class Lcom/jingdong/app/mall/more/SettingActivity$5;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/utils/ui/wheelview/OnWheelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SettingActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$5;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;II)V
    .locals 3
    .parameter "wheel"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$5;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$5;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    invoke-virtual {p1}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    #setter for: Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/more/SettingActivity;->access$13(Lcom/jingdong/app/mall/more/SettingActivity;I)V

    .line 384
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$5;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimeDialog:Lcom/jingdong/app/mall/utils/ui/DialogController;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$7(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/DialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$5;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->startHour:I
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SettingActivity;->access$14(Lcom/jingdong/app/mall/more/SettingActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity$5;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->endHour:I
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SettingActivity;->access$15(Lcom/jingdong/app/mall/more/SettingActivity;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/TimeUtils;->getSimpleUnPushTimeSummary(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
