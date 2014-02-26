.class Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;
.super Ljava/lang/Object;
.source "MakeNewBuyAsk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->handleSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #calls: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->check()Z
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$12(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->submitButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$13(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 199
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->submitButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$13(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setPressed(Z)V

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->params:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$14(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "wareId"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->wareId:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$15(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->params:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$14(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "type"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->type:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$16(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->params:Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$14(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "content"

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #getter for: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->content:Ljava/lang/String;
    invoke-static {v3}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$17(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk$3;->this$0:Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;

    #calls: Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->saveConsultation()V
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;->access$18(Lcom/jingdong/app/mall/personel/MakeNewBuyAsk;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
