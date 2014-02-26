.class Lcom/jingdong/common/service/MessagePullService$4$1;
.super Ljava/lang/Object;
.source "MessagePullService.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/service/MessagePullService$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/common/service/MessagePullService$4;


# direct methods
.method constructor <init>(Lcom/jingdong/common/service/MessagePullService$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    .line 918
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 11
    .parameter "httpResponse"

    .prologue
    const/16 v10, 0x1000

    const/4 v9, 0x4

    .line 921
    invoke-virtual {p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    .line 922
    .local v3, proxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v5, "wareInfoList"

    invoke-virtual {v3, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v0

    .line 923
    .local v0, jsonArray:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v0, v9}, Lcom/jingdong/common/entity/Product;->toList(Lcom/jingdong/common/utils/JSONArrayPoxy;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 927
    .local v4, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jingdong/common/entity/Product;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 929
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 943
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    #getter for: Lcom/jingdong/common/service/MessagePullService;->productFlag:I
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService;->access$11(Lcom/jingdong/common/service/MessagePullService;)I

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    #getter for: Lcom/jingdong/common/service/MessagePullService;->productFlag:I
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService;->access$11(Lcom/jingdong/common/service/MessagePullService;)I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 944
    :cond_1
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;
    invoke-static {v5, v6}, Lcom/jingdong/common/service/MessagePullService;->access$12(Lcom/jingdong/common/service/MessagePullService;Ljava/util/ArrayList;)V

    .line 945
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    #getter for: Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService;->access$1(Lcom/jingdong/common/service/MessagePullService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 946
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    const/4 v6, 0x2

    #setter for: Lcom/jingdong/common/service/MessagePullService;->productFlag:I
    invoke-static {v5, v6}, Lcom/jingdong/common/service/MessagePullService;->access$13(Lcom/jingdong/common/service/MessagePullService;I)V

    .line 951
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    #getter for: Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService;->access$10(Lcom/jingdong/common/service/MessagePullService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 952
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    #getter for: Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService;->access$10(Lcom/jingdong/common/service/MessagePullService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 954
    :cond_3
    return-void

    .line 929
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jingdong/common/entity/Product;

    .line 934
    .local v2, product:Lcom/jingdong/common/entity/Product;
    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/common/utils/cache/WidgetImageCache;->containsKeyBitmap(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/jingdong/common/utils/cache/WidgetImageCache;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_0

    .line 935
    :cond_5
    iget-object v6, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v6}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v6

    #getter for: Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/jingdong/common/service/MessagePullService;->access$10(Lcom/jingdong/common/service/MessagePullService;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x1102

    invoke-virtual {v2}, Lcom/jingdong/common/entity/Product;->getImageUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 936
    .local v1, message:Landroid/os/Message;
    iget-object v6, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v6}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v6

    #getter for: Lcom/jingdong/common/service/MessagePullService;->handler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/jingdong/common/service/MessagePullService;->access$10(Lcom/jingdong/common/service/MessagePullService;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 947
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #product:Lcom/jingdong/common/entity/Product;
    :cond_6
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    #getter for: Lcom/jingdong/common/service/MessagePullService;->productFlag:I
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService;->access$11(Lcom/jingdong/common/service/MessagePullService;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 948
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    #getter for: Lcom/jingdong/common/service/MessagePullService;->productList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService;->access$1(Lcom/jingdong/common/service/MessagePullService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 949
    iget-object v5, p0, Lcom/jingdong/common/service/MessagePullService$4$1;->this$1:Lcom/jingdong/common/service/MessagePullService$4;

    #getter for: Lcom/jingdong/common/service/MessagePullService$4;->this$0:Lcom/jingdong/common/service/MessagePullService;
    invoke-static {v5}, Lcom/jingdong/common/service/MessagePullService$4;->access$0(Lcom/jingdong/common/service/MessagePullService$4;)Lcom/jingdong/common/service/MessagePullService;

    move-result-object v5

    const/4 v6, 0x3

    #setter for: Lcom/jingdong/common/service/MessagePullService;->productFlag:I
    invoke-static {v5, v6}, Lcom/jingdong/common/service/MessagePullService;->access$13(Lcom/jingdong/common/service/MessagePullService;I)V

    goto :goto_1
.end method
