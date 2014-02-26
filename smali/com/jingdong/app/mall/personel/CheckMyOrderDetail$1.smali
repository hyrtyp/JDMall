.class Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;
.super Ljava/lang/Object;
.source "CheckMyOrderDetail.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->setTraceInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0xa

    .line 196
    iget-object v10, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    const v11, 0x7f0c0414

    invoke-virtual {v9, v11}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, v10, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTraceView:Landroid/view/ViewGroup;

    .line 197
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$1(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$1(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v9

    if-eqz v9, :cond_0

    .line 198
    const-string v0, ""

    .line 199
    .local v0, carrier:Ljava/lang/String;
    const-string v7, ""

    .line 201
    .local v7, paymentType:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderInfo:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$1(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v6

    .line 202
    .local v6, objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    const-string v9, "carrier"

    invoke-virtual {v6, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v9, "paymentType"

    invoke-virtual {v6, v9}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 208
    .end local v6           #objectProxy:Lcom/jingdong/common/utils/JSONObjectProxy;
    :goto_0
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderTransportStyle:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$2(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mOrderTransportPerson:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$3(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .end local v0           #carrier:Ljava/lang/String;
    .end local v7           #paymentType:Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$4(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$4(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v9

    if-eqz v9, :cond_3

    .line 214
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$4(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v3

    .line 215
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v3, :cond_1

    .line 240
    .end local v2           #i:I
    .end local v3           #length:I
    :goto_2
    return-void

    .line 204
    .restart local v0       #carrier:Ljava/lang/String;
    .restart local v7       #paymentType:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 206
    .local v1, e1:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v0           #carrier:Ljava/lang/String;
    .end local v1           #e1:Ljava/lang/Exception;
    .end local v7           #paymentType:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_1
    const v9, 0x7f0300a3

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 218
    .local v8, v:Landroid/view/View;
    :try_start_1
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #getter for: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->jsonOrderMessageList:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-static {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$4(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v5

    .line 219
    .local v5, object:Lorg/json/JSONObject;
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    #calls: Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->setTraceViewItem(Landroid/view/View;Lorg/json/JSONObject;)V
    invoke-static {v9, v8, v5}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->access$5(Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;Landroid/view/View;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    .end local v5           #object:Lorg/json/JSONObject;
    :goto_3
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iget-object v9, v9, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTraceView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 227
    add-int/lit8 v9, v3, -0x1

    if-ne v2, v9, :cond_2

    .line 228
    const v9, 0x7f0c03a2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 233
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v8           #v:Landroid/view/View;
    :cond_3
    new-instance v4, Landroid/widget/TextView;

    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    invoke-virtual {v9}, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 234
    .local v4, mTxView:Landroid/widget/TextView;
    const/16 v9, 0x14

    invoke-virtual {v4, v9, v12, v12, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 235
    const v9, 0x7f0702a6

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 236
    const/high16 v9, -0x100

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iget-object v9, v9, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTraceView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 238
    iget-object v9, p0, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail$1;->this$0:Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;

    iget-object v9, v9, Lcom/jingdong/app/mall/personel/CheckMyOrderDetail;->mTraceView:Landroid/view/ViewGroup;

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_2

    .line 220
    .end local v4           #mTxView:Landroid/widget/TextView;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v8       #v:Landroid/view/View;
    :catch_1
    move-exception v9

    goto :goto_3
.end method
