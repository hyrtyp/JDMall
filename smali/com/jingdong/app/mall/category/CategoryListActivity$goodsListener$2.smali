.class Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;
.super Ljava/lang/Object;
.source "CategoryListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

.field private final synthetic val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    iput-object p2, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->productImageGallery:Landroid/widget/Gallery;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$2(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/widget/Gallery;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 320
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;->val$adapter:Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity;->productImageGallery:Landroid/widget/Gallery;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$2(Lcom/jingdong/app/mall/category/CategoryListActivity;)Landroid/widget/Gallery;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/CirculationGalleryAdapter;->init(Landroid/widget/Gallery;)V

    .line 321
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener$2;->this$1:Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;

    #getter for: Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->this$0:Lcom/jingdong/app/mall/category/CategoryListActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;->access$0(Lcom/jingdong/app/mall/category/CategoryListActivity$goodsListener;)Lcom/jingdong/app/mall/category/CategoryListActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/category/CategoryListActivity;->showHeadView()V
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryListActivity;->access$3(Lcom/jingdong/app/mall/category/CategoryListActivity;)V

    .line 322
    return-void
.end method
