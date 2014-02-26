.class Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;
.super Ljava/lang/Object;
.source "ProductDetailNewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->onFinish(Lcom/jingdong/common/entity/Product;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;

.field private final synthetic val$isFavorited:Z

.field private final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->val$msg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->val$isFavorited:Z

    .line 949
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->val$msg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jingdong/common/utils/ToastUtils;->showToast(Lcom/jingdong/common/frame/IMyActivity;Ljava/lang/String;)V

    .line 953
    iget-boolean v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->val$isFavorited:Z

    if-nez v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->collectButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$26(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 956
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 957
    const-string v0, "homeFavoriteList"

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "favoriteList"

    iget-object v1, p0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2$1;->this$3:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->this$2:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1$2;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->this$1:Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15$1;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->this$0:Lcom/jingdong/app/mall/product/ProductDetailNewActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;->access$0(Lcom/jingdong/app/mall/product/ProductDetailNewActivity$15;)Lcom/jingdong/app/mall/product/ProductDetailNewActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->mSource:Lcom/jingdong/common/entity/SourceEntity;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->access$18(Lcom/jingdong/app/mall/product/ProductDetailNewActivity;)Lcom/jingdong/common/entity/SourceEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/SourceEntity;->getSourceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jingdong/app/mall/product/ProductDetailNewActivity;->hasCacelFavorite:Z

    .line 962
    :cond_1
    return-void
.end method
