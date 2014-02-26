.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$5;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitEasyBuyOrder(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$5;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->submitOrder()V
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$4(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 644
    return-void
.end method
