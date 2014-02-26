.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$10;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "MyOrderDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->doConfrimTakeGoods()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$10;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    .line 920
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 924
    packed-switch p2, :pswitch_data_0

    .line 934
    :goto_0
    return-void

    .line 926
    :pswitch_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$10;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 927
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$10;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 928
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$10;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->confrimGoods()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$34(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    goto :goto_0

    .line 924
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
