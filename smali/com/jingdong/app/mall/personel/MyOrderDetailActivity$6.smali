.class Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;
.super Ljava/lang/Object;
.source "MyOrderDetailActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->getOrderInfo()V
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
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;
    .locals 1
    .parameter

    .prologue
    .line 585
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 8
    .parameter "httpResponse"

    .prologue
    .line 594
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 599
    .local v3, jsonObject:Lcom/jingdong/common/utils/JSONObjectProxy;
    :try_start_0
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const-string v6, "orderInfo"

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$17(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V

    .line 600
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const-string v6, "amountList"

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderPriceDetail:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$18(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 601
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const-string v6, "wareInfoList"

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mWareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$19(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONArrayPoxy;)V

    .line 602
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    const-string v6, "publishMap"

    invoke-virtual {v3, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONObjectOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$20(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Lcom/jingdong/common/utils/JSONObjectProxy;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mWareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$21(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->mWareInfoList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$21(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_2

    .line 618
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 619
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f07039e

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 620
    const v5, 0x7f07039f

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 621
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;

    invoke-direct {v6, p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$1;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 785
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_1
    return-void

    .line 610
    :catch_0
    move-exception v1

    .line 611
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 640
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 641
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 642
    .restart local v0       #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0702e2

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 643
    const v5, 0x108001d

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 644
    const v5, 0x7f0702a7

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 645
    const v5, 0x7f07037c

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$2;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$2;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$3;

    invoke-direct {v6, p0, v0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$3;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 778
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :catch_1
    move-exception v1

    .line 779
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 663
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_3
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->showOrderDetails()V
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$22(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)V

    .line 665
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "confirmOrder"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->postConfrimFlag:Ljava/lang/Boolean;

    .line 666
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "confirmGoods"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->receiveConfrimFlag:Ljava/lang/Boolean;

    .line 667
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "cancleOrder"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->cancleOrder:Ljava/lang/Boolean;

    .line 668
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "orderStatus"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->orderStatus:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$23(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Ljava/lang/String;)V

    .line 670
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->jsonOrderDetail:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$8(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    const-string v7, "onlinePay"

    invoke-virtual {v6, v7}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->setOnlinePay(Ljava/lang/Boolean;)V
    invoke-static {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$24(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;Ljava/lang/Boolean;)V

    .line 672
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$25(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 673
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$25(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "isPublish"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 674
    .local v2, isPublish:Ljava/lang/String;
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionJson:Lcom/jingdong/common/utils/JSONObjectProxy;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$25(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    const-string v6, "publishUrl"

    invoke-virtual {v5, v6}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, publishUrl:Ljava/lang/String;
    const-string v5, "0"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 682
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 684
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$4;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$4;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 690
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #getter for: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->satisfactionCommentLayout:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$26(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Landroid/widget/RelativeLayout;

    move-result-object v5

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;

    invoke-direct {v6, p0, v4}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$5;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    .end local v2           #isPublish:Ljava/lang/String;
    .end local v4           #publishUrl:Ljava/lang/String;
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    #calls: Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->isOnlinePay()Z
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->access$27(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 731
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$7;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$7;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    .line 767
    :goto_3
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->cancleOrder:Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->cancleOrder:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 768
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$11;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$11;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 720
    .restart local v2       #isPublish:Ljava/lang/String;
    .restart local v4       #publishUrl:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$6;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$6;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 737
    .end local v2           #isPublish:Ljava/lang/String;
    .end local v4           #publishUrl:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->postConfrimFlag:Ljava/lang/Boolean;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->postConfrimFlag:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 738
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$8;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$8;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 746
    :cond_8
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->receiveConfrimFlag:Ljava/lang/Boolean;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->receiveConfrimFlag:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 747
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$9;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$9;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 757
    :cond_9
    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;->this$0:Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    new-instance v6, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$10;

    invoke-direct {v6, p0}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6$10;-><init>(Lcom/jingdong/app/mall/personel/MyOrderDetailActivity$6;)V

    invoke-virtual {v5, v6}, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;->post(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 790
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 795
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 590
    return-void
.end method
