.class Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;
.super Ljava/lang/Object;
.source "ShakeDialogNew.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 690
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;->val$imageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 691
    new-instance v0, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;->this$1:Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;->this$0:Lcom/jingdong/app/mall/shake/ShakeDialogNew;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew$2;)Lcom/jingdong/app/mall/shake/ShakeDialogNew;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/shake/ShakeDialogNew;->mActivity:Lcom/jingdong/app/mall/utils/MyActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/shake/ShakeDialogNew;->access$0(Lcom/jingdong/app/mall/shake/ShakeDialogNew;)Lcom/jingdong/app/mall/utils/MyActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 692
    .local v0, drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeDialogNew$2$2;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    .end local v0           #drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    :cond_0
    return-void
.end method
