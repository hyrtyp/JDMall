.class Lcom/jingdong/app/mall/product/ProductFilterActivity$3;
.super Ljava/lang/Object;
.source "ProductFilterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductFilterActivity;->initDistributeRegionValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 399
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$17(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/ProductFilterActivity;->distributeSearchChoosed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionTag:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$11(Lcom/jingdong/app/mall/product/ProductFilterActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initValue(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;I)V

    .line 400
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$17(Lcom/jingdong/app/mall/product/ProductFilterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/ProductFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionSearchChoosed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/ProductFilterActivity;->regionTag:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->access$11(Lcom/jingdong/app/mall/product/ProductFilterActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initValue(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;I)V

    .line 401
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductFilterActivity$3;->this$0:Lcom/jingdong/app/mall/product/ProductFilterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ProductFilterActivity;->initIsHaveItem()V

    .line 402
    return-void
.end method
