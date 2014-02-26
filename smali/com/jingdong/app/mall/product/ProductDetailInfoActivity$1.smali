.class Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;
.super Ljava/lang/Object;
.source "ProductDetailInfoActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/HttpGroup$OnAllListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->initTabComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

.field private final synthetic val$contentLayout:Landroid/widget/RelativeLayout;

.field private final synthetic val$radioGroupLayout:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Landroid/widget/RadioGroup;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->val$radioGroupLayout:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->val$contentLayout:Landroid/widget/RelativeLayout;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;)Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;
    .locals 1
    .parameter

    .prologue
    .line 170
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    return-object v0
.end method


# virtual methods
.method public onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
    .locals 24
    .parameter "httpResponse"

    .prologue
    .line 183
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/jingdong/common/utils/HttpGroup$HttpResponse;->getJSONObject()Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v21

    const-string v22, "tabInfo"

    invoke-virtual/range {v21 .. v22}, Lcom/jingdong/common/utils/JSONObjectProxy;->getJSONArrayOrNull(Ljava/lang/String;)Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v15

    .line 184
    .local v15, radioButtonData:Lcom/jingdong/common/utils/JSONArrayPoxy;
    invoke-virtual {v15}, Lcom/jingdong/common/utils/JSONArrayPoxy;->length()I

    move-result v13

    .line 185
    .local v13, length:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-lt v8, v13, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-object/from16 v21, v0

    new-instance v22, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->val$contentLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$2;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;Landroid/widget/RelativeLayout;)V

    invoke-virtual/range {v21 .. v22}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->post(Ljava/lang/Runnable;)V

    .line 265
    .end local v8           #i:I
    .end local v13           #length:I
    .end local v15           #radioButtonData:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :goto_1
    return-void

    .line 186
    .restart local v8       #i:I
    .restart local v13       #length:I
    .restart local v15       #radioButtonData:Lcom/jingdong/common/utils/JSONArrayPoxy;
    :cond_0
    if-nez v8, :cond_2

    const/4 v9, 0x1

    .line 187
    .local v9, isFirst:Z
    :goto_2
    add-int/lit8 v21, v8, 0x1

    move/from16 v0, v21

    if-ge v0, v13, :cond_3

    const/4 v10, 0x0

    .line 189
    .local v10, isLast:Z
    :goto_3
    invoke-virtual {v15, v8}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObjectOrNull(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v11

    .line 190
    .local v11, item:Lcom/jingdong/common/utils/JSONObjectProxy;
    if-nez v11, :cond_4

    .line 185
    :cond_1
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 186
    .end local v9           #isFirst:Z
    .end local v10           #isLast:Z
    .end local v11           #item:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 187
    .restart local v9       #isFirst:Z
    :cond_3
    const/4 v10, 0x1

    goto :goto_3

    .line 193
    .restart local v10       #isLast:Z
    .restart local v11       #item:Lcom/jingdong/common/utils/JSONObjectProxy;
    :cond_4
    const-string v21, "englishName"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, function:Ljava/lang/String;
    const-string v21, "tabName"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, buttonName:Ljava/lang/String;
    const-string v21, "mUrl"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/jingdong/common/utils/JSONObjectProxy;->getStringOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 196
    .local v14, mUrl:Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    if-eqz v14, :cond_1

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 199
    if-eqz v5, :cond_5

    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 200
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-object/from16 v21, v0

    const v22, 0x7f0701e3

    invoke-virtual/range {v21 .. v22}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    :cond_6
    const v21, 0x7f0300d9

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 205
    .local v3, button:Landroid/widget/RadioButton;
    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const/4 v4, 0x0

    .line 210
    .local v4, buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 211
    .local v16, screenWidth:I
    const/high16 v21, 0x3f80

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    mul-int/lit8 v21, v21, 0x3

    sub-int v22, v16, v21

    const/16 v21, 0x4

    move/from16 v0, v21

    if-le v13, v0, :cond_8

    const/16 v21, 0x4

    :goto_5
    div-int v20, v22, v21

    .line 213
    .local v20, width:I
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    .end local v4           #buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 214
    .restart local v4       #buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->val$radioGroupLayout:Landroid/widget/RadioGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    if-nez v10, :cond_7

    .line 216
    const v21, 0x7f0300da

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Lcom/jingdong/common/utils/ImageUtil;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 217
    .local v18, verticalLine:Landroid/view/View;
    new-instance v19, Landroid/widget/RadioGroup$LayoutParams;

    const/high16 v21, 0x3f80

    invoke-static/range {v21 .. v21}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v21

    const/16 v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 218
    .local v19, verticalLineLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->val$radioGroupLayout:Landroid/widget/RadioGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .end local v18           #verticalLine:Landroid/view/View;
    .end local v19           #verticalLineLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    :cond_7
    add-int/lit16 v0, v8, 0x7d0

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    #calls: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->initTabContent(Ljava/lang/String;)Landroid/widget/RelativeLayout;
    invoke-static {v0, v14}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$0(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Ljava/lang/String;)Landroid/widget/RelativeLayout;

    move-result-object v17

    .line 225
    .local v17, tabContentLayout:Landroid/widget/RelativeLayout;
    add-int/lit16 v0, v8, 0xbb8

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 226
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$1()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 227
    .local v12, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->val$contentLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    new-instance v21, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1$1;-><init>(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;Landroid/widget/RelativeLayout;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    if-eqz v9, :cond_9

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->val$radioGroupLayout:Landroid/widget/RadioGroup;

    move-object/from16 v21, v0

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/widget/RadioGroup;->check(I)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity$1;->this$0:Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    #setter for: Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->nowBranchView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;->access$3(Lcom/jingdong/app/mall/product/ProductDetailInfoActivity;Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 261
    .end local v3           #button:Landroid/widget/RadioButton;
    .end local v4           #buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    .end local v5           #buttonName:Ljava/lang/String;
    .end local v7           #function:Ljava/lang/String;
    .end local v8           #i:I
    .end local v9           #isFirst:Z
    .end local v10           #isLast:Z
    .end local v11           #item:Lcom/jingdong/common/utils/JSONObjectProxy;
    .end local v12           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v13           #length:I
    .end local v14           #mUrl:Ljava/lang/String;
    .end local v15           #radioButtonData:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .end local v16           #screenWidth:I
    .end local v17           #tabContentLayout:Landroid/widget/RelativeLayout;
    .end local v20           #width:I
    :catch_0
    move-exception v6

    .line 262
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .end local v6           #e:Ljava/lang/Exception;
    .restart local v3       #button:Landroid/widget/RadioButton;
    .restart local v4       #buttonLayoutParams:Landroid/widget/RadioGroup$LayoutParams;
    .restart local v5       #buttonName:Ljava/lang/String;
    .restart local v7       #function:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v9       #isFirst:Z
    .restart local v10       #isLast:Z
    .restart local v11       #item:Lcom/jingdong/common/utils/JSONObjectProxy;
    .restart local v13       #length:I
    .restart local v14       #mUrl:Ljava/lang/String;
    .restart local v15       #radioButtonData:Lcom/jingdong/common/utils/JSONArrayPoxy;
    .restart local v16       #screenWidth:I
    :cond_8
    move/from16 v21, v13

    .line 211
    goto/16 :goto_5

    .line 243
    .restart local v12       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v17       #tabContentLayout:Landroid/widget/RelativeLayout;
    .restart local v20       #width:I
    :cond_9
    const/16 v21, 0x8

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public onError(Lcom/jingdong/common/utils/HttpGroup$HttpError;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 178
    return-void
.end method

.method public onProgress(II)V
    .locals 0
    .parameter "max"
    .parameter "progress"

    .prologue
    .line 173
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 269
    return-void
.end method
