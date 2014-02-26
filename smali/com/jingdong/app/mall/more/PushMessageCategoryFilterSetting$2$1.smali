.class Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;
.super Ljava/lang/Object;
.source "PushMessageCategoryFilterSetting.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

.field private final synthetic val$boxPreference:Landroid/preference/CheckBoxPreference;

.field private final synthetic val$category:Lcom/jingdong/common/entity/MessageCategory;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;Lcom/jingdong/common/entity/MessageCategory;Landroid/preference/CheckBoxPreference;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    iput-object p3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$2;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;Landroid/preference/CheckBoxPreference;Lcom/jingdong/common/entity/MessageCategory;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    invoke-virtual {v0}, Lcom/jingdong/common/entity/MessageCategory;->getIsSubcribe()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 164
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/MessageCategory;->setIsSubcribe(Ljava/lang/Integer;)V

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->this$1:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1$1;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;Landroid/preference/CheckBoxPreference;Lcom/jingdong/common/entity/MessageCategory;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/MessageCategory;->setIsSubcribe(Ljava/lang/Integer;)V

    goto :goto_0

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 154
    return-void
.end method
