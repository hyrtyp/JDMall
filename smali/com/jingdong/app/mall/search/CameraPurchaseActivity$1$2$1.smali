.class Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2$1;
.super Ljava/lang/Object;
.source "CameraPurchaseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2$1;->this$2:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    :try_start_0
    sput p3, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->category_selected_index:I

    .line 196
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    check-cast v4, Landroid/widget/Adapter;

    invoke-interface {v4, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 197
    .local v1, obj:Ljava/lang/Object;
    instance-of v4, v1, Lcom/jingdong/common/entity/WareType;

    if-eqz v4, :cond_0

    .line 198
    move-object v0, v1

    check-cast v0, Lcom/jingdong/common/entity/WareType;

    move-object v3, v0

    .line 200
    .local v3, wareType:Lcom/jingdong/common/entity/WareType;
    iget-object v4, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2$1;->this$2:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;
    invoke-static {v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jingdong/common/entity/WareType;->getNeedDrawRect()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->needDrawRect:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$4(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1           #obj:Ljava/lang/Object;
    .end local v3           #wareType:Lcom/jingdong/common/entity/WareType;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/jingdong/app/mall/utils/CommonUtil;->getJdSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 209
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "photoType"

    iget-object v6, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2$1;->this$2:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;
    invoke-static {v6}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    move-result-object v6

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
    invoke-static {v6}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    move-result-object v6

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->categoryTypeArray:Ljava/lang/String;
    invoke-static {v6}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$1(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "photoTypeIndex"

    invoke-interface {v4, v5, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    iget-object v4, p0, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2$1;->this$2:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->this$1:Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;
    invoke-static {v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1$2;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->this$0:Lcom/jingdong/app/mall/search/CameraPurchaseActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;->access$0(Lcom/jingdong/app/mall/search/CameraPurchaseActivity$1;)Lcom/jingdong/app/mall/search/CameraPurchaseActivity;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->showDialog()V
    invoke-static {v4}, Lcom/jingdong/app/mall/search/CameraPurchaseActivity;->access$5(Lcom/jingdong/app/mall/search/CameraPurchaseActivity;)V

    .line 212
    return-void

    .line 202
    .end local v2           #sharedPreferences:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
