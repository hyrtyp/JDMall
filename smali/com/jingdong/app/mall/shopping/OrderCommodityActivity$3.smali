.class Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$3;
.super Ljava/lang/Object;
.source "OrderCommodityActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->refreshLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->adapter:Lcom/jingdong/common/utils/MySimpleAdapter;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;->access$2(Lcom/jingdong/app/mall/shopping/OrderCommodityActivity;)Lcom/jingdong/common/utils/MySimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 270
    return-void
.end method
