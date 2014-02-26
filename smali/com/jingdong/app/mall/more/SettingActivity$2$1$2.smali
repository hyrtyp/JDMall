.class Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SettingActivity$2$1;->onFinish(Lcom/jingdong/common/lbs/ProductInfoUtil;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

.field private final synthetic val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SettingActivity$2$1;Lcom/jingdong/app/mall/utils/ui/DialogController;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;->this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;->val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;->this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)Lcom/jingdong/app/mall/more/SettingActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->isCanShow:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$5(Lcom/jingdong/app/mall/more/SettingActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;->val$dialogController:Lcom/jingdong/app/mall/utils/ui/DialogController;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 199
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;->this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)Lcom/jingdong/app/mall/more/SettingActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/more/SettingActivity;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$6(Lcom/jingdong/app/mall/more/SettingActivity;)V

    .line 200
    iget-object v0, p0, Lcom/jingdong/app/mall/more/SettingActivity$2$1$2;->this$2:Lcom/jingdong/app/mall/more/SettingActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2$1;->this$1:Lcom/jingdong/app/mall/more/SettingActivity$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2$1;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2$1;)Lcom/jingdong/app/mall/more/SettingActivity$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity$2;->this$0:Lcom/jingdong/app/mall/more/SettingActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity$2;->access$0(Lcom/jingdong/app/mall/more/SettingActivity$2;)Lcom/jingdong/app/mall/more/SettingActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/SettingActivity;->updateLocation:Landroid/preference/PreferenceScreen;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/SettingActivity;->access$0(Lcom/jingdong/app/mall/more/SettingActivity;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 202
    :cond_0
    return-void
.end method
