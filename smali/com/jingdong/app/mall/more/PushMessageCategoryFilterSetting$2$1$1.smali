.class Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;
.super Ljava/lang/Object;
.source "PushMessageCategoryFilterSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

.field private final synthetic val$boxPreference:Landroid/preference/CheckBoxPreference;

.field private final synthetic val$category:Lcom/jingdong/common/entity/MessageCategory;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;Landroid/preference/CheckBoxPreference;Lcom/jingdong/common/entity/MessageCategory;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 173
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageCategory;->hasSubcribed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 174
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v1

    #calls: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->removeLoadingDialog()V
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$1(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V

    .line 176
    new-instance v0, Lcom/jingdong/app/mall/utils/ui/DialogController;

    invoke-direct {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    .line 177
    .local v0, controller:Lcom/jingdong/app/mall/utils/ui/DialogController;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setCanBack(Z)V

    .line 178
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v1

    const v2, 0x7f070191

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setMessage(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setNeutralButton(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v1

    const v2, 0x7f070190

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/DialogController;->init(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v0}, Lcom/jingdong/app/mall/utils/ui/DialogController;->show()V

    .line 183
    return-void
.end method
