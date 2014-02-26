.class Lcom/jingdong/app/mall/more/SettingActivity$4$1;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity$4;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$4$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;

    .line 296
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/16 v4, 0x18

    .line 299
    packed-switch p2, :pswitch_data_0

    .line 315
    :goto_0
    return-void

    .line 301
    :pswitch_0
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$4$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$4;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$4;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->startTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity;->access$8(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->getCurrentItem()I

    move-result v2

    .line 302
    .local v2, start:I
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$4$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$4;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$4;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->endTime:Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity;->access$9(Lcom/jingdong/app/mall/more/SettingActivity;)Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/app/mall/utils/ui/wheelview/WheelView;->getCurrentItem()I

    move-result v1

    .line 304
    .local v1, end:I
    if-ltz v2, :cond_0

    if-ltz v1, :cond_0

    if-ge v2, v4, :cond_0

    if-ge v1, v4, :cond_0

    .line 305
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$4$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$4;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$4;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->settings:Landroid/content/SharedPreferences;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity;->access$4(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 306
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$4$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$4;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$4;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    const v4, 0x7f0703bd

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$4$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$4;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$4;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    const v4, 0x7f0703be

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 311
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/more/SettingActivity$4$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$4;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$4;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity$4;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$4;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->unPushTimePreference:Landroid/preference/Preference;
    invoke-static {v3}, Lcom/jingdong/app/mall/more/SettingActivity;->access$10(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {v2, v1}, Lcom/jingdong/app/mall/utils/TimeUtils;->getUnPushTimeSummary(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
