.class Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;
.super Ljava/lang/Object;
.source "ProductDetailController.java"

# interfaces
.implements Lcom/jingdong/common/utils/MyHandlerList$MyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FinalTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;


# direct methods
.method private constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V
    .locals 0
    .parameter

    .prologue
    .line 2120
    iput-object p1, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2120
    invoke-direct {p0, p1}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;-><init>(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList$FinalTask;->this$1:Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    #calls: Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->onFinish(IZ)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;->access$1(Lcom/jingdong/common/controller/ProductDetailController$PageManageMyHandlerList;IZ)V

    .line 2127
    return-void
.end method
