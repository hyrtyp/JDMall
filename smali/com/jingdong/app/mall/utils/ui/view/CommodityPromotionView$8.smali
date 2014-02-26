.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$CustomOnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivitesImage(ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

.field private final synthetic val$commercialList:Ljava/util/ArrayList;

.field private final synthetic val$index:I

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

.field private final synthetic val$pool:Lcom/jingdong/common/utils/HttpGroup;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;ILjava/lang/String;Ljava/util/ArrayList;Lcom/jingdong/common/utils/HttpGroup;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    iput p3, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$index:I

    iput-object p4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$key:Ljava/lang/String;

    iput-object p5, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$commercialList:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$pool:Lcom/jingdong/common/utils/HttpGroup;

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadNext(I)V
    .locals 6
    .parameter "index"

    .prologue
    .line 674
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$commercialList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$commercialList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$commercialList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jingdong/common/entity/Commercial;

    iget-object v4, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$pool:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    move v1, p1

    #calls: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->getActivitesImage(ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V
    invoke-static/range {v0 .. v5}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$14(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;ILjava/util/ArrayList;Lcom/jingdong/common/entity/Commercial;Lcom/jingdong/common/utils/HttpGroup;Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;)V

    .line 679
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isOnline:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$23(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 11
    .parameter "httpResponse"

    .prologue
    const/4 v10, 0x0

    .line 630
    const/4 v1, 0x0

    .line 632
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    :try_start_0
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 633
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 634
    iget-object v7, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->mSwitcher:Landroid/widget/ImageSwitcher;
    invoke-static {v7}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$19(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Landroid/widget/ImageSwitcher;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageSwitcher;->getWidth()I

    move-result v5

    .line 635
    .local v5, layout_width:I
    if-gtz v5, :cond_0

    .line 636
    invoke-static {}, Lcom/jingdong/common/utils/DPIUtil;->getWidth()I

    move-result v7

    const/high16 v8, 0x4120

    invoke-static {v8}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v8

    sub-int v5, v7, v8

    .line 638
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 639
    .local v4, img_width:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 640
    .local v3, img_height:F
    int-to-float v7, v5

    div-float v6, v7, v4

    .line 644
    .local v6, scale:F
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    .end local v3           #img_height:F
    .end local v4           #img_width:F
    .end local v5           #layout_width:I
    .end local v6           #scale:F
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$key:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 658
    iget-object v7, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iget-object v7, v7, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->commercialCache:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$key:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    :cond_2
    iget-object v7, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    if-eqz v7, :cond_3

    .line 661
    iget-object v7, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    iget v8, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$index:I

    iget-object v9, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$key:Ljava/lang/String;

    invoke-interface {v7, v8, v9}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;->onSuccess(ILjava/lang/String;)V

    .line 663
    :cond_3
    iget v7, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$index:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v7}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->loadNext(I)V

    .line 664
    return-void

    .line 646
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v2

    .line 650
    .local v2, e:Ljava/lang/Exception;
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v7

    invoke-static {v7, v10, v10}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 651
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$listener:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;

    iget v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$index:I

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$OnCommercialListener;->onError(ILjava/lang/String;Lcom/jingdong/common/utils/HttpGroup$HttpError;)V

    .line 625
    :cond_0
    iget v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->val$index:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$8;->loadNext(I)V

    .line 626
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 615
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 668
    return-void
.end method
