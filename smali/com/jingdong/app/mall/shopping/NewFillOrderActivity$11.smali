.class Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;
.super Ljava/lang/Object;
.source "NewFillOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    .line 921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;)Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 921
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 927
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->hideInputKey()V
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$18(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 929
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 939
    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v1, v4, :cond_3

    .line 951
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mButtonSubmit:Landroid/widget/Button;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$20(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setClickable(Z)V

    .line 952
    new-instance v4, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11$1;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11$1;-><init>(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;)V

    .line 960
    invoke-virtual {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11$1;->start()V

    .line 962
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mEditTextMarkContent:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$21(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 963
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mEditTextMarkContent:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$21(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setRemark(Ljava/lang/String;)V

    .line 966
    :cond_0
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #calls: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->submitOrder()V
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$22(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)V

    .line 967
    :goto_2
    return-void

    .line 930
    :cond_1
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 931
    .local v0, et:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_2

    .line 932
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$17(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040010

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->startAnimation(Landroid/view/animation/Animation;)V

    .line 933
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 929
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 940
    .end local v0           #et:Landroid/widget/EditText;
    :cond_3
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$19(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 941
    .restart local v0       #et:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, password:Ljava/lang/String;
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 946
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPayPasswordKey(Ljava/lang/String;)V

    .line 947
    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity$11;->this$0:Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;

    #getter for: Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->mNewCurrentOrder:Lcom/jingdong/common/entity/NewCurrentOrder;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;->access$0(Lcom/jingdong/app/mall/shopping/NewFillOrderActivity;)Lcom/jingdong/common/entity/NewCurrentOrder;

    move-result-object v4

    invoke-static {v3}, Lcom/jingdong/common/utils/Md5Encrypt;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jingdong/common/entity/NewCurrentOrder;->setPayPasswordValue(Ljava/lang/String;)V

    .line 939
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
