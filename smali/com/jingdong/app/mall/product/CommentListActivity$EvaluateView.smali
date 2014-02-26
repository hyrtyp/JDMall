.class Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;
.super Landroid/view/View;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/product/CommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EvaluateView"
.end annotation


# instance fields
.field private Bad:I

.field private Count:I

.field private Good:I

.field private Neutral:I

.field private badString:Ljava/lang/String;

.field private bad_bottom:F

.field private bad_bottom_red:F

.field private bad_text_x:F

.field private bad_text_y:F

.field private bad_top:F

.field private bad_top_red:F

.field private bigTextSize:F

.field private centerTextSize:F

.field private crimson:I

.field private goodString:Ljava/lang/String;

.field private goodTip:Ljava/lang/String;

.field private good_bottom:F

.field private good_bottom_red:F

.field private good_text_x:F

.field private good_text_y:F

.field private good_top:F

.field private good_top_red:F

.field private left_red:F

.field private left_white:F

.field private neutralString:Ljava/lang/String;

.field private neutral_bottom:F

.field private neutral_bottom_red:F

.field private neutral_text_x:F

.field private neutral_text_y:F

.field private neutral_top:F

.field private neutral_top_red:F

.field private p:Landroid/graphics/Paint;

.field private p1:Landroid/graphics/Paint;

.field private p2:Landroid/graphics/Paint;

.field private percentage_text_x:F

.field private percentage_text_y:F

.field private r:Landroid/graphics/RectF;

.field private res:Landroid/content/res/Resources;

.field private right_red:F

.field private right_white:F

.field private smallTextsize:F

.field private text_x_1:F

.field private text_x_2:F

.field private text_x_3:F

.field private text_y:F

.field final synthetic this$0:Lcom/jingdong/app/mall/product/CommentListActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/product/CommentListActivity;Landroid/content/Context;III)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "good"
    .parameter "neutral"
    .parameter "bad"

    .prologue
    const/4 v1, 0x1

    .line 477
    iput-object p1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->this$0:Lcom/jingdong/app/mall/product/CommentListActivity;

    .line 478
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 459
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    .line 460
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p1:Landroid/graphics/Paint;

    .line 461
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p2:Landroid/graphics/Paint;

    .line 462
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    .line 479
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 480
    iput p3, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Good:I

    .line 481
    iput p4, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Neutral:I

    .line 482
    iput p5, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Bad:I

    .line 483
    add-int v0, p3, p4

    add-int/2addr v0, p5

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Count:I

    .line 485
    iget v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Count:I

    if-nez v0, :cond_0

    .line 486
    iput v1, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Count:I

    .line 489
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    .line 491
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_white:F

    .line 492
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_white:F

    .line 493
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    .line 494
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_red:F

    .line 496
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_top:F

    .line 497
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_bottom:F

    .line 498
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_top_red:F

    .line 499
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_bottom_red:F

    .line 500
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_top:F

    .line 501
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_bottom:F

    .line 502
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_top_red:F

    .line 503
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_bottom_red:F

    .line 504
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_top:F

    .line 505
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_bottom:F

    .line 506
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_top_red:F

    .line 507
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_bottom_red:F

    .line 509
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->percentage_text_x:F

    .line 510
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->percentage_text_y:F

    .line 511
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_text_x:F

    .line 512
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_text_y:F

    .line 513
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_text_x:F

    .line 514
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_text_y:F

    .line 515
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_text_x:F

    .line 516
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_text_y:F

    .line 518
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->smallTextsize:F

    .line 519
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bigTextSize:F

    .line 520
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->centerTextSize:F

    .line 521
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f090032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->crimson:I

    .line 523
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_x_1:F

    .line 524
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_x_2:F

    .line 525
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_x_3:F

    .line 526
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_y:F

    .line 528
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->goodString:Ljava/lang/String;

    .line 529
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->goodTip:Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutralString:Ljava/lang/String;

    .line 531
    iget-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->res:Landroid/content/res/Resources;

    const v1, 0x7f0701ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->badString:Ljava/lang/String;

    .line 532
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const v12, -0x777778

    const/high16 v11, 0x42c8

    .line 536
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->crimson:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 537
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bigTextSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 538
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 539
    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Good:I

    int-to-float v7, v7

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Count:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v11

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, percentageStr:Ljava/lang/String;
    iget v5, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_x_1:F

    .line 542
    .local v5, text_x:F
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    packed-switch v6, :pswitch_data_0

    .line 555
    :goto_0
    iget v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_y:F

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 556
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->centerTextSize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 558
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 559
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 560
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->goodTip:Ljava/lang/String;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->percentage_text_x:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->percentage_text_y:F

    iget-object v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 561
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->smallTextsize:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 562
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->goodString:Ljava/lang/String;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_text_x:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_text_y:F

    iget-object v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 563
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutralString:Ljava/lang/String;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_text_x:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_text_y:F

    iget-object v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 564
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->badString:Ljava/lang/String;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_text_x:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_text_y:F

    iget-object v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 567
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 568
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_white:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_top:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_white:F

    iget v10, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 569
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 571
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_white:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_top:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_white:F

    iget v10, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 572
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 574
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_white:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_top:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_white:F

    iget v10, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 575
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 578
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p1:Landroid/graphics/Paint;

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 579
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p1:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 580
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p1:Landroid/graphics/Paint;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 582
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_white:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_top:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_white:F

    iget v10, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 583
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p1:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 584
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_white:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_top:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_white:F

    iget v10, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 585
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p1:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 586
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_white:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_top:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_white:F

    iget v10, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_bottom:F

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 587
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p1:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 590
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p2:Landroid/graphics/Paint;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->crimson:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 591
    iget v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->right_red:F

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    sub-float/2addr v6, v7

    div-float v4, v6, v11

    .line 593
    .local v4, px:F
    iget v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Good:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Count:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v11

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    add-float v1, v6, v7

    .line 594
    .local v1, goodPercentage:F
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_top_red:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->good_bottom_red:F

    invoke-virtual {v6, v7, v8, v1, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 595
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p2:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 597
    iget v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Neutral:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Count:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v11

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    add-float v2, v6, v7

    .line 598
    .local v2, neutralPercentage:F
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_top_red:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->neutral_bottom_red:F

    invoke-virtual {v6, v7, v8, v2, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 599
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p2:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 601
    iget v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Bad:I

    int-to-float v6, v6

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->Count:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float/2addr v6, v11

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    add-float v0, v6, v7

    .line 602
    .local v0, badPercentage:F
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->left_red:F

    iget v8, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_top_red:F

    iget v9, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->bad_bottom_red:F

    invoke-virtual {v6, v7, v8, v0, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 603
    iget-object v6, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->r:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->p2:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 605
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 606
    return-void

    .line 544
    .end local v0           #badPercentage:F
    .end local v1           #goodPercentage:F
    .end local v2           #neutralPercentage:F
    .end local v4           #px:F
    :pswitch_0
    iget v5, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_x_1:F

    .line 545
    goto/16 :goto_0

    .line 548
    :pswitch_1
    iget v5, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_x_2:F

    .line 549
    goto/16 :goto_0

    .line 552
    :pswitch_2
    iget v5, p0, Lcom/jingdong/app/mall/product/CommentListActivity$EvaluateView;->text_x_3:F

    goto/16 :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
