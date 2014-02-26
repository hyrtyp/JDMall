.class Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;
.super Ljava/lang/Object;
.source "MyCommentDiscussActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$product:Lcom/jingdong/common/entity/Product;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/frame/IMyActivity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 251
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 252
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "product"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 253
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->params:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lorg/json/JSONObject;

    move-result-object v3

    #setter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;
    invoke-static {v2, v3}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;Lorg/json/JSONObject;)V

    .line 258
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "wareId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "orderId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 288
    :goto_1
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    :goto_2
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    check-cast v2, Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v2, v1, v3, v4, v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustOrder(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;ILcom/jingdong/common/entity/Product;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 270
    :catch_1
    move-exception v0

    .line 271
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 277
    .end local v0           #e:Lorg/json/JSONException;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v2

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 285
    :goto_3
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    check-cast v2, Lcom/jingdong/app/mall/utils/MyActivity;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->val$product:Lcom/jingdong/common/entity/Product;

    iget-object v5, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1$1;->this$2:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;->access$0(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3$1;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->this$0:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$3;)Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    move-result-object v5

    #getter for: Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustParam:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->access$1(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v2, v1, v3, v4, v5}, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;->adjustOrder(Lcom/jingdong/app/mall/utils/MyActivity;Landroid/content/Intent;ILcom/jingdong/common/entity/Product;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 281
    :catch_2
    move-exception v0

    .line 282
    .restart local v0       #e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 263
    :pswitch_data_0
    .packed-switch 0x7f0c01ad
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
