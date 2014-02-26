.class Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;
.super Ljava/lang/Object;
.source "CategoryActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnCommonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/category/CategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCategoryPromotionsImageListener"
.end annotation


# instance fields
.field private cId:Ljava/lang/String;

.field final synthetic this$0:Lcom/jingdong/app/mall/category/CategoryActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/category/CategoryActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "cId"

    .prologue
    .line 963
    iput-object p1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iput-object p2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;->cId:Ljava/lang/String;

    .line 965
    return-void
.end method

.method private gc()V
    .locals 0

    .prologue
    .line 991
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 4
    .parameter "httpResponse"

    .prologue
    const/4 v3, 0x0

    .line 970
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;->cId:Ljava/lang/String;

    iget-object v2, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #getter for: Lcom/jingdong/app/mall/category/CategoryActivity;->categoryId:Ljava/lang/String;
    invoke-static {v2}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$0(Lcom/jingdong/app/mall/category/CategoryActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    :goto_0
    return-void

    .line 974
    :cond_0
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v1

    invoke-static {v1, v3, v3}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 975
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;->this$0:Lcom/jingdong/app/mall/category/CategoryActivity;

    #calls: Lcom/jingdong/app/mall/category/CategoryActivity;->showPromotionsImage(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/category/CategoryActivity;->access$1(Lcom/jingdong/app/mall/category/CategoryActivity;Landroid/graphics/Bitmap;)V

    .line 976
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;->gc()V

    goto :goto_0
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/jingdong/app/mall/category/CategoryActivity$LoadCategoryPromotionsImageListener;->gc()V

    .line 983
    return-void
.end method

.method public onReady(Lcom/jingdong/common/utils/HttpGroup$HttpSettingParams;)V
    .locals 0
    .parameter "httpSettingParams"

    .prologue
    .line 988
    return-void
.end method
