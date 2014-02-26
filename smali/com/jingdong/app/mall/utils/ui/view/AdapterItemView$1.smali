.class Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;
.super Ljava/lang/Object;
.source "AdapterItemView.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->setDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->val$icon:Landroid/widget/ImageView;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;)Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 6
    .parameter "httpResponse"

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-static {p1}, Lcom/jingdong/common/utils/ImageUtil$InputWay;->createInputWay(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)Lcom/jingdong/common/utils/ImageUtil$InputWay;

    move-result-object v3

    invoke-static {v3, v4, v4}, Lcom/jingdong/common/utils/ImageUtil;->createBitmap(Lcom/jingdong/common/utils/ImageUtil$InputWay;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object v2, v1

    .line 108
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$2;

    iget-object v5, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->val$icon:Landroid/widget/ImageView;

    invoke-direct {v4, p0, v2, v5}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$2;-><init>(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->this$0:Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->mContext:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;->access$0(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;->val$icon:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2}, Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/AdapterItemView$1;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/MyActivity;->post(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 85
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method
