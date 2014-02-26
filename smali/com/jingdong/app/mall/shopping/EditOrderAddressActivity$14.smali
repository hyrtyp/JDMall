.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateProvincesView(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

.field private final synthetic val$jdProvincesArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->val$jdProvincesArray:Lorg/json/JSONArray;

    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1213
    const/4 v2, 0x0

    .line 1215
    .local v2, isFind:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->val$jdProvincesArray:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 1227
    :goto_1
    if-nez v2, :cond_0

    .line 1228
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->val$jdProvincesArray:Lorg/json/JSONArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1229
    .local v3, object:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v5, "Id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    .line 1230
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    const-string v5, "Name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1232
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1235
    .end local v3           #object:Lorg/json/JSONObject;
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v5, v5, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getCity(I)V
    invoke-static {v4, v5}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$11(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;I)V

    .line 1239
    :goto_2
    return-void

    .line 1216
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->val$jdProvincesArray:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1217
    .restart local v3       #object:Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currProvinceId:I

    const-string v5, "Id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 1218
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    const-string v5, "Name"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1220
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$14;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v4, v4, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1222
    const/4 v2, 0x1

    .line 1223
    goto :goto_1

    .line 1215
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1236
    .end local v3           #object:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1237
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
