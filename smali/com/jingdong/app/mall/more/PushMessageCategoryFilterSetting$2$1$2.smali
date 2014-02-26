.class Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;
.super Ljava/lang/Object;
.source "PushMessageCategoryFilterSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;->this$2:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->removeLoadingDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$1(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V

    .line 193
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/MessageCategory;->hasSubcribed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 194
    return-void
.end method
