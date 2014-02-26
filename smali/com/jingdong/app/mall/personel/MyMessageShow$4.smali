.class Lcom/jingdong/app/mall/personel/MyMessageShow$4;
.super Ljava/lang/Object;
.source "MyMessageShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyMessageShow;->initViewContentTypeBySelf()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyMessageShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 303
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    if-nez v2, :cond_0

    .line 335
    :goto_0
    return-void

    .line 310
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 311
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 312
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    iget-object v3, v3, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/MessageListItem;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 313
    const/16 v2, 0xa

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    iget-object v3, v3, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v3}, Lcom/jingdong/common/entity/MessageListItem;->getType()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    const-class v3, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 316
    const-string v2, "orderId"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jingdong/common/entity/MessageDetail;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v2, "title"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    const v4, 0x7f0702e9

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/personel/MyMessageShow;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v2, "com.360buy:navigationDisplayFlag"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 322
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    invoke-virtual {v2, v1}, Lcom/jingdong/app/mall/personel/MyMessageShow;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 326
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    #getter for: Lcom/jingdong/app/mall/personel/MyMessageShow;->detail:Lcom/jingdong/common/entity/MessageDetail;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyMessageShow;->access$3(Lcom/jingdong/app/mall/personel/MyMessageShow;)Lcom/jingdong/common/entity/MessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jingdong/common/entity/MessageDetail;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 327
    .local v0, idL:Ljava/lang/Long;
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    const/4 v3, 0x0

    .line 328
    new-instance v4, Lcom/jingdong/common/entity/SourceEntity;

    const-string v5, "messageDetail"

    iget-object v6, p0, Lcom/jingdong/app/mall/personel/MyMessageShow$4;->this$0:Lcom/jingdong/app/mall/personel/MyMessageShow;

    iget-object v6, v6, Lcom/jingdong/app/mall/personel/MyMessageShow;->listItem:Lcom/jingdong/common/entity/MessageListItem;

    invoke-virtual {v6}, Lcom/jingdong/common/entity/MessageListItem;->getType()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/jingdong/common/entity/SourceEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {v2, v0, v3, v4}, Lcom/jingdong/app/mall/utils/StartActivityUtils;->startProductDetailActivity(Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Lcom/jingdong/common/entity/SourceEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    .end local v0           #idL:Ljava/lang/Long;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method
