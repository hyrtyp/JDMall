.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$7;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$7;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$7;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$7;->this$1:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mOrderHandlerButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$28(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0701d3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 735
    return-void
.end method
