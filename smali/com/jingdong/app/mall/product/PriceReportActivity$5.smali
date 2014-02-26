.class Lcom/jingdong/app/mall/product/PriceReportActivity$5;
.super Ljava/lang/Object;
.source "PriceReportActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/PriceReportActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/PriceReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$5;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$5;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity;->takeImag:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$5(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 269
    iget-object v0, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$5;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity;->takeImag:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$5(Lcom/jingdong/app/mall/product/PriceReportActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/product/PriceReportActivity$5;->this$0:Lcom/jingdong/app/mall/product/PriceReportActivity;

    #getter for: Lcom/jingdong/app/mall/product/PriceReportActivity;->myDiscussImage:Lcom/jingdong/common/entity/DiscussImage;
    invoke-static {v1}, Lcom/jingdong/app/mall/product/PriceReportActivity;->access$6(Lcom/jingdong/app/mall/product/PriceReportActivity;)Lcom/jingdong/common/entity/DiscussImage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jingdong/common/entity/DiscussImage;->getPicture()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    return-void
.end method
