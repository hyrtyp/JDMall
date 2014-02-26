.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->updateTownsView(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

.field private final synthetic val$jdTown:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->val$jdTown:Lorg/json/JSONObject;

    .line 925
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 931
    const/4 v4, 0x0

    .line 932
    .local v4, jdTownArray:Lorg/json/JSONArray;
    :try_start_0
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->val$jdTown:Lorg/json/JSONObject;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->val$jdTown:Lorg/json/JSONObject;

    const-string v12, "Areas"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 933
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->val$jdTown:Lorg/json/JSONObject;

    const-string v12, "Areas"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 936
    :cond_0
    const-string v9, ""

    .line 937
    .local v9, townText:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v11, Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v12, v12, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v12, v12, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v12, v12, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, addressPrefix:Ljava/lang/StringBuffer;
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lez v11, :cond_b

    .line 941
    const/4 v3, 0x0

    .line 943
    .local v3, isFind:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_6

    .line 953
    :goto_1
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$13(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 955
    const-string v1, ""

    .line 957
    .local v1, addressSuffix:Ljava/lang/String;
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 958
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 959
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 965
    :cond_1
    :goto_2
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v2, v11, :cond_9

    .line 978
    .end local v1           #addressSuffix:Ljava/lang/String;
    :cond_2
    :goto_4
    if-nez v3, :cond_3

    .line 979
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 981
    .local v5, object:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v12, "Id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    .line 982
    const-string v11, "Name"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 983
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 984
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 985
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 988
    .end local v5           #object:Lorg/json/JSONObject;
    :cond_3
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 990
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 991
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 992
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1002
    .end local v2           #i:I
    .end local v3           #isFind:Z
    :goto_5
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mPCA:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    const/4 v11, 0x2

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v11

    const/4 v11, 0x1

    aput-object v9, v7, v11

    .line 1005
    .local v7, sources:[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/CharSequence;

    const/4 v11, 0x0

    const-string v12, ""

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, ""

    aput-object v12, v6, v11

    .line 1006
    .local v6, sequences:[Ljava/lang/CharSequence;
    const-string v8, ""

    .line 1008
    .local v8, text:Ljava/lang/String;
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isFristLoading:Z
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$15(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 1009
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v12, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isFristLoading:Z
    invoke-static {v11, v12}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$16(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    .line 1013
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$17(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Lcom/jingdong/common/entity/UserAddress;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 1014
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->userAddress:Lcom/jingdong/common/entity/UserAddress;
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$17(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Lcom/jingdong/common/entity/UserAddress;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jingdong/common/entity/UserAddress;->getWhere()Ljava/lang/String;

    move-result-object v10

    .line 1015
    .local v10, where:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1016
    invoke-static {v10, v7, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1019
    .end local v10           #where:Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1044
    .end local v0           #addressPrefix:Ljava/lang/StringBuffer;
    .end local v6           #sequences:[Ljava/lang/CharSequence;
    .end local v7           #sources:[Ljava/lang/String;
    .end local v8           #text:Ljava/lang/String;
    .end local v9           #townText:Ljava/lang/String;
    :cond_5
    :goto_6
    return-void

    .line 944
    .restart local v0       #addressPrefix:Ljava/lang/StringBuffer;
    .restart local v2       #i:I
    .restart local v3       #isFind:Z
    .restart local v9       #townText:Ljava/lang/String;
    :cond_6
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 945
    .restart local v5       #object:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    const-string v12, "Id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 947
    const-string v11, "Name"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 948
    const/4 v3, 0x1

    .line 949
    goto/16 :goto_1

    .line 943
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 961
    .end local v5           #object:Lorg/json/JSONObject;
    .restart local v1       #addressSuffix:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 966
    :cond_9
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 967
    .restart local v5       #object:Lorg/json/JSONObject;
    const-string v11, "Name"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 969
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v12, "Id"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    .line 970
    const-string v11, "Name"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 972
    const/4 v3, 0x1

    .line 973
    goto/16 :goto_4

    .line 965
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    .line 995
    .end local v1           #addressSuffix:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #isFind:Z
    .end local v5           #object:Lorg/json/JSONObject;
    :cond_b
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 997
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 998
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v12, 0x0

    iput-object v12, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->jdTowns:Lorg/json/JSONObject;

    .line 999
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v12, -0x1

    iput v12, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->currTownsId:I

    goto/16 :goto_5

    .line 1039
    .end local v0           #addressPrefix:Ljava/lang/StringBuffer;
    .end local v9           #townText:Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_6

    .line 1021
    .restart local v0       #addressPrefix:Ljava/lang/StringBuffer;
    .restart local v6       #sequences:[Ljava/lang/CharSequence;
    .restart local v7       #sources:[Ljava/lang/String;
    .restart local v8       #text:Ljava/lang/String;
    .restart local v9       #townText:Ljava/lang/String;
    :cond_c
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$13(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1022
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1023
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1024
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1025
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1026
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1027
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1029
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 1030
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->usedAddresswhere:Ljava/lang/String;
    invoke-static {v11}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$14(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v7, v6}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1033
    :cond_d
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v11, v11, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mWhere:Landroid/widget/EditText;

    invoke-virtual {v11, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v12, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isLoadingUsedAddress:Z
    invoke-static {v11, v12}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$18(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V

    .line 1036
    iget-object v11, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const/4 v12, 0x0

    #setter for: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->isTownLoading:Z
    invoke-static {v11, v12}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$19(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6
.end method
