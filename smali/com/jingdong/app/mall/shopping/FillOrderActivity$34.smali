.class Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;
.super Ljava/lang/Object;
.source "FillOrderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/FillOrderActivity;->showPasswordEdit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    .line 5514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;)Lcom/jingdong/app/mall/shopping/FillOrderActivity;
    .locals 1
    .parameter

    .prologue
    .line 5514
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 5519
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$56(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 5521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #calls: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->hideInputKey()V
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$10(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)V

    .line 5522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 5524
    .local v21, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v25, v0

    const-string v26, "securityPayBlocks"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArray(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v6

    .line 5525
    .local v6, array:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v25, v0

    const-string v26, "isOpen"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getBooleanOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    .line 5526
    .local v15, isOpen:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v25, v0

    const-string v26, "message"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5527
    .local v18, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v25, v0

    const-string v26, "url"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 5528
    .local v24, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->jdIsPutPassword:Lcom/jingdong/common/utils/JSONObjectProxy;

    move-object/from16 v25, v0

    const-string v26, "functionId"

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5535
    .local v5, action:Ljava/lang/String;
    if-eqz v15, :cond_0

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 5541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->pay_password_open_find_layout:Landroid/widget/LinearLayout;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$57(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5542
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5544
    .local v7, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 5545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    const v26, 0x7f070361

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$58(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v26, v0

    const v27, 0x7f070360

    invoke-virtual/range {v26 .. v27}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$59(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5555
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$59(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v25

    new-instance v26, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$1;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5585
    .end local v7           #builder:Landroid/text/SpannableStringBuilder;
    :cond_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v25

    move/from16 v0, v25

    if-lt v12, v0, :cond_2

    .line 5662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_layout:Landroid/widget/LinearLayout;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$62(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v25

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5670
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #array:Lorg/json/JSONArray;
    .end local v12           #i:I
    .end local v15           #isOpen:Ljava/lang/Boolean;
    .end local v18           #msg:Ljava/lang/String;
    .end local v21           #res:Landroid/content/res/Resources;
    .end local v24           #url:Ljava/lang/String;
    :goto_2
    return-void

    .line 5550
    .restart local v5       #action:Ljava/lang/String;
    .restart local v6       #array:Lorg/json/JSONArray;
    .restart local v7       #builder:Landroid/text/SpannableStringBuilder;
    .restart local v15       #isOpen:Ljava/lang/Boolean;
    .restart local v18       #msg:Ljava/lang/String;
    .restart local v21       #res:Landroid/content/res/Resources;
    .restart local v24       #url:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    const v26, 0x7f07035e

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$58(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v26, v0

    const v27, 0x7f07035f

    invoke-virtual/range {v26 .. v27}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->payPasswordBtn:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$59(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5663
    .end local v5           #action:Ljava/lang/String;
    .end local v6           #array:Lorg/json/JSONArray;
    .end local v7           #builder:Landroid/text/SpannableStringBuilder;
    .end local v15           #isOpen:Ljava/lang/Boolean;
    .end local v18           #msg:Ljava/lang/String;
    .end local v21           #res:Landroid/content/res/Resources;
    .end local v24           #url:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 5667
    .local v8, e:Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 5586
    .end local v8           #e:Lorg/json/JSONException;
    .restart local v5       #action:Ljava/lang/String;
    .restart local v6       #array:Lorg/json/JSONArray;
    .restart local v12       #i:I
    .restart local v15       #isOpen:Ljava/lang/Boolean;
    .restart local v18       #msg:Ljava/lang/String;
    .restart local v21       #res:Landroid/content/res/Resources;
    .restart local v24       #url:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 5587
    .local v19, object:Lorg/json/JSONObject;
    const-string v25, "title"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 5588
    .local v22, title:Ljava/lang/String;
    const-string v25, "submitKey"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 5594
    .local v16, key:Ljava/lang/String;
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5595
    .local v17, layout:Landroid/widget/LinearLayout;
    new-instance v20, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 5597
    .local v20, passwordLayout:Landroid/widget/RelativeLayout;
    const/16 v25, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5598
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 5599
    .local v23, tv:Landroid/widget/TextView;
    const v25, 0x7f0b0022

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 5600
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5601
    const/high16 v25, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5602
    new-instance v9, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v9, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 5603
    .local v9, et:Landroid/widget/EditText;
    new-instance v14, Lcom/jingdong/app/mall/ime/JDInputMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v25

    check-cast v25, Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0c0213

    invoke-virtual/range {v26 .. v27}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v14, v0, v9, v1}, Lcom/jingdong/app/mall/ime/JDInputMethod;-><init>(Landroid/app/Activity;Landroid/widget/EditText;Landroid/view/View;)V

    .line 5604
    .local v14, inputmethod:Lcom/jingdong/app/mall/ime/JDInputMethod;
    invoke-virtual {v14}, Lcom/jingdong/app/mall/ime/JDInputMethod;->initIME()V

    .line 5605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->inputmethodArray:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$60(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5606
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 5607
    const v25, 0x7f02002f

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 5608
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setScrollContainer(Z)V

    .line 5609
    invoke-virtual {v9}, Landroid/widget/EditText;->setSingleLine()V

    .line 5610
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 5611
    invoke-virtual {v9}, Landroid/widget/EditText;->postInvalidate()V

    .line 5612
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x2

    invoke-direct/range {v25 .. v27}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5613
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v25, 0x437c

    invoke-static/range {v25 .. v25}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v25

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5614
    .local v10, etParams:Landroid/widget/RelativeLayout$LayoutParams;
    const v25, 0x7f0b0022

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const v26, 0x7f0b0024

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    const v27, 0x7f0b0023

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5615
    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5616
    const/16 v25, 0xf

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5617
    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5618
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x2

    invoke-direct/range {v25 .. v27}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5620
    new-instance v11, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->context:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$3(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 5621
    .local v11, explainIamge:Landroid/widget/ImageView;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 5622
    sget-object v25, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5623
    const v25, 0x7f020224

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 5624
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v25, 0x4200

    invoke-static/range {v25 .. v25}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v25

    const/high16 v26, 0x4200

    invoke-static/range {v26 .. v26}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5625
    .local v13, imageLP:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x7f0b0023

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 5626
    const/16 v25, 0xb

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5627
    const/16 v25, 0xf

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 5628
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5630
    new-instance v25, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$2;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$2;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;Ljava/lang/Boolean;)V

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5638
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 5639
    if-eqz v15, :cond_3

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 5641
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 5645
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5646
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defrayEtArray:Ljava/util/ArrayList;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$11(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    #getter for: Lcom/jingdong/app/mall/shopping/FillOrderActivity;->defray_passwork_input_layout:Landroid/widget/LinearLayout;
    invoke-static/range {v25 .. v25}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->access$56(Lcom/jingdong/app/mall/shopping/FillOrderActivity;)Landroid/widget/LinearLayout;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 5650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;->this$0:Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    move-object/from16 v25, v0

    new-instance v26, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$3;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/jingdong/app/mall/shopping/FillOrderActivity$34$3;-><init>(Lcom/jingdong/app/mall/shopping/FillOrderActivity$34;Landroid/widget/EditText;)V

    invoke-virtual/range {v25 .. v26}, Lcom/jingdong/app/mall/shopping/FillOrderActivity;->post(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5585
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1
.end method
