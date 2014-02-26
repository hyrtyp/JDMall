.class Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$2;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListData:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$10(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->jsonArrayPoxy:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$6(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jingdong/common/entity/Catelogy;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1100
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryListener;)Lcom/jingdong/app/mall/category/CategoryActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$11(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 1101
    return-void
.end method
