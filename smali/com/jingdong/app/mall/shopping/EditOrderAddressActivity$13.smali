.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateCityView(Lorg/json/JSONArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

.field private final synthetic val$jdCityArray:Lorg/json/JSONArray;

.field private final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$jdCityArray:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$token:J

    .line 1140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1146
    :try_start_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$jdCityArray:Lorg/json/JSONArray;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$jdCityArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 1147
    const/4 v3, 0x0

    .line 1149
    .local v3, isFind:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$jdCityArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_1

    .line 1161
    :goto_1
    if-nez v3, :cond_0

    .line 1162
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$jdCityArray:Lorg/json/JSONArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1163
    .local v5, object:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v7, "Id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    .line 1164
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const-string v7, "Name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1165
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1166
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1168
    .end local v5           #object:Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v7, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$21(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    .line 1169
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    iget-wide v8, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$token:J

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getArea(IJ)V
    invoke-static {v6, v7, v8, v9}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$10(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;IJ)V

    .line 1171
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mConfirmAddr:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1203
    .end local v2           #i:I
    .end local v3           #isFind:Z
    :goto_2
    return-void

    .line 1150
    .restart local v2       #i:I
    .restart local v3       #isFind:Z
    :cond_1
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->val$jdCityArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1151
    .restart local v5       #object:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currCityId:I

    const-string v7, "Id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1152
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const-string v7, "Name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1153
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1154
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1156
    const/4 v3, 0x1

    .line 1157
    goto :goto_1

    .line 1149
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1174
    .end local v2           #i:I
    .end local v3           #isFind:Z
    .end local v5           #object:Lorg/json/JSONObject;
    :cond_3
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdProvinces:Lorg/json/JSONObject;

    const-string v7, "Areas"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1176
    .local v0, array:Lorg/json/JSONArray;
    const-string v4, ""

    .line 1177
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 1185
    :goto_4
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1186
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1189
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1190
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1191
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1192
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1193
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1194
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1195
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v7, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isCityLoading:Z
    invoke-static {v6, v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$21(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    .line 1197
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mConfirmAddr:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1199
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1200
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 1178
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v2       #i:I
    .restart local v4       #name:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1179
    .restart local v5       #object:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$13;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v6, v6, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    const-string v7, "Id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v6, v7, :cond_5

    .line 1180
    const-string v6, "Name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1181
    goto :goto_4

    .line 1177
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3
.end method
