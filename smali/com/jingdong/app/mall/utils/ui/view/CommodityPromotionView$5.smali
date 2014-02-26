.class Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;
.super Ljava/lang/Object;
.source "CommodityPromotionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->initCommercial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

.field private final synthetic val$detector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Landroid/view/GestureDetector;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    iput-object p2, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->val$detector:Landroid/view/GestureDetector;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDown:Z
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$5(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 265
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->onWait:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$10(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 266
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoing:Z
    invoke-static {v0, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$11(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 267
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$12(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Ljava/lang/Thread;

    move-result-object v1

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->currentThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$12(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 267
    monitor-exit v1

    .line 273
    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 224
    const/4 v0, 0x0

    .line 229
    .local v0, flag:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 252
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->lockTouch:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$8(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->val$detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 255
    :cond_0
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoUp:Z
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$9(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->doUp()V

    .line 257
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    const/4 v2, 0x0

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoUp:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$7(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 260
    :cond_1
    return v0

    .line 234
    :pswitch_1
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDown:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$5(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    .line 235
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #calls: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->notifyCPV()V
    invoke-static {v1}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$6(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoUp:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$7(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object v1, p0, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView$5;->this$0:Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;

    #setter for: Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->isDoUp:Z
    invoke-static {v1, v2}, Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;->access$7(Lcom/jingdong/app/mall/utils/ui/view/CommodityPromotionView;Z)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
