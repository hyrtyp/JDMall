.class Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;
.super Ljava/lang/Object;
.source "ShakeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shake/ShakeController$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shake/ShakeController$2$1;

.field private final synthetic val$drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

.field private final synthetic val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

.field private final synthetic val$newLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$orginalBitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$originalLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shake/ShakeController$2$1;Landroid/widget/RelativeLayout;Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;Lcom/jingdong/app/mall/utils/MyActivity;Landroid/widget/RelativeLayout;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->this$2:Lcom/jingdong/app/mall/shake/ShakeController$2$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$newLayout:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    iput-object p4, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iput-object p5, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$originalLayout:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$orginalBitmap:Landroid/graphics/Bitmap;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$newLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$drawable:Lcom/jingdong/common/ui/HandlerRecycleBitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v0, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$myActivity:Lcom/jingdong/app/mall/utils/MyActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$originalLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$newLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/jingdong/app/mall/shake/ShakeController$2$1$1;->val$orginalBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/jingdong/app/mall/shake/ShakeAnimationUtils;->startHomeAlphaAnim(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 132
    return-void
.end method
