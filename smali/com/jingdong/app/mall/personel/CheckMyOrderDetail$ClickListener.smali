.class Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;
.super Ljava/lang/Object;
.source "CheckMyOrderDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;


# direct methods
.method private constructor <init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;-><init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    const-class v4, Lcom/jingdong/app/mall/personel/MyOrderDetailActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.360buy:navigationDisplayFlag"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, bundle:Landroid/os/Bundle;
    :try_start_0
    const-string v3, "orderId"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$0(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "orderId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "pin"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->params:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$0(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "pin"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "productList"

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iget-object v4, v4, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mProductlist:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 140
    iget-object v3, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    invoke-virtual {v3, v2}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->startActivityInFrame(Landroid/content/Intent;)V

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0413
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
