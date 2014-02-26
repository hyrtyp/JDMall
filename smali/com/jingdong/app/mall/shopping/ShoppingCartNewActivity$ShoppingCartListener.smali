.class Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;
.super Ljava/lang/Object;
.source "ShoppingCartNewActivity.java"

# interfaces
.implements Lcom/jingdong/common/controller/ShoppingBaseController$ShoppingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShoppingCartListener"
.end annotation


# instance fields
.field private refreshViewToken:J

.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 1773
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    .line 1774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1770
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->refreshViewToken:J

    .line 1775
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->token:J
    invoke-static {p1, v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$3(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;J)V

    .line 1776
    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->token:J
    invoke-static {p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$4(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->refreshViewToken:J

    .line 1777
    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;
    .locals 1
    .parameter

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/entity/cart/CartResponse;)V
    .locals 5
    .parameter "cartResponse"

    .prologue
    const/4 v4, 0x0

    .line 1813
    iget-wide v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->refreshViewToken:J

    iget-object v2, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->token:J
    invoke-static {v2}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$4(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1817
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isLoadingData:Z
    invoke-static {v0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$5(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V

    .line 1818
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybControlLoading:Z
    invoke-static {v0, v4}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$6(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V

    .line 1819
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #calls: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->updateData(Lcom/jingdong/common/entity/cart/CartResponse;)V
    invoke-static {v0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$11(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Lcom/jingdong/common/entity/cart/CartResponse;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMessage"

    .prologue
    const/4 v1, 0x0

    .line 1781
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->isLoadingData:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$5(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V

    .line 1782
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->ybControlLoading:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->access$6(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;Z)V

    .line 1787
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$1;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1802
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1825
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;->this$0:Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;

    new-instance v1, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener$2;-><init>(Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity$ShoppingCartListener;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/shopping/ShoppingCartNewActivity;->post(Ljava/lang/Runnable;)V

    .line 1839
    return-void
.end method
