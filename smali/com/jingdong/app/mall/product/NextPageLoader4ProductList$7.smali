.class Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$7;
.super Ljava/lang/Object;
.source "NextPageLoader4ProductList.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->showCurrentPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$7;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 586
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 596
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 588
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$7;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isHolding:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$5(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;Z)V

    goto :goto_0

    .line 591
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$7;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->isFling:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$9(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$7;->this$0:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;

    #getter for: Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->onScrollLastListener:Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;
    invoke-static {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;->access$10(Lcom/jingdong/app/mall/product/NextPageLoader4ProductList;)Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/NextPageLoader4ProductList$OnScrollLastListener;->onScrollIdle()V

    goto :goto_0

    .line 586
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
