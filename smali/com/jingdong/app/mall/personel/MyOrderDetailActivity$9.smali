.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setOrderStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const v1, 0x7f0701d3

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->doOnlinePay()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$31(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    .line 862
    :goto_0
    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const v1, 0x7f0702af

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->doPostPayConfirm()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$32(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    goto :goto_0

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$9;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->doConfrimTakeGoods()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$33(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    goto :goto_0
.end method
