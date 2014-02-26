.class Lcom/jingdong/app/mall/personel/MakeNewComments$2;
.super Ljava/lang/Object;
.source "MakeNewComments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewComments;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewComments;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 144
    :try_start_0
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #calls: Lcom/jingdong/app/mall/personel/MakeNewComments;->checkComment()Z
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$1(Lcom/jingdong/app/mall/personel/MakeNewComments;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$2(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "wareId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->product:Lcom/jingdong/common/entity/Product;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$3(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lcom/jingdong/common/entity/Product;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jingdong/common/entity/Product;->getId()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->commentScore:Landroid/widget/RatingBar;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$0(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/RatingBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getProgress()I

    move-result v1

    .line 153
    .local v1, score:I
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$2(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "score"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$2(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->commentContent:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$4(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$2(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "Product"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$2(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "version"

    const-string v4, "new"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->params:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$2(Lcom/jingdong/app/mall/personel/MakeNewComments;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "orderId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->orderId:Ljava/lang/String;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$5(Lcom/jingdong/app/mall/personel/MakeNewComments;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->mSubmit:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$6(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 177
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewComments;->mSubmit:Landroid/widget/Button;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$6(Lcom/jingdong/app/mall/personel/MakeNewComments;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setPressed(Z)V

    .line 178
    iget-object v2, p0, Lcom/jingdong/app/mall/personel/MakeNewComments$2;->this$0:Lcom/jingdong/app/mall/personel/MakeNewComments;

    #calls: Lcom/jingdong/app/mall/personel/MakeNewComments;->submitComment()V
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/MakeNewComments;->access$7(Lcom/jingdong/app/mall/personel/MakeNewComments;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #score:I
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
