.class Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$11;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$11;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$img:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$11;Landroid/graphics/drawable/LayerDrawable;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$11;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->val$img:Landroid/graphics/drawable/LayerDrawable;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->val$bitmap:Landroid/graphics/Bitmap;

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$11;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$11;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$45(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->val$img:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1234
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$11;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$11;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->mImgView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$45(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 1236
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$11;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$11;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$11;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$11;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$11$1;->val$bitmap:Landroid/graphics/Bitmap;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setLayoutBackground(Landroid/graphics/Bitmap;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$46(Lcom/jingdong/app/mall/personel/PersonelActivity;Landroid/graphics/Bitmap;)V

    .line 1237
    return-void
.end method
