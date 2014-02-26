.class Lcom/jingdong/app/mall/personel/PersonelActivity$24;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->setLayoutBackground(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$24;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$24;->val$bitmap:Landroid/graphics/Bitmap;

    .line 2312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2317
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$24;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->headReleatLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$54(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$24;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PhotoUtils;->BoxBlurFilter(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/jingdong/common/utils/ImageUtil;->zoomDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2318
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$24;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->headReleatLayout:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$54(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    :goto_0
    return-void

    .line 2319
    :catch_0
    move-exception v0

    goto :goto_0
.end method
