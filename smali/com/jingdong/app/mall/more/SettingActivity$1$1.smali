.class Lcom/jingdong/app/mall/more/SettingActivity$1$1;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/SettingActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$1;

    .line 98
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    packed-switch p2, :pswitch_data_0

    .line 112
    :goto_0
    return-void

    .line 104
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    const-class v2, Lcom/jingdong/common/service/MessagePullService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    const-string v1, "Action_Clear_Cache_Image"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-static {}, Lcom/jingdong/app/mall/MyApplication;->getInstance()Lcom/jingdong/app/mall/MyApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/MyApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SettingActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SettingActivity$1;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$1;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/app/mall/more/SettingActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/more/SettingActivity$1$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$1;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$1;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/more/SettingActivity$1;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$1;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v2

    const v3, 0x7f0703aa

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/more/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
