.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Lcom/jingdong/app/mall/register/QuickRegisterLoginListener$QuickRegisterLoginStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;
    .locals 1
    .parameter

    .prologue
    .line 826
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 865
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 873
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pin"
    .parameter "succesMsg"

    .prologue
    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->verificationPass:Z

    .line 832
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "pin"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 833
    sget-object v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jbOrderStr:Lorg/json/JSONObject;

    const-string v2, "OrderType"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 834
    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;->this$1:Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;->access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;

    invoke-direct {v2, p0}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$9$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
