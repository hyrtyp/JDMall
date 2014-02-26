.class Lcom/jingdong/app/mall/category/CategoryActivity$11;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;->showPromotionsImage(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->val$bitmap:Landroid/graphics/Bitmap;

    .line 927
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 932
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$47(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$51(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$47(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 934
    iget-object v0, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubAdapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$11(Lcom/jingdong/app/mall/category/CategoryActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->mSubListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$18(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$11;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->promotionsEntry:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$47(Lcom/jingdong/app/mall/category/CategoryActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jingdong/common/utils/MySimpleAdapter;->addHeaderView(Landroid/widget/ListView;Landroid/view/View;)V

    .line 936
    :cond_0
    return-void
.end method
