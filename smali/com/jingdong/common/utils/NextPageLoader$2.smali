.class Lcom/jingdong/common/utils/NextPageLoader$2;
.super Ljava/lang/Object;
.source "NextPageLoader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NextPageLoader;->showNextPage(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/common/utils/NextPageLoader;

.field private final synthetic val$onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;


# direct methods
.method constructor <init>(Lcom/jingdong/common/utils/NextPageLoader;Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NextPageLoader$2;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    iput-object p2, p0, Lcom/jingdong/common/utils/NextPageLoader$2;->val$onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 414
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 424
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$2;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    const/4 v1, 0x1

    #setter for: Lcom/jingdong/common/utils/NextPageLoader;->isHolding:Z
    invoke-static {v0, v1}, Lcom/jingdong/common/utils/NextPageLoader;->access$3(Lcom/jingdong/common/utils/NextPageLoader;Z)V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$2;->this$0:Lcom/jingdong/common/utils/NextPageLoader;

    #getter for: Lcom/jingdong/common/utils/NextPageLoader;->isFling:Z
    invoke-static {v0}, Lcom/jingdong/common/utils/NextPageLoader;->access$7(Lcom/jingdong/common/utils/NextPageLoader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/jingdong/common/utils/NextPageLoader$2;->val$onScrollLastListener:Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;

    invoke-virtual {v0}, Lcom/jingdong/common/utils/NextPageLoader$OnScrollLastListener;->onScrollIdle()V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
