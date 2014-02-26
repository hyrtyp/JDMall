.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateAreasView(Lorg/json/JSONArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

.field private final synthetic val$jdAreaArray:Lorg/json/JSONArray;

.field private final synthetic val$token:J


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONArray;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->val$jdAreaArray:Lorg/json/JSONArray;

    iput-wide p3, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->val$token:J

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1055
    const/4 v3, 0x0

    .line 1056
    .local v3, isFind:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->val$jdAreaArray:Lorg/json/JSONArray;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v2, v7, :cond_6

    .line 1069
    :goto_1
    if-nez v3, :cond_0

    .line 1070
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->val$jdAreaArray:Lorg/json/JSONArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1071
    .local v4, object:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v8, "Id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    .line 1072
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const-string v8, "Name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1073
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1074
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1077
    .end local v4           #object:Lorg/json/JSONObject;
    :cond_0
    sget-boolean v7, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    if-nez v7, :cond_1

    sget-boolean v7, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    if-eqz v7, :cond_a

    .line 1078
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v8, v8, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1079
    .local v0, addressPrefix:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1081
    const-string v5, ""

    .line 1082
    .local v5, text:Ljava/lang/String;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isFristLoading:Z
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$15(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1083
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v8, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isFristLoading:Z
    invoke-static {v7, v8}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$16(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    .line 1090
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$17(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Lcom/jingdong/common/entity/UserAddress;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1091
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$17(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Lcom/jingdong/common/entity/UserAddress;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jingdong/common/entity/UserAddress;->getWhere()Ljava/lang/String;

    move-result-object v6

    .line 1092
    .local v6, where:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1093
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1094
    const-string v7, ""

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1100
    .end local v6           #where:Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    :cond_3
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$13(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1104
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1105
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1106
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1107
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1108
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1109
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1111
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1113
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;
    invoke-static {v7}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1118
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    invoke-virtual {v7, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1120
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v8, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z
    invoke-static {v7, v8}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$18(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    .line 1127
    .end local v0           #addressPrefix:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_5
    :goto_4
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v8, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isAreaLoading:Z
    invoke-static {v7, v8}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$20(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    .line 1135
    :goto_5
    return-void

    .line 1057
    :cond_6
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->val$jdAreaArray:Lorg/json/JSONArray;

    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1059
    .restart local v4       #object:Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    const-string v8, "Id"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_7

    .line 1060
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const-string v8, "Name"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1062
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v7, v7, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1064
    const/4 v3, 0x1

    .line 1065
    goto/16 :goto_1

    .line 1056
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1096
    .end local v4           #object:Lorg/json/JSONObject;
    .restart local v0       #addressPrefix:Ljava/lang/String;
    .restart local v5       #text:Ljava/lang/String;
    .restart local v6       #where:Ljava/lang/String;
    :cond_8
    move-object v5, v6

    goto/16 :goto_2

    .line 1115
    .end local v6           #where:Ljava/lang/String;
    :cond_9
    move-object v5, v0

    goto :goto_3

    .line 1124
    .end local v0           #addressPrefix:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_a
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v8, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v8, v8, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currAreaId:I

    iget-wide v9, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->val$token:J

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->getTowns(IJ)V
    invoke-static {v7, v8, v9, v10}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$9(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;IJ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 1128
    :catch_0
    move-exception v1

    .line 1129
    .local v1, e:Lorg/json/JSONException;
    iget-object v7, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$12;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isAreaLoading:Z
    invoke-static {v7, v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$20(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    goto :goto_5
.end method
