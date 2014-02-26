.class Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;
.super Ljava/lang/Object;
.source "FloorProductListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mImageViewFloorBannerDefalut:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$6(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 225
    new-instance v0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 226
    .local v0, drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    invoke-virtual {v0, v3}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setNeedPadding(Z)V

    .line 227
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mImageViewFloorBannerServer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$7(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mImageViewFloorBannerServer:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$7(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 230
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mButtonShare:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$8(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBgColor:Ljava/lang/String;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$9(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$10(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBgColor:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$9(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 235
    iget-object v1, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mLayoutFloorBanner:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$11(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1$1;->this$2:Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->this$1:Lcom/jingdong/app/mall/home/FloorProductListActivity$2;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2$1;)Lcom/jingdong/app/mall/home/FloorProductListActivity$2;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->this$0:Lcom/jingdong/app/mall/home/FloorProductListActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity$2;->access$0(Lcom/jingdong/app/mall/home/FloorProductListActivity$2;)Lcom/jingdong/app/mall/home/FloorProductListActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/home/FloorProductListActivity;->mBgColor:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/home/FloorProductListActivity;->access$9(Lcom/jingdong/app/mall/home/FloorProductListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v1

    goto :goto_0
.end method
