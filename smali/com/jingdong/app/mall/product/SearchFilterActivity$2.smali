.class Lcom/jingdong/app/mall/product/SearchFilterActivity$2;
.super Ljava/lang/Object;
.source "SearchFilterActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity;->initDistributeRegionValue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$31(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mDistributeFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/SearchFilterActivity;->distributeSearchChoosed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$32(Lcom/jingdong/app/mall/product/SearchFilterActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initValue(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;I)V

    .line 216
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->myActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$31(Lcom/jingdong/app/mall/product/SearchFilterActivity;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v1, v1, Lcom/jingdong/app/mall/product/SearchFilterActivity;->mRegionFilter:Lcom/jingdong/common/entity/SearchFilter;

    iget-object v2, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    iget-object v2, v2, Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionSearchChoosed:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    #getter for: Lcom/jingdong/app/mall/product/SearchFilterActivity;->regionTag:I
    invoke-static {v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->access$32(Lcom/jingdong/app/mall/product/SearchFilterActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initValue(Lcom/jingdong/app/mall/utils/MyActivity;Lcom/jingdong/common/entity/SearchFilter;Landroid/widget/TextView;I)V

    .line 217
    iget-object v0, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$2;->this$0:Lcom/jingdong/app/mall/product/SearchFilterActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/SearchFilterActivity;->initIsHaveItem()V

    .line 218
    return-void
.end method
