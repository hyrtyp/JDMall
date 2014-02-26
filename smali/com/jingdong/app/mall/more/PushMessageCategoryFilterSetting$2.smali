.class Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;
.super Ljava/lang/Object;
.source "PushMessageCategoryFilterSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->refreshPushMsgCategory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

.field private final synthetic val$boxPreference:Landroid/preference/CheckBoxPreference;

.field private final synthetic val$category:Lcom/jingdong/common/entity/MessageCategory;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;Landroid/preference/CheckBoxPreference;Lcom/jingdong/common/entity/MessageCategory;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    iput-object p3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;)Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    return-object v0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/MessageCategory;->setIsSubcribe(Ljava/lang/Integer;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->this$0:Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;

    #calls: Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->showLoadingDialog()V
    invoke-static {v0}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;->access$6(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting;)V

    .line 151
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    new-instance v1, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    iget-object v3, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$boxPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {v1, p0, v2, v3}, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2$1;-><init>(Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;Lcom/jingdong/common/entity/MessageCategory;Landroid/preference/CheckBoxPreference;)V

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/PushMessageUtils;->resetMessageCategorySubcribeState(Lcom/jingdong/common/entity/MessageCategory;Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;)V

    .line 198
    return v4

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/more/PushMessageCategoryFilterSetting$2;->val$category:Lcom/jingdong/common/entity/MessageCategory;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/common/entity/MessageCategory;->setIsSubcribe(Ljava/lang/Integer;)V

    goto :goto_0
.end method
