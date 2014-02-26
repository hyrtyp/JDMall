.class Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;
.super Ljava/lang/Object;
.source "MyOrderListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isDown:Z

.field private startX:F

.field private startY:F

.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

.field private final synthetic val$tPosition:I

.field private final synthetic val$tmView:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;Landroid/widget/AdapterView;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->val$tmView:Landroid/widget/AdapterView;

    iput p3, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->val$tPosition:I

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->isDown:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 326
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 367
    iput-boolean v8, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->isDown:Z

    .line 372
    :cond_0
    :goto_0
    return v8

    .line 328
    :pswitch_0
    iput-boolean v9, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->isDown:Z

    .line 330
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->startX:F

    .line 331
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->startY:F

    goto :goto_0

    .line 336
    :pswitch_1
    iget-boolean v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->isDown:Z

    if-eqz v5, :cond_0

    .line 337
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->val$tmView:Landroid/widget/AdapterView;

    if-eqz v5, :cond_0

    .line 338
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->val$tmView:Landroid/widget/AdapterView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 339
    .local v0, adapter:Landroid/widget/Adapter;
    if-eqz v0, :cond_0

    .line 340
    iget v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->val$tPosition:I

    invoke-interface {v0, v5}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 341
    .local v3, o:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/jingdong/common/entity/Product;

    if-eqz v5, :cond_0

    move-object v4, v3

    .line 342
    check-cast v4, Lcom/jingdong/common/entity/Product;

    .line 343
    .local v4, product:Lcom/jingdong/common/entity/Product;
    if-eqz v4, :cond_0

    .line 344
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v5

    #calls: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->handlerOrderDetail(Lcom/jingdong/common/entity/Product;)V
    invoke-static {v5, v4}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$5(Lcom/jingdong/app/mall/personel/MyOrderListActivity;Lcom/jingdong/common/entity/Product;)V

    goto :goto_0

    .line 357
    .end local v0           #adapter:Landroid/widget/Adapter;
    .end local v3           #o:Ljava/lang/Object;
    .end local v4           #product:Lcom/jingdong/common/entity/Product;
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 358
    .local v1, endX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 359
    .local v2, endY:F
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->this$1:Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1;)Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->this$0:Lcom/jingdong/app/mall/personel/MyOrderListActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;->access$0(Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader;)Lcom/jingdong/app/mall/personel/MyOrderListActivity;

    move-result-object v5

    iget v6, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->startX:F

    iget v7, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->startY:F

    #calls: Lcom/jingdong/app/mall/personel/MyOrderListActivity;->isMoving(FFFF)Z
    invoke-static {v5, v6, v7, v1, v2}, Lcom/jingdong/app/mall/personel/MyOrderListActivity;->access$6(Lcom/jingdong/app/mall/personel/MyOrderListActivity;FFFF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 360
    iput-boolean v8, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->isDown:Z

    goto :goto_0

    .line 362
    :cond_1
    iput-boolean v9, p0, Lcom/jingdong/app/mall/personel/MyOrderListActivity$MyNextPageLoader$1$1;->isDown:Z

    goto :goto_0

    .line 326
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
