.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$1;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->onFinish(Lcom/jingdong/common/entity/NewCurrentOrder;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1$1;->this$1:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$1;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->showAllPage()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$1(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 204
    return-void
.end method
