.class Lcom/jingdong/common/utils/NoImageUtils$3$1;
.super Ljava/lang/Object;
.source "NoImageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NoImageUtils$3;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/utils/NoImageUtils$3;

.field private final synthetic val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NoImageUtils$3;Lcom/jingdong/common/utils/HttpGroup$HttpResponse;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NoImageUtils$3$1;->this$1:Lcom/jingdong/common/utils/NoImageUtils$3;

    iput-object p2, p0, Lcom/jingdong/common/utils/NoImageUtils$3$1;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    iput-object p3, p0, Lcom/jingdong/common/utils/NoImageUtils$3$1;->val$imageView:Landroid/widget/ImageView;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v1, p0, Lcom/jingdong/common/utils/NoImageUtils$3$1;->val$httpResponse:Lcom/jingdong/common/utils/HttpGroup$HttpResponse;

    invoke-static {v1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/jingdong/common/utils/NoImageUtils$3$1;->val$imageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    iget-object v1, p0, Lcom/jingdong/common/utils/NoImageUtils$3$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 99
    return-void
.end method
