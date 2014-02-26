.class Lcom/jingdong/app/mall/shake/ShakeController$2$1;
.super Ljava/lang/Object;
.source "ShakeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeController$2;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shake/ShakeController$2;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$newLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$orginalBitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$originalLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeController$2;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->this$1:Lcom/jingdong/app/mall/shake/ShakeController$2;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$newLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p5, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$originalLayout:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$orginalBitmap:Landroid/graphics/Bitmap;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$newLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 124
    new-instance v3, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    invoke-direct {v3, v0, v1}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/jingdong/common/frame/IMyActivity;)V

    .line 125
    .local v3, drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;->setNeedPadding(Z)V

    .line 126
    if-eqz v3, :cond_0

    .line 127
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$newLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$originalLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1;->val$orginalBitmap:Landroid/graphics/Bitmap;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;-><init>(Lcom/jingdong/app/mall/shake/ShakeController$2$1;Landroid/widget/RelativeLayout;Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V

    .line 133
    const-wide/16 v1, 0x0

    .line 127
    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    .end local v3           #drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;
    :cond_0
    return-void
.end method
